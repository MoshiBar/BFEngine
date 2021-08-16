using BfEngine;
using System.Numerics;

namespace BfEngine.UI
{
	struct RectTransform
	{
		const int siz = sizeof(RectTransform);
		public static RectTransform defaultTransform = .(.(0), .(0), .(1), .(0), 0);

		//public RectTransform* parent;
		public Vector2 position;
		public Vector2 size;
		public Vector2 scale;
		public Vector2 anchorPos;
		public float rotation;
		
		

		public this(Vector2 position, Vector2 size, Vector2 scale, Vector2 anchorPos, float rotation/*, UIElement parent = null*/){
			this.position = position;
			this.size = size;
			this.scale = scale;
			this.rotation = rotation;
			this.anchorPos = anchorPos;
			//this.parent = &(parent ?? UI.root).transform;
		}

		public RectTransform GetAppliedTransform(RectTransform parent){
			var transform = parent;

			transform.position += Vector2.Rotate(position + parent.size * anchorPos, transform.rotation);
			transform.rotation += rotation;
			transform.size = size;

			return transform;
		}
	}
}
