namespace System
{
	extension StringView{
		[Inline]
		public StringView SubStringFromLastIndexOf(char8 c) => Substring(LastIndexOf(c) + 1);
	}
}
