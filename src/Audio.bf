
using System;


namespace BfEngine
{
	class Audio
	{
		//static uint16 fmt = SDLMixer.MIX_DEFAULT_FORMAT;
		static int frequency = 48000;

		public static void Init(){
			/*SDLMixer.MIX_InitFlags flags = .Flac | .Mid | .Mod | .Mp3 | .Ogg;
			SDLMixer.Init(flags);
			SDLMixer.OpenAudio(frequency, fmt, 2, 512);

			//var chunks = SDLMixer.LoadWAV("Assets/tick_loop.wav");
			
			SDLMixer.AllocateChannels(1);*/
			//var channel = SDLMixer.PlayChannel(0, chunks, -1);
			//SDLMixer.Volume(channel, 16);
		}
	}
}
