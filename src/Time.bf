using System;
using Windows;
namespace BfEngine
{
	class Time
	{
		public static uint64 TimerFrequency;
		public static uint64 StartTicks;
		public static uint64 ElapsedTicks;
		public static double UnscaledTime;
		public static double Time;
		public static float Time_f => (float)Time;
		public static double UnscaledDeltaTime;
		public static double DeltaTime;
		public static double SmoothDeltaTime;
		public static double TimeScale = 1f;

		static FrameAverager averager = .();

		const double lagFrameThreshold = 0.1f;

		public static float engineTime;
		public static float tweenieTime;
		public static float UITime;

		public static void Init(){
			TimerFrequency = Kernel32.QueryPerformanceFrequency();
			StartTicks = ElapsedTicks = Kernel32.QueryPerformanceCounter();
		}

		public static void Update(){
			uint64 newElapsedTicks = Kernel32.QueryPerformanceCounter();
			UnscaledTime = (double)(newElapsedTicks - StartTicks) / (double)TimerFrequency;
			UnscaledDeltaTime = (double)(newElapsedTicks - ElapsedTicks) / (double)TimerFrequency;

			//if(UnscaledDeltaTime > lagFrameThreshold) UnscaledDeltaTime = lagFrameThreshold;

			DeltaTime = UnscaledDeltaTime * TimeScale;
			Time = Time + DeltaTime;//TODO: potential time inaccuracy
			ElapsedTicks = newElapsedTicks;


			averager.PushValue(DeltaTime);
			SmoothDeltaTime = averager.average;
		}

		public static double GetTimeExact() => (double)(Kernel32.QueryPerformanceCounter() - StartTicks) / (double)TimerFrequency;

	}
}
