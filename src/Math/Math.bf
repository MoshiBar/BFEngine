namespace System
{
	extension Math
	{
		public static T Sum<T>(T[] array) where T : operator T + T
		{
			return Sum((Span<T>)array);
		}

		public static T Sum<T>(Span<T> span) where T : operator T + T
		{
			T sum = default;
			for(T item in span) sum += item;
			return sum;
		}

		public static mixin Sum(var span)
		{
			var sum = 0;
			for(var item in span) sum += item;
			return sum;
		}

		[Inline]
		public static T Avg<T>(T[] array) where T : operator T + T, operator T / int {
			return Avg((Span<T>)array);
		}

		public static T Avg<T>(Span<T> span) where T : operator T + T, operator T / int
		{
			return Sum(span) / span.Length;
		}

		public static float Clamp<T>(float f) where int : operator T<=>T
		{
			return Math.Clamp(f, 0, 1);
		}
	}
}
