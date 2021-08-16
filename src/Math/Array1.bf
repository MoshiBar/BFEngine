namespace System
{
	public extension SizedArray<T, CSize>
	{
	    public static implicit operator Span<T>(Self sizedArray) => .(&sizedArray.mVal[0], CSize);
	}
}
