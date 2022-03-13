using System;
using static BfEngine.Audio.NyquistCommon;
namespace BfEngine.Audio
{
	class VorbisDecoder
	{

		/*
		Copyright (c) 2019, Dimitri Diakopoulos All rights reserved.

		Redistribution and use in source and binary forms, with or without
		modification, are permitted provided that the following conditions are met:

		* Redistributions of source code must retain the above copyright notice, this
		  list of conditions and the following disclaimer.

		* Redistributions in binary form must reproduce the above copyright notice,
		  this list of conditions and the following disclaimer in the documentation
		  and/or other materials provided with the distribution.

		THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
		AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
		IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
		DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
		FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
		DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
		SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
		CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
		OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
		OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
		*/

/*#include "Decoders.h"
#include "libvorbis/include/vorbis/vorbisfile.h"

#include <string.h>*/

		typealias long = int32;

		struct OggVorbis_File {
		  void            *datasource; /* Pointer to a FILE *, etc. */
		  int              seekable;
		  vorbis_block     vb; /* local working space for packet->PCM decode */

		  ov_callbacks callbacks;

		}

		struct vorbis_block{
		  /* necessary stream state for linking to the framing abstraction */
		  public long time_bits;
		  public long floor_bits;
		  public long res_bits;

		  public void* _internal;

		}

		struct ov_callbacks{
		  public function size_t	(void *ptr, size_t size, size_t nmemb, void *datasource) read_func;
		  public function int32		(void *datasource, int64_t offset, int whence) seek_func;
		  public function int32		(void *datasource) close_func;
		  public function long		(void *datasource) tell_func;
		}

		class VorbisDecoderInternal
		{
		    
		//public:
		    
		    public this(AudioData * d, Span<uint8_t> memory)// : d(d)
		    {
		        void * data = const_cast<uint8_t*>(memory.data());
		        
		        ogg_file t;
		        t.curPtr = t.filePtr = (char*)(data);
		        t.fileSize = memory.size();
		        
		        fileHandle = new OggVorbis_File;
		        Internal.MemSet(fileHandle, 0, sizeof(OggVorbis_File));
		        
		        ov_callbacks callbacks;
		        callbacks.read_func = AR_readOgg;
		        callbacks.seek_func = AR_seekOgg;
		        callbacks.close_func = AR_closeOgg;
		        callbacks.tell_func = AR_tellOgg;
		        
		        loadAudioData(&t, callbacks);
		    }
		    
		    public this(AudioData * d, StringView filepath)// : d(d)
		    {
		        fileHandle = new OggVorbis_File();
		        FILE * f = fopen(filepath, "rb");
		        if (!f) Runtime.FatalError("Can't open file");
		        loadAudioData(f, OV_CALLBACKS_DEFAULT);
		    }
		    
		    public ~this()
		    {
		        ov_clear(fileHandle);
		    }
		    
		    size_t readInternal(size_t requestedFrameCount, size_t frameOffset = 0)
		    {
		        //@todo support offset
		        
		        float **buffer = null;
		        size_t framesRemaining = requestedFrameCount;
		        size_t totalFramesRead = 0;
		        int bitstream = 0;
		        
		        while(0 < framesRemaining)
		        {
		            int64_t framesRead = ov_read_float(fileHandle, &buffer, Math.Min(2048, (int) framesRemaining), &bitstream);
		            
		            // end of file
		            if(!framesRead) break;
		            
		            // Probably OV_HOLE, OV_EBADLINK, OV_EINVAL. @todo - log warning here.
		            if (framesRead < 0)
		            {
		                continue;
		            }
		            
		            for (int i = 0; i < framesRead; ++i)
		            {
		                for(int ch = 0; ch < d.channelCount; ch++)
		                {
		                    d.samples[(.)totalFramesRead] = buffer[ch][i];
		                    totalFramesRead++;
		                }
		            }
		        }
		        
		        return totalFramesRead;
		    }
		    
		    String errorAsString(int ovErrorCode)
		    {
		        switch(ovErrorCode)
		        {
		            case OV_FALSE: return "OV_FALSE";
		            case OV_EOF: return "OV_EOF";
		            case OV_HOLE: return "OV_HOLE";
		            case OV_EREAD: return "OV_EREAD";
		            case OV_EFAULT: return "OV_EFAULT";
		            case OV_EIMPL: return "OV_EIMPL";
		            case OV_EINVAL: return "OV_EINVAL";
		            case OV_ENOTVORBIS: return "OV_ENOTVORBIS";
		            case OV_EBADHEADER: return "OV_EBADHEADER";
		            case OV_EVERSION: return "OV_EVERSION";
		            case OV_ENOTAUDIO: return "OV_ENOTAUDIO";
		            case OV_EBADPACKET: return "OV_EBADPACKET";
		            case OV_EBADLINK: return "OV_EBADLINK";
		            case OV_ENOSEEK: return "OV_ENOSEEK";
		            default: return "OV_UNKNOWN_ERROR";
		        }
		    }
		    
		    //////////////////////
		    // vorbis callbacks //
		    //////////////////////
		    
		    //@todo: implement streaming support
		    
		//private:
		    
		    private struct ogg_file
		    {
		        public char* curPtr;
		        public char* filePtr;
		        public size_t fileSize;
		    }
		    
		    NO_COPY(VorbisDecoderInternal);
		    
		    private OggVorbis_File * fileHandle;
		    private AudioData * d;

			[Inline]
		    private int64_t getTotalSamples() { return int64_t(ov_pcm_total(const_cast<OggVorbis_File *>(fileHandle), -1)); }
		    [Inline]
		    private int64_t getLengthInSeconds() { return int64_t(ov_time_total(const_cast<OggVorbis_File *>(fileHandle), -1)); }
		    [Inline]
		    private int64_t getCurrentSample() { return int64_t(ov_pcm_tell(const_cast<OggVorbis_File *>(fileHandle))); }
		    
		    private static size_t AR_readOgg(void* dst, size_t size1, size_t size2, void* fh)
		    {
		        ogg_file* of = reinterpret_cast<ogg_file*>(fh);
		        size_t len = size1 * size2;
		        if ( of.curPtr + len > of.filePtr + of.fileSize )
		        {
		            len = of.filePtr + of.fileSize - of.curPtr;
		        }
		        memcpy( dst, of.curPtr, len );
		        of.curPtr += len;
		        return len;
		    }
		    
		    private static int AR_seekOgg(void * fh, ogg_int64_t to, int type) 
		    {
		        ogg_file * of = reinterpret_cast<ogg_file*>(fh);
		    
		        switch (type)
		        {
		            case SEEK_CUR: of.curPtr += to; break;
		            case SEEK_END: of.curPtr = of->filePtr + of->fileSize - to; break;
		            case SEEK_SET: of.curPtr = of->filePtr + to; break;
		            default: return -1;
		        }

		        if (of->curPtr < of->filePtr) 
		        {
		            of->curPtr = of->filePtr;
		            return -1;
		        }

		        if (of->curPtr > of->filePtr + of->fileSize)
		        {
		            of->curPtr = of->filePtr + of->fileSize;
		            return -1;
		        }

		        return 0;
		    }
		    
		    private static int AR_closeOgg(void * fh) 
		    {
		        return 0;
		    }
		    
		    private static long AR_tellOgg(void * fh)
		    {
		        ogg_file * of = (ogg_file*)(fh);
		        return (.)(of.curPtr - of.filePtr);
		    }
		    
		    private void loadAudioData(void *source, ov_callbacks callbacks)
		    {
		        if (var r = ov_test_callbacks(source, fileHandle, null, 0, callbacks) != 0)
		        {
		            Console.Error.WriteLine(errorAsString(r));
		            Runtime.FatalError("File is not a valid ogg vorbis file");
		        }
		        
		        if (var r = ov_test_open(fileHandle) != 0)
		        {
		            Console.Error.WriteLine(errorAsString(r));
		            Runtime.FatalError("ov_test_open failed");
		        }
		        
		        // Don't need to fclose() after an open -- vorbis does this internally
		        
		        vorbis_info * ovInfo = ov_info(fileHandle, -1);
		        
		        if (ovInfo == null) Runtime.FatalError("Reading metadata failed");
		        
		        if (var r = ov_streams(fileHandle) != 1)
		        {
		            Console.Error.WriteLine(errorAsString(r));
		            Runtime.FatalError( "Unsupported: file contains multiple bitstreams");
		        }
		        
		        d.sampleRate = int32(ovInfo.rate);
		        d.channelCount = ovInfo.channels;
		        d.sourceFormat = MakeFormatForBits(32, true, false);
		        d.lengthSeconds = double(getLengthInSeconds());
		        d.frameSize = ovInfo.channels * GetFormatBitsPerSample(d.sourceFormat);
		        
		        // Samples in a single channel
		        var totalSamples = size_t(getTotalSamples());
		        
		        d.samples.resize(totalSamples * (.)d.channelCount);
		        
		        if (readInternal(totalSamples) == 0) Runtime.FatalError("could not read any data");
		    }
		    
		};

		//////////////////////
		// Public Interface //
		//////////////////////

		void LoadFromPath(AudioData * data, String path)
		{
		    VorbisDecoderInternal decoder(data, path);
		}

		void LoadFromBuffer(AudioData * data, const std::vector<uint8_t> & memory)
		{
		    VorbisDecoderInternal decoder(data, memory);
		}

		[Comptime]
		static Span<StringView> GetSupportedFileExtensions()
		{
			StringView[] span = scope StringView[]("ogg");
		    return Span<StringView>(span);
		}

	}
}