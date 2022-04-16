using System;

namespace BfEngine
{
	struct FrameAverager
	{
		typealias T = double;

		T[64] times;
		uint32 index;

		public T average => {
			T sum = 0;
			for(var time in times) sum += time;
			sum / times.Count
		}

		public void PushValue(T time) mut{
			times[index] = time;
			index = (index + 1) % times.Count;
		}
	}
}
