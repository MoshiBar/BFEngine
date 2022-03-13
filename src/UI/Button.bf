using BfEngine;
using System;
using System.Collections;
using System.Numerics;
using System.Diagnostics;

namespace BfEngine.UI
{
	public class Button : UIElement{
		public delegate void CallBack();

		public CallBack callback ~ delete _;

		

		public this(RectTransform transform, Color4 color, CallBack callback = null) : base(transform)
		{
			this.color = color;
			this.callback = callback;


			OnMouseEnter.Add(new (_) =>
			{
				Tweenie.AddTween(&scale, .(1.1f), 0.25f, .OutExpo);
				dirty = true;
				dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.25f);
			});

			OnMouseLeave.Add(new (_) =>
			{
				Tweenie.AddTween(&scale, .(1f), 0.5f, .OutElastic);
				dirty = true;
				dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.5f);
			});

			OnMouseDown.Add(new (_) =>
			{
				Tweenie.AddTween(&scale, .(0.9f), 0.25f, .OutExpo);
				dirty = true;
				dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.25f);
			});

			OnMouseUp.Add(new (_) =>
			{
				Tweenie.AddTween(&scale, .(1.1f), 0.5f, .OutElastic);
				dirty = true;
				dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.5f);

				if(GetNormalizedPosition(UI.CursorPos).InUnitSquare)
					callback?.Invoke();
			});
		}

		public override void GenerateMesh(List<Vector2> positions, List<Color4> colors, List<uint32> indices, ref uint32 index)
		{
			var appliedTransform = transform;

			Vector2[4] basePos;

			basePos[0] = .(-0.5f, -0.5f); //BL
			basePos[1] = .(-0.5f, 0.5f); //TL
			basePos[2] = .(0.5f, 0.5f); //TR
			basePos[3] = .(0.5f, -0.5f); //BR

			/*Vector2[4] skews;

			skews[0] = .(-skew.x, -skew.y);
			skews[1] = .(skew.x, -skew.y);
			skews[2] = .(skew.x, skew.y);
			skews[3] = .(-skew.x, skew.y);*/

			//var size = appliedTransform.size * scale;

			/*for(int i = 0; i < basePos.Count; i++)
			{
				/*positions.Add(Vector2.Rotate(*/var vert = appliedTransform.position + appliedTransform.anchorPos * UI.UIScale * .(Screen.AspectRatio, 1) + basePos[i] * size/* + skews[i] * scale.yx*/ /*, rotation))*/;
				
			}*/

			
			uint32 ind = 2;
			//indices.Add(index + ind++);
			int subdivisions = 16;
			var bevelwidth = Math.Min(this.bevelwidth, appliedTransform.size.min / 2f);

			var innersize = (appliedTransform.size - .(bevelwidth, bevelwidth) * 2) * scale;

			var vert = appliedTransform.position + appliedTransform.anchorPos * UI.UIScale * .(Screen.AspectRatio, 1) /*+ basePos[0] * size*/;


			/*for(int i < 4) for(int s <= subdivisions) {
				float f = (i + (float)s / (float)(subdivisions == 0 ? 1 : subdivisions)) * Math.PI_f / 2f;
				//for(float f = i * Math.PI_f / 2f; f <= (i + 1) * Math.PI_f / 2f; f += Math.PI_f / subdivisions) {
				positions.Add(Vector2.Rotate(.(0, -bevelwidth * scale.max), -f) + innersize * basePos[i] + vert);
				colors.Add(color);

				if(f != 0) {
					indices.Add(index);
					indices.Add(index + ind++);
					indices.Add(index + ind - 2);
				}
			}*/

			for(int i < 4) for(int s <= subdivisions) {
				float f = (i + (float)s / (float)(subdivisions == 0 ? 1 : subdivisions)) * Math.PI_f / 2f;
				//for(float f = i * Math.PI_f / 2f; f <= (i + 1) * Math.PI_f / 2f; f += Math.PI_f / subdivisions) {
				positions.Add(Vector2.Rotate(Vector2.Rotate(.(0, -bevelwidth * scale.max), -f) + innersize * basePos[i], appliedTransform.rotation) + vert);
				positions.Add(Vector2.Rotate(Vector2.Rotate(.(0, -(bevelwidth * 0.6f) * scale.max), -f) + innersize * basePos[i], appliedTransform.rotation) + vert);

				colors.Add(color);
				colors.Add(color);

				if(f != 0) {
					indices.Add(index + ind - 2);
					indices.Add(index + ind - 1);
					indices.Add(index + ind++);

					indices.Add(index + ind - 2);
					indices.Add(index + ind++);
					indices.Add(index + ind - 2);
				}
			}

			indices.Add(index + ind - 2);
			indices.Add(index + ind - 1);
			indices.Add(index + 1);

			indices.Add(index);
			indices.Add(index + 1);
			indices.Add(index + ind - 2);


			index += ind;
		}

		/*public override void OnMouseEnter()
		{
			Tweenie.AddTween(&scale, .(1.1f), 0.25f, .OutExpo);
			dirty = true;
			dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.25f);
		}

		public override void OnMouseLeave()
		{
			Tweenie.AddTween(&scale, .(1f), 0.5f, .OutElastic);
			dirty = true;
			dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.5f);
		}

		public override void OnMouseDown()
		{
			Tweenie.AddTween(&scale, .(0.9f), 0.25f, .OutExpo);
			dirty = true;
			dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.25f);
		}

		public override void OnMouseUp()
		{
			Tweenie.AddTween(&scale, .(1.1f), 0.5f, .OutElastic);
			dirty = true;
			dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.5f);

			if(GetNormalizedPosition(UI.CursorPos).InUnitSquare)
				callback?.Invoke();
		}*/
	}
}
