using System;
using BfEngine.Text;
namespace BfEngine.UI
{
	class UIText : UIElement
	{
		public RenderableText text;

		[AllowAppend]
		public this(RectTransform rect) : base(rect){
			var text = append RenderableText();
			this.text = text;

			OnMouseEnter.Add(new (pfp) => {
				Engine.SetCursor(Engine.ibeam);
				});
			OnMouseLeave.Add(new (pfp) => {
				Engine.SetCursor(Engine.pointer);
					});
		}

		public float textScale = 1;

		/*public override void Draw(){
			base.Draw();
			return;

			var ssize = size * scale;

			

			var transform = Matrix4.CreateTransform(position /*+ transform.anchorPos * ssize*/, scale, .());

			/*var dbgtransform = Matrix4.CreateTransform(position - this.transform.anchorPos * ssize * 0.5f, ssize * 0.5f, .());

			UI.[Friend]rect.Draw(dbgtransform, UI.UIMatrix, (3, Variant.Create(size)), (4, Variant.Create(Color4.red)), (5, Variant.Create(bevelwidth))    );*/

			//var rect = UI.[Friend]rect;
			text.Draw(transform, UI.UIMatrix);

			//rect.Textures[0] = texture;

			
		}*/

		public void GenerateTextBuffer(StringView Text)
		{
			text.scale = textScale;
			text.GenerateTextBuffer(Text, size.x);
		}
	}
}
