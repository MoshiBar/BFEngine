namespace System
{
	extension StringView{
		[Inline]
		public StringView SubStringFromLastIndexOf(char8 c) => Substring(LastIndexOf(c) + 1);

		[Inline]
		public StringView SubStringToLastIndexOf(char8 c) => Substring(0, LastIndexOf(c));
	}
}
