using System;
using System.Collections;
using BfEngine;
using System.Threading;

namespace BfEngine
{
	class ParticleSystem
	{
		Random random = new Random() ~ delete _;

		List<Vector3> positions = new List<Vector3>() ~ delete _;
		List<Vector3> velocities = new List<Vector3>() ~ delete _;
		List<float> ages = new List<float>() ~ delete _;

		private float EmitQueue;

		private uint32 VAO, VBO, PBO;

		private Texture texture;

		public float EmitSpeed = 10000;
		public float lifetime = 3;
		public float spriteSize = 0.01f;
		public Vector3 force = .(0, -1);

		public int particleCount => positions.Count;

		private int maxParticleCount = 0;

		public float velocity;

		public this()
		{
			GL.GenVertexArrays(1, &VAO);
			GL.GenBuffers(1, &VBO);
			GL.GenBuffers(1, &PBO);

			GL.BindVertexArray(VAO);

			GL.BindBuffer(.ARRAY_BUFFER, VBO);// particle positions
			GL.EnableVertexAttribArray(0);
			GL.VertexAttribPointer(0, 3, .FLOAT, .FALSE, sizeof(Vector3), (void*)0);

			GL.BindBuffer(.ARRAY_BUFFER, PBO);// particle age
			GL.EnableVertexAttribArray(1);
			GL.VertexAttribPointer(1, 1, .FLOAT, .FALSE, sizeof(float), (void*)0);

			GL.BindVertexArray(0);

			for(int i = 0; i < ages.Count; i++){
				ages[i] = lifetime * i / ages.Count;
			}

			//model.shader = Shader.white;
		}

		//[Optimize]
		public void Update()
		{
			EmitQueue += EmitSpeed * (float)Time.DeltaTime;
			while (EmitQueue > 1)
			{
				//positions.Add(.((float)random.NextDoubleSigned(), (float)random.NextDoubleSigned(), (float)random.NextDoubleSigned()) * 20);
				positions.Add(.(0));
				//vectors.Add(.((float)random.NextDoubleSigned(), (float)random.NextDoubleSigned()));
				/*float speed = ((float)Math.Asin(random.NextDoubleSigned()) + Math.PI_f / 2) / Math.PI_f * 2;
				float angle = (float)random.NextDouble() * Math.PI_f * 2/* + Math.PI_f / 3*/;
				vectors.Add(.(Math.Cos(angle) * speed, Math.Sin(angle) * speed));*/
				velocities.Add(.(0));
				ages.Add(0);

				EmitQueue--;
			}
			float deltaTime = (float)Time.DeltaTime;

			float* positionsPtr = (float*)positions.Ptr;
			float* velocityPtr = (float*)velocities.Ptr;
			

			//var gravity = this.gravity * deltaTime;


			//float time = (float)Time.Time * 0.01f;

			for (int i = 0; i < positions.Count; i++)
			{
				ages[[Unchecked]i] += deltaTime;

				//positions[[Unchecked]i] += vectors[[Unchecked]i] * deltaTime;
				//vectorsPtr[[Unchecked]i * 3] += gravity.x;
				//vectorsPtr[[Unchecked]i * 3 + 1] += gravity.y;

				var pos = positions[[Unchecked]i];
				var vel = velocities[[Unchecked]i];
				float newW = ages[[Unchecked]i];

				var s = pos + vel * deltaTime;

				if (newW > lifetime)
				{
					positions.RemoveAtFast(i);
					velocities.RemoveAtFast(i);
					ages.RemoveAtFast(i);

					i--;
					continue;
				}

				ages[[Unchecked]i] = newW;
				// Store the new position and velocity back into the buffers
				positions[[Unchecked]i] = s;	
				velocities[[Unchecked]i] = vel;

				positionsPtr[[Unchecked]i * 3    ] += velocityPtr[[Unchecked]i * 3] * deltaTime;
				positionsPtr[[Unchecked]i * 3 + 1] += velocityPtr[[Unchecked]i * 3 + 1] * deltaTime;
				positionsPtr[[Unchecked]i * 3 + 2] += velocityPtr[[Unchecked]i * 3 + 2] * deltaTime;

				positionsPtr[[Unchecked]i * 3    ] = velocityPtr[[Unchecked]i * 3];
				positionsPtr[[Unchecked]i * 3 + 1] = velocityPtr[[Unchecked]i * 3 + 1];
				positionsPtr[[Unchecked]i * 3 + 2] = velocityPtr[[Unchecked]i * 3 + 2];
			}
		}

		public void Render(Matrix4 modelView, Matrix4 projection, Color4 color = .white)
		{
			if (particleCount == 0) return;

			if (particleCount > maxParticleCount)
			{
				maxParticleCount = positions.Count/*Capacity*/;

				GL.BindBuffer(.ARRAY_BUFFER, VBO);
				GL.BufferData(.ARRAY_BUFFER, (.)maxParticleCount * sizeof(Vector3), &positions[0], .DYNAMIC_DRAW);

				GL.BindBuffer(.ARRAY_BUFFER, PBO);
				GL.BufferData(.ARRAY_BUFFER, (.)maxParticleCount * sizeof(float), &ages[0], .DYNAMIC_DRAW);
			}
			else
			{
				GL.BindBuffer(.ARRAY_BUFFER, VBO);
				GL.BufferSubData(.ARRAY_BUFFER, 0, (.)particleCount * sizeof(Vector3), &positions[0]);

				GL.BindBuffer(.ARRAY_BUFFER, PBO);
				GL.BufferSubData(.ARRAY_BUFFER, 0, (.)particleCount * sizeof(float), &ages[0]);
			}

			var shader = Shader.particle;

			GL.UseProgram(shader);

			shader.SetMatrix(0, modelView); // transform
			shader.SetMatrix(1, projection);// projectionMatrix
			shader.SetFloat(2, spriteSize);


			GL.ActiveTexture(.TEXTURE0);
			GL.BindTexture(.TEXTURE_2D, texture);


			shader.SetColor(3, .white);//color

			GL.BindVertexArray(VAO);
			GL.DrawArrays(.POINTS, 0, (.)particleCount);
			//GL.DrawElements(.TRIANGLES, IndicesCount, .UNSIGNED_INT, (void*)0);
			GL.BindVertexArray(0);
		}

		public void SetTexture(Texture texture)
		{
			this.texture = texture;
		}

		public ~this(){
			GL.DeleteBuffers(1, &VBO);
			GL.DeleteBuffers(1, &PBO);
			GL.DeleteVertexArrays(1, &VAO);
		}
	}
}
