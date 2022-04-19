using System;
using static Win32.Media.Audio.Xaudio2;

namespace BfEngine
{
	extension Audio{
	public struct VoiceCallback : IXAudio2VoiceCallback, IDisposable
	{
		public Self* self;
		public IXAudio2SourceVoice* voice;

		public this(Self.VTable* vtable){
			this.self = &this;
			voice = ?;
			this.vt = vtable;
		}



		public void Dispose()
		{
			Audio.playingvoices.Remove(voice);
			Audio.toDestroy.Add(voice);
			delete self;
		}
	}
	}
}