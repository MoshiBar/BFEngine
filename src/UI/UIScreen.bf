
namespace BfEngine.UI
{
	class UIScreen : UIElement
	{
		public this()
		{
			transform.size = Screen.Resolution / 2;
		}
	}
}
