using BfEngine;
using System.Collections;
using System;

namespace BfEngine.UI
{
	public class UIElement
	{
		public RectTransform transform;
		[Inline]public ref Vector2 position => ref transform.position;
		[Inline]public ref Vector2 size => ref transform.size;
		[Inline]public ref Vector2 scale => ref transform.scale;
		//[Inline]public ref Vector2 skew => ref transform.skew;
		[Inline]public ref float rotation => ref transform.rotation;
		public Color4 color = .white;
		public uint32 parent;

		public float bevelwidth = 30f;
		public Texture texture = Texture.white;

		protected static ref bool dirty => ref [Friend]UI.dirty;
		protected static ref float dirtytimeout => ref [Friend]UI.dirtytimeout;
		protected static Vector2 CursorPos => UI.CursorPos;

		public this(){}

		public this(RectTransform transform){
			this.transform = transform;
		}

		public virtual void GenerateMesh(List<Vector2> positions, List<Color4> colors, List<uint32> indices, ref uint32 index)
		{
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
				positions.Add(Vector2.Rotate(transform.position + transform.anchorPos * UI.UIScale * .(Screen.AspectRatio, 1) + basePos[i] * size/* + skews[i] * scale.yx*/, rotation));
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

		//public Vector2 GetNormalizedPosition() => GetNormalizedPosition(CursorPos);

		public virtual Vector2 GetNormalizedPosition(Vector2 pos){
			//var appliedTransform = transform.GetAppliedTransform(parentTransform);
			//applied transform should refer to its global transform but we don't have any hierarchy (yet?)
			var appliedTransform = transform;
			var normalizedPosition = pos - (appliedTransform.position - appliedTransform.anchorPos * size * scale * 0.5f /** UI.UIScale * .(Screen.AspectRatio, 1)*/);
			normalizedPosition = Vector2.Rotate(normalizedPosition, -appliedTransform.rotation);
			/*normalizedPosition = Vector2(normalizedPosition.x - skew.x * normalizedPosition.y * 2 / size.y, normalizedPosition.y - skew.y * normalizedPosition.x * 2 / size.x);*/
			return normalizedPosition * 2 / (appliedTransform.size * scale);
		}

		public Event<delegate void(Self)> OnMouseEnter = .() ~ _.Dispose();
		public Event<delegate void(Self)> OnMouseLeave = .() ~ _.Dispose();
		public Event<delegate void(Self)> OnMouseDown  = .() ~ _.Dispose();
		public Event<delegate void(Self)> OnMouseUp    = .() ~ _.Dispose();
		public Event<delegate void(Self)> OnMouseHold  = .() ~ _.Dispose();

		public virtual void Draw(){

			var transform = Matrix4.CreateTransform(position - transform.anchorPos * size * scale * 0.5f, size * scale * 0.5f, .());

			var rect = UI.[Friend]rect;

			rect.Textures[0] = texture;

			rect.Draw(transform, UI.UIMatrix, (3, Variant.Create(size)), (4, Variant.Create(color)), (5, Variant.Create(bevelwidth))    );
		}
	}
}
