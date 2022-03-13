using BfEngine;
using System.Collections;
using System;

namespace BfEngine.UI
{
	class UI
	{
		/*class UIEnumerator : IEnumerator<(UIElement, RectTransform)>{
			List<UIElement> UIElements;
			List<(RectTransform transform, uint32 childCount)> transforms ~ delete _;
			int index = -1;

			public Result<(UIElement, RectTransform)> GetNext()
			{
				index++;
				if(index == UIElements.Count) return .Err;

				//walk back up the hierarchy
				while(transforms.Count > 0 && transforms.Back.childCount == 0)
					transforms.PopBack();

				
				var element = UIElements[index];

				if(transforms.Count > 0){
					var parentTransform = transforms.Back.transform;
					if(element.childCount > 0) transforms.Add((element.transform.GetAppliedTransform(parentTransform), element.childCount));

					transforms.Back.childCount--;

					return (element, parentTransform);
				}
				else{
					if(element.childCount > 0) transforms.Add((element.transform, element.childCount));

					return (element, RectTransform.defaultTransform);
				}
			}
		}*/

		private static uint32 VAO, VBO, CBO, EBO, IndicesCount;

		private static List<UIElement> UIElements = new .() ~ DeleteContainerAndItems!(_);

		private static bool dirty = false;

		private static float dirtytimeout = 0;

		private static int selectedIndex = -1;

		private static Model rect ~ delete _;

		public static readonly UIScreen root = new UIScreen() ~ delete _;

		public const float UIScale = 1080 / 2f;

		public static Matrix4 UIMatrix = Matrix4.CreateOrtho(-Screen.AspectRatio * UIScale, Screen.AspectRatio * UIScale, -1 * UIScale, 1 * UIScale, -1, 1);

		public static Vector2 CursorPos => Vector2(Input.CursorPosition.x * 2 - Screen.Resolution.x, Screen.Resolution.y - Input.CursorPosition.y * 2) / Screen.Resolution.y * UIScale;

		public static void Init(){
			root.size = .(Screen.AspectRatio, 1) * UIScale;

			GL.GenVertexArrays(1, &VAO);
			GL.GenBuffers(1, &VBO);
			GL.GenBuffers(1, &CBO);
			GL.GenBuffers(1, &EBO);

			GL.BindVertexArray(VAO);

			GL.BindBuffer(.ARRAY_BUFFER, VBO); // vertex positions
			GL.EnableVertexAttribArray(0);	
			GL.VertexAttribPointer(0, 2, .FLOAT, .FALSE, sizeof(Vector2), (void*)0);

			GL.BindBuffer(.ARRAY_BUFFER, CBO); // color buffer
			GL.EnableVertexAttribArray(1);	
			GL.VertexAttribPointer(1, 4, .FLOAT, .FALSE, sizeof(Color4), (void*)0);

			GL.BindBuffer(.ELEMENT_ARRAY_BUFFER, EBO);
			//GL.BufferData(.ELEMENT_ARRAY_BUFFER, testindices.Count * sizeof(uint32), testindices.CArray(), .DYNAMIC_DRAW);
			//IndicesCount = testindices.Count;
			GL.BindVertexArray(0);

			rect = Model.CreateRect(new Model());
		}

		public static void Update(){
			if(UIElements.Count == 0) return;

			UIMatrix = Matrix4.CreateOrtho(-Screen.AspectRatio * UIScale, Screen.AspectRatio * UIScale, -1 * UIScale, 1 * UIScale, -1, 1);

			HandleUIInput();

			//if(dirty || dirtytimeout > Time.Time) RebuildUI();
			

			//var shader = Shader.ui;

			/*GL.UseProgram(shader);

			shader.SetMatrix(0, Matrix4.CreateTransform(.(0, 0), .(1, 1, 1), .())); // transform

			shader.SetMatrix(1, UIMatrix); // projectionMatrix


			GL.BindVertexArray(VAO);
			GL.DrawElements(.TRIANGLES, (.)IndicesCount, .UNSIGNED_INT, (void*)0);
			GL.BindVertexArray(0);*/
			for(var el in UIElements){
				el.Draw();
			}
			
		}

		public static void HandleUIInput(){
			if(!Input.mouseDown)
			{
				int newSelectedIndex = -1;
				if(Input.cursorInBounds)
				for(int i = UIElements.Count - 1; i >= 0; i--){
					//var norPos = UIElements[i].GetNormalizedPosition(CursorPos);
					if(UIElements[i].InBounds(CursorPos))
					{
						newSelectedIndex = i;
						break;
					}
				}
				//dont question it i have no idea how this works
				if(newSelectedIndex != selectedIndex){

					if(selectedIndex >= 0){
						//UIElements[selectedIndex].color = .white;//just for debugging input
						UIElements[selectedIndex].OnMouseLeave(UIElements[selectedIndex]);
					}
					if(newSelectedIndex >= 0){
						//UIElements[newSelectedIndex].color = .red;//just for debugging input
						UIElements[newSelectedIndex].OnMouseEnter(UIElements[newSelectedIndex]);
					}
					selectedIndex = newSelectedIndex;
				}
				if(selectedIndex >= 0 && Input.onMouseUp)
					UIElements[selectedIndex].OnMouseDown(UIElements[selectedIndex]);
			}

			if(selectedIndex >= 0)
			{
				var element = UIElements[selectedIndex];
				if(Input.onMouseDown)element.OnMouseDown(element);
				if(Input.onMouseUp)element.OnMouseUp(element);
				if(Input.mouseDown)element.OnMouseHold(element);
			}
		}

		/*public static void RebuildUI(){
			List<Vector2> positions = new .();
			List<Color4> colors = new .();
			List<uint32> indices = new .();

			uint32 index = 0;
			for(int i = 0; i < UIElements.Count; i++){
				UIElements[i].GenerateMesh(positions, colors, indices, ref index);
			}

			GL.BindBuffer(.ARRAY_BUFFER, VBO);
			GL.BufferData(.ARRAY_BUFFER, (.)positions.Count * strideof(Vector2), positions.Ptr, .DYNAMIC_DRAW);

			GL.BindBuffer(.ARRAY_BUFFER, CBO);
			GL.BufferData(.ARRAY_BUFFER, (.)colors.Count * strideof(Color4), colors.Ptr, .DYNAMIC_DRAW);

			GL.BindBuffer(.ELEMENT_ARRAY_BUFFER, EBO);
			GL.BufferData(.ELEMENT_ARRAY_BUFFER, (.)indices.Count * strideof(uint32), indices.Ptr, .DYNAMIC_DRAW);

			IndicesCount = (uint32)indices.Count;

			delete positions;
			delete colors;
			delete indices;
		}*/

		public static void Add(UIElement slider){
			UIElements.Add(slider);
			dirty = true;
		}

		public static ~this(){
			GL.DeleteBuffers(1, &VBO);
			GL.DeleteBuffers(1, &CBO);
			GL.DeleteBuffers(1, &EBO);
			GL.DeleteVertexArrays(1, &VAO);
		}
	}
}
