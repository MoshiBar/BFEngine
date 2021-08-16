using SDL2;
using System;
using static SDL2.SDLMixer;

namespace BfEngine
{
	class Audio
	{
		static uint16 fmt = SDLMixer.MIX_DEFAULT_FORMAT;
		static int frequency = 48000;

		public static void Init(){
			SDLMixer.MIX_InitFlags flags = .Flac | .Mid | .Mod | .Mp3 | .Ogg;
			SDLMixer.Init(flags);
			SDLMixer.OpenAudio(frequency, fmt, 2, 512);

			//var chunks = SDLMixer.LoadWAV("Assets/tick_loop.wav");
			
			SDLMixer.AllocateChannels(1);
			//var channel = SDLMixer.PlayChannel(0, chunks, -1);
			//SDLMixer.Volume(channel, 16);
		}

		public static float GetLength(Chunk_* chunk){
			var points = (chunk.alen / ((fmt & 0xFF) / 8));
			const int chans = 2;//2 channels i think
			var frames = (points / chans);
			return (float)frames / (float)frequency;
		}

		public static Chunk* LoadAudio(Span<uint8> mem){
			var rw = SDL.RWFromMem(mem.Ptr, (int32)mem.Length);
			var wav = SDLMixer.LoadWAV_RW(rw, 1);
			return wav;
		}

		public static Music* LoadMusic(Span<uint8> mem){
			var rw = SDL.RWFromMem(mem.Ptr, (int32)mem.Length);
			
			var wav = SDLMixer.LoadMUS_RW(rw, 1);
			return wav;
		}

		public static int32 PlayAudio(Chunk* wav){
			var channel = SDLMixer.PlayChannel(0, wav, -1);
			//SDLMixer.Volume(channel, 32);
			return channel;
		}

		[CRepr]
		public struct Chunk_ {
		    public int32 allocated;
		    public uint8 *abuf;
		    public uint32 alen;
		    public uint8 volume;     /* Per-sample volume, 0-128 */
		}
	}
}
namespace SDL2{
extension SDLMixer{
	/* src refers to an SDL_RWops*, IntPtr to a Mix_Chunk* */
	/* THIS IS A PUBLIC RWops FUNCTION! */
	[LinkName("Mix_LoadMUS_RW")]
	public static extern Music* LoadMUS_RW(
		SDL.RWOps* src,
		int freesrc
	);

	
}
}