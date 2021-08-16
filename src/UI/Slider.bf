using BfEngine;
using System.Collections;
using System;

namespace BfEngine.UI
{
	public class Slider : UIElement
	{
		public enum Flags : uint8
		{
			None = 0,
			Vertical = 1,
			Inverse = 1 << 1,
			Integer = 1 << 2,
			Text = 1 << 3,
		}

		public delegate void SliderCallBack(float f);

		public float min, max, value;
		public Flags flags;
		public SliderCallBack callback ~ delete _;

		public this(RectTransform transform, Color4 color, float min, float max, float value, Flags flags = .None, SliderCallBack callback = null) : base(transform)
		{
			this.color = color;
			this.min = min;
			this.max = max;
			this.value = value;
			this.flags = flags;
			this.callback = callback;
			callback?.Invoke(value);
		}

		public override Vector2 GetNormalizedPosition(Vector2 pos) => base.GetNormalizedPosition(pos) / scale;

		public override void GenerateMesh(List<Vector2> positions, List<Color4> colors, List<uint32> indices, ref uint32 index)
		{

			var color = this.color.PremulAlpha();

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

			var size = transform.size * scale;

			for(int i = 0; i < basePos.Count; i++)
			{
				positions.Add(Vector2.Rotate(transform.position + transform.anchorPos * UI.UIScale * .(Screen.AspectRatio, 1) + basePos[i] * size/* + skews[i] * scale.yx*/, transform.rotation));
				colors.Add(color);
			}

			indices.Add(index + 0);
			indices.Add(index + 2);
			indices.Add(index + 1);
			indices.Add(index + 0);
			indices.Add(index + 3);
			indices.Add(index + 2);

			index += 4;

			float fill = (value - min) / (max - min);

			if(fill != 0){
				//float skewFill = (fill * 2 - 1);

				if(flags.HasFlag(.Inverse)){
					float basefill = 1 - fill;
					if(flags.HasFlag(.Vertical))
					{
						basePos[0].y += basefill; //BL
						basePos[3].y += basefill; //BR

						//skews[0].x *= skewFill;
						//skews[3].x *= skewFill;
					}
					else{
						basePos[0].x += basefill; //BL
						basePos[1].x += basefill; //TL

						//skews[0].y *= skewFill;
						//skews[1].y *= skewFill;
					}
				}
				else{
					float basefill = fill - 1;
					if(flags.HasFlag(.Vertical))
					{
						basePos[1].y += basefill; //TL
						basePos[2].y += basefill; //TR

						//skews[1].x *= skewFill;
						//skews[2].x *= skewFill;
					}
					else{
						basePos[2].x += basefill; //TR
						basePos[3].x += basefill; //BR

						//skews[2].y *= skewFill;
						//skews[3].y *= skewFill;
					}
				}

				for(int i = 0; i < basePos.Count; i++)
				{
					positions.Add(Vector2.Rotate(transform.position + transform.anchorPos * UI.UIScale * .(Screen.AspectRatio, 1) + basePos[i] * size/* + skews[i] * scale.yx*/, transform.rotation));
					colors.Add(color);
				}

				indices.Add(index + 0);
				indices.Add(index + 2);
				indices.Add(index + 1);
				indices.Add(index + 0);
				indices.Add(index + 3);
				indices.Add(index + 2);

				index += 4;
			}
		}

		public override void OnMouseEnter()
		{
			var toTween = flags.HasFlag(.Vertical) ? &scale.x : &scale.y;
			Tweenie.AddTween(toTween, 1.5f, 0.25f, .OutExpo);
			//slider.color = .red;
			dirty = true;
			dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.25f);
		}

		public override void OnMouseLeave()
		{
			var toTween = flags.HasFlag(.Vertical) ? &scale.x : &scale.y;
			Tweenie.AddTween(toTween, 1f, 0.5f, .OutElastic);
			//slider.color = .white;
			dirty = true;
			dirtytimeout = Math.Max(dirtytimeout, (float)Time.Time + 0.5f);
		}

		public override void OnMouseHold()
		{
			var norPos = GetNormalizedPosition(CursorPos);

			float fill = (flags.HasFlag(.Vertical) ? norPos.y + 1 : norPos.x + 1) / 2;

			if(flags.HasFlag(.Inverse)) fill = 1 - fill;

			value = Math.Clamp(fill * (max - min) + min, min, max);

			callback?.Invoke(value);
		}
	}
}
