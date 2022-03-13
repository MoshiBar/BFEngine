namespace BfEngine
{
	//for things that need to be reloaded on the main thread
	public interface IReloadable
	{
		public void Reload();
	}
}
