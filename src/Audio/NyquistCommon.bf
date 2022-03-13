using System;
using System.Collections;
using System.Diagnostics;
namespace BfEngine.Audio
{
	class NyquistCommon
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

/*#ifndef LIBNYQUIST_COMMON_H
#define LIBNYQUIST_COMMON_H

#include <memory>
#include <vector>
#include <algorithm>
#include <cmath>
#include <iostream>
#include <string>
#include <stdint.h>
#include <cassert>
#include <type_traits>
#include <numeric>
#include <array>
#include <map>
#include <random>*/

		public typealias char = char8;

		public typealias uint8_t = uint8;
		public typealias uint16_t = uint16;
		public typealias int16_t = int16;
		public typealias uint32_t = uint32;
		public typealias int32_t = int32;
		public typealias uint64_t = uint64;
		public typealias int64_t = int64;

		public typealias size_t = uint64;

		/////////////////
		// Util Macros //
		/////////////////

/*#define F_ROUND(x) ((x) > 0 ? (x) + 0.5f : (x) - 0.5f)
#define D_ROUND(x) ((x) > 0 ? (x) + 0.5  : (x) - 0.5)

#define NO_COPY(C) C(const C &) = delete; C & operator = (const C &) = delete
#define NO_MOVE(C) NO_COPY(C); C(C &&) = delete; C & operator = (const C &&) = delete*/

		///////////////////////
		// Endian Operations //
		///////////////////////

#define __x86_64__

#if __x86_64__ || _M_X64 || __i386__ || _M_IX86
		    #define CPU_X86
#endif

#if __arm__ || _M_ARM
		    #define CPU_ARM
#endif

#if CPU_X86 && CPU_ARM
		    #error CPU_X86 and CPU_ARM both defined.
#endif

#if !ARCH_CPU_BIG_ENDIAN && !ARCH_CPU_LITTLE_ENDIAN
		    #if CPU_X86 || CPU_ARM || (__BYTE_ORDER__ && __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__)
		        #define ARCH_CPU_LITTLE_ENDIAN
		    #elif __BYTE_ORDER__ && __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
		        #define ARCH_CPU_BIG_ENDIAN
		    #else
		        #error ARCH_CPU_BIG_ENDIAN or ARCH_CPU_LITTLE_ENDIAN should be defined.
		    #endif
#endif

#if ARCH_CPU_BIG_ENDIAN && ARCH_CPU_LITTLE_ENDIAN
		    #error ARCH_CPU_BIG_ENDIAN and ARCH_CPU_LITTLE_ENDIAN both defined.
#endif
		[Inline]
		static uint16_t Swap16(uint16_t value)
		{
		    return (uint16_t)((value >> 8) | (value << 8));
		}
		[Inline]
		static uint32_t Swap24(uint32_t value)
		{
		    return (((value & 0x00ff0000) >> 16) |
		            ((value & 0x0000ff00))       |
		            ((value & 0x000000ff) << 16)) & 0x00FFFFFF;
		}
		[Inline]
		static uint32_t Swap32(uint32_t value)
		{
		    return (((value & 0x000000ff) << 24) |
		            ((value & 0x0000ff00) <<  8) |
		            ((value & 0x00ff0000) >>  8) |
		            ((value & 0xff000000) >> 24));
		}
		[Inline]
		static uint64_t Swap64(uint64_t value)
		{
		    return (((value & 0x00000000000000ffL) << 56) |
		            ((value & 0x000000000000ff00L) << 40) |
		            ((value & 0x0000000000ff0000L) << 24) |
		            ((value & 0x00000000ff000000L) << 8)  |
		            ((value & 0x000000ff00000000L) >> 8)  |
		            ((value & 0x0000ff0000000000L) >> 24) |
		            ((value & 0x00ff000000000000L) >> 40) |
		            ((value & 0xff00000000000000L) >> 56));
		}

		//template<typename T>
		/*[Inline]
		bool isOdd<T>(T x)
		{
		    return (x & 0x1);
		}*/
		    
#if ARCH_CPU_LITTLE_ENDIAN
		    static uint16_t Read16(uint16_t n) => (n);
		    static uint32_t Read24(uint32_t n) => (n);
		    static uint32_t Read32(uint32_t n) => (n);
		    static uint64_t Read64(uint64_t n) => (n);
			static int16_t Read16(int16_t n) => (n);
			static int32_t Read24(int32_t n) => (n);
			static int32_t Read32(int32_t n) => (n);
			static int64_t Read64(int64_t n) => (n);

			static double Read64(double n) => (n);
		    /*#define Write16(n) (n);
		    #define Write24(n) (n);
		    #define Write32(n) (n);
		    #define Write64(n) (n);*/
#else
		    #define Read16(n) Swap16(n)
		    #define Read24(n) Swap24(n)
		    #define Read32(n) Swap32(n)
		    #define Read64(n) Swap64(n)
		    #define Write16(n) Swap16(n)
		    #define Write24(n) Swap24(n)
		    #define Write32(n) Swap32(n)
		    #define Write64(n) Swap64(n)
#endif
		[Inline]
		public static uint64_t Pack(uint32_t a, uint32_t b)
		{
		    uint64_t tmp = (uint64_t) b << 32 | (uint64_t) a;
#if ARCH_CPU_LITTLE_ENDIAN
		    return tmp;
#else
		    return Swap64(tmp);
#endif
		}
		[Inline]
		public static uint32_t Pack(uint16_t a, uint16_t b)
		{
		    uint32_t tmp = (uint32_t) b << 16 | (uint32_t) a;
#if ARCH_CPU_LITTLE_ENDIAN
		    return tmp;
#else
		    return Swap32(tmp);
#endif
		}
		[Inline]
		public static uint16_t Pack(uint8_t a, uint8_t b)
		{
		    uint16_t tmp = (uint16_t) b << 8 | (uint16_t) a;
#if ARCH_CPU_LITTLE_ENDIAN
		    return tmp;
#else
		    return Swap16(tmp);
#endif
		}

		// http://www.dsprelated.com/showthread/comp.dsp/136689-1.php
		[Inline]
		public static int32_t Pack(uint8_t a, uint8_t b, uint8_t c)
		{
		    // uint32_t tmp = ((c & 0x80) ? (0xFF << 24) : 0x00 << 24) | (c << 16) | (b << 8) | (a << 0); // alternate method
		    int32_t x = ((int32)c << 16) | ((int32)b << 8) | (a << 0);
		    int32 sign_extended = (x) | (int32)(/*!!*/((int32)((x) & 0x800000) != 0 ? 1 : 0) * 0xff000000);
		    #if ARCH_CPU_LITTLE_ENDIAN
		        return sign_extended;
		    #else
		        Swap32(sign_extended);
		    #endif
		}
		/*[Inline]
		std::array<uint8_t, 3> Unpack(uint32_t a)
		{
		    static std::array<uint8_t, 3> output;
		    
		    #if ARCH_CPU_LITTLE_ENDIAN
		        output[0] = a >> 0;
		        output[1] = a >> 8;
		        output[2] = a >> 16;
		    #else
		        output[0] = a >> 16;
		        output[1] = a >> 8;
		        output[2] = a >> 0;
		    #endif
		    return output;
		}*/

		//////////////////////////
		// Resampling Utilities //
		//////////////////////////

		// This is a naieve implementation of a resampling filter where a lerp is used as a bad low-pass.
		// It very far from the ideal case and should be used with caution (or not at all) on signals that matter.
		// It is included here to upsample 44.1k to 48k for the purposes of microphone input => Opus, where the the 
		// nominal frequencies of speech are particularly far from Nyquist.
		[Inline]
		public static void linear_resample(double rate, Span<float> input, List<float> output, uint32_t samplesToProcess)
		{
		    double virtualReadIndex = 0;
		    double a, b, i, sample;
		    uint32_t n = samplesToProcess - 1;
		    while (n-- != 0)
		    {
		        uint32_t readIndex = /*static_cast<uint32_t>*/(uint32_t)(virtualReadIndex);
		        i = virtualReadIndex - readIndex;
		        a = input[readIndex + 0];
		        b = input[readIndex + 1];
		        sample = (1.0 - i) * a + i * b; // linear interpolate
		        output.Add(/*static_cast<float>*/(float)(sample));
		        virtualReadIndex += rate;
		    }
		}

		[Inline]
		public static double sample_hermite_4p_3o(double x, double * y)
		{
		    double c0, c1, c2, c3;
		    c0 = y[1];
		    c1 = (1.0 / 2.0)*(y[2] - y[0]);
		    c2 = (y[0] - (5.0 / 2.0)*y[1]) + (2.0*y[2] - (1.0 / 2.0)*y[3]);
		    c3 = (1.0 / 2.0)*(y[3] - y[0]) + (3.0 / 2.0)*(y[1] - y[2]);
		    return ((c3*x + c2)*x + c1)*x + c0;
		}

		[Inline]
		public static void hermite_resample(double rate, Span<float> input, List<float> output, uint32_t samplesToProcess)
		{
		    double virtualReadIndex = 1;
		    double i, sample;
		    uint32_t n = samplesToProcess - 1;
		    while (n-- != 0)
		    {
		        uint32_t readIndex = /*static_cast<uint32_t>*/(uint32_t)(virtualReadIndex);
		        i = virtualReadIndex - readIndex;
		        double[4] samps = .(input[readIndex - 1], input[readIndex], input[readIndex + 1], input[readIndex + 2]);
		        sample = sample_hermite_4p_3o(i, &samps); // cubic hermite interpolate over 4 samples
		        output.Add(/*static_cast<float>*/(float)(sample));
		        virtualReadIndex += rate;
		    }
		}

		//////////////////////////
		// Conversion Utilities //
		//////////////////////////

		enum DitherType
		{
		    DITHER_NONE,
		    DITHER_TRIANGLE
		};

		/*class Dither
		{
		    std::uniform_real_distribution<float> distribution;
		    std::mt19937 gen;
		    float previous;
		    DitherType d;
		public:

		    Dither(DitherType d) : distribution(-0.5f, +0.5f), previous(0.f), d(d) {}

		    float operator()(float s)
		    {
		        if (d == DITHER_TRIANGLE)
		        {
		            const float value = distribution(gen);
		            s = s + value - previous;
		            previous = value;
		            return s;
		        }
		        else return s;
		    }
		};*/

		// Signed maxes, defined for readabilty/convenience
const float NQR_INT16_MAX = 32767.f;
const float NQR_INT24_MAX = 8388608.f;
const float NQR_INT32_MAX = 2147483648.f;

		const float NQR_BYTE_2_FLT = 1.0f / 127.0f;

static float int8_to_float32(int8 s) => ((float) (s) * NQR_BYTE_2_FLT);
static float uint8_to_float32(uint8 s)=>(((float) (s) - 128) * NQR_BYTE_2_FLT);
static float int16_to_float32(int16 s)=> ((float) (s) / NQR_INT16_MAX);
static float int24_to_float32(int32 s)=> ((float) (s) / NQR_INT24_MAX);
static float int32_to_float32(int32 s)=> ((float) (s) / NQR_INT32_MAX);
		    
static int8  float32_to_int8 (float s) => (.) (float) (s * 127.f);
static uint8 float32_to_uint8(float s) => (.) (float) ((s * 127.f) + 128);
static int16 float32_to_int16(float s) => (.) (float) (s * NQR_INT16_MAX);
static int32 float32_to_int24(float s) => (.) (float) (s * NQR_INT24_MAX);
static int32 float32_to_int32(float s) => (.) (float) (s * NQR_INT32_MAX);

		//@todo add 12, 20 for flac
		public enum PCMFormat
		{
		    PCM_U8,
		    PCM_S8,
		    PCM_16,
		    PCM_24,
		    PCM_32,
		    PCM_64,
		    PCM_FLT,
		    PCM_DBL,
		    PCM_END
		};

		//template<class T> T clamp(T a, T mn, T mx) { return std::max(std::min(a, mx), mn); }
		    
		// Src data is aligned to PCMFormat
		// @todo normalize?
		public static void ConvertToFloat32(float* dst, uint8_t* src, size_t N, PCMFormat f)
		{
		    Debug.Assert(f != .PCM_END);

		    if (f == .PCM_U8)
		    {
		        uint8_t* dataPtr = /*reinterpret_cast<const uint8_t *>*/(src);
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = uint8_to_float32(dataPtr[i]);
		    }
		    else if (f == .PCM_S8)
		    {
		        int8* dataPtr = /*reinterpret_cast<const int8_t *>*/(int8*)(src);
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = int8_to_float32(dataPtr[i]);
		    }
		    else if (f == .PCM_16)
		    {
		        int16_t * dataPtr = /*reinterpret_cast<const int16_t *>*/(int16_t*)(src);
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = int16_to_float32((.)Read16(dataPtr[i]));
		    }
		    else if (f == .PCM_24)
		    {
		        uint8_t* dataPtr = /*reinterpret_cast<const uint8_t *>*/(uint8_t*)(src);
		        size_t c = 0;
		        for (size_t i = 0; i < N; ++i)
		        {
		            int32_t sample = Pack(dataPtr[c], dataPtr[c+1], dataPtr[c+2]);
		            dst[i] = int24_to_float32(sample); // Packed types don't need addtional endian helpers
		            c += 3;
		        }
		    }
		    else if (f == .PCM_32)
		    {
		        int32_t* dataPtr = /*reinterpret_cast<const int32_t *>*/(int32_t*)(src);
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = int32_to_float32(Read32(dataPtr[i]));
		    }

		    //@todo add int64 format

		    else if (f == .PCM_FLT)
		    {
		        Internal.MemCpy(dst, src, (.)N * sizeof(float));
		        /* const float * dataPtr = reinterpret_cast<const float *>(src);
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = (float) Read32(dataPtr[i]); */
		    }
		    else if (f == .PCM_DBL)
		    {
		        double* dataPtr = /*reinterpret_cast<const double *>*/(double*)(src);
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = (float) Read64(dataPtr[i]);
		    }
		}

		// Src data is always aligned to 4 bytes (WavPack, primarily)
		public static void ConvertToFloat32(float* dst, int32_t* src, size_t N, PCMFormat f)
		{
		    Debug.Assert(f != .PCM_END);

		    if (f == .PCM_16)
		    {
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = int16_to_float32((.)Read32(src[i]));
		    }
		    else if (f == .PCM_24)
		    {
		        uint8_t* dataPtr = /*reinterpret_cast<const uint8_t *>*/(uint8_t*)(src);
		        size_t c = 0;
		        for (size_t i = 0; i < N; ++i)
		        {
		            int32_t sample = Pack(dataPtr[c], dataPtr[c+1], dataPtr[c+2]);
		            dst[i] = int24_to_float32(sample);
		            c += 4; // +4 for next 4 byte boundary
		        }
		    }
		    else if (f == .PCM_32)
		    {
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = int32_to_float32(Read32(src[i]));
		    }
		}

		public static void ConvertToFloat32(float* dst, int16_t* src, size_t N, PCMFormat f)
		{
		    Debug.Assert(f != .PCM_END);
		    if (f == .PCM_16)
		    {
		        for (size_t i = 0; i < N; ++i)
		            dst[i] = int16_to_float32(Read16(src[i]));
		    }
		}

		/*void ConvertFromFloat32(uint8_t * dst, float * src, size_t N, PCMFormat f, DitherType t)
		{
		    Debug.Assert(f != PCM_END);

		    Dither dither(t);

		    if (f == .PCM_U8)
		    {
		        uint8_t * destPtr = reinterpret_cast<uint8_t *>(dst);
		        for (size_t i = 0; i < N; ++i)
		            destPtr[i] = (uint8_t) dither(lroundf(float32_to_uint8(src[i])));
		    }
		    else if (f == .PCM_S8)
		    {
		        int8 * destPtr = reinterpret_cast<int8_t *>(dst);
		        for (size_t i = 0; i < N; ++i)
		            destPtr[i] = (int8_t) dither(lroundf(float32_to_int8(src[i])));
		    }
		    else if (f == .PCM_16)
		    {
		        int16_t * destPtr = reinterpret_cast<int16_t *>(dst);
		        for (size_t i = 0; i < N; ++i)
		            destPtr[i] =(int16_t) dither(lroundf(float32_to_int16(src[i])));
		    }
		    else if (f == .PCM_24)
		    {
		        uint8_t * destPtr = reinterpret_cast<uint8_t *>(dst);
		        size_t c = 0;
		        for (size_t i = 0; i < N; ++i)
		        {
		            int32_t sample = (int32_t) dither(lroundf(float32_to_int24(src[i])));
		            auto unpacked = Unpack(sample); // Handles endian swap
		            destPtr[c] = unpacked[0];
		            destPtr[c+1] = unpacked[1];
		            destPtr[c+2] = unpacked[2];
		            c += 3;
		        }
		    }
		    else if (f == .PCM_32)
		    {
		        int32_t * destPtr = reinterpret_cast<int32_t *>(dst);
		        for (size_t i = 0; i < N; ++i)
		            destPtr[i] = (int32_t) dither(lroundf(float32_to_int32(src[i])));
		    }
		}*/

		public static int32 GetFormatBitsPerSample(PCMFormat f)
		{
		    switch(f)
		    {
		        case .PCM_U8:
		        case .PCM_S8:
		            return 8;
		        case .PCM_16:
		            return 16;
		        case .PCM_24:
		            return 24;
		        case .PCM_32:
		        case .PCM_FLT:
		            return 32;
		        case .PCM_64:
		        case .PCM_DBL:
		            return 64;
		        default:
		            return 0;
		    }
			return 0;
		}

		//////////////////////////
		// User Data + File Ops //
		//////////////////////////
		
		public struct AudioData : IDisposable
		{
		    public int32 channelCount;
		    public int32 sampleRate;
		    public double lengthSeconds;
		    public size_t frameSize; // channels * bits per sample
			//public List<float> samples = new List<float>();
		    public List<int16> samples = new List<int16>();
		    public PCMFormat sourceFormat;
		    
		    //@todo: add field: channel layout
		    //@todo: add field: lossy / lossless
		    //@todo: audio data loaded (for metadata only)
		    //@todo: bitrate (if applicable)
		    //@todo: original sample rate (if applicable)

			public void Dispose()
			{
				delete samples;
			}
		};

		struct StreamableAudioData : AudioData
		{
		    //@todo: add field: is this format streamable?
		    //@todo: hold file handle
		};

		public struct NyquistFileBuffer
		{
		    public List<uint8_t> buffer;
		    public size_t size;
		};

		//NyquistFileBuffer ReadFile(String pathToFile);

		////////////////////
		// Encoding Utils //
		////////////////////

		/*public struct EncoderParams
		{
		    public int channelCount;
		    public PCMFormat targetFormat;
		    public DitherType dither;
		};*/

		public enum EncoderError
		{
		    NoError,
		    InsufficientSampleData,
		    FileIOError,
		    UnsupportedSamplerate,
		    UnsupportedChannelConfiguration,
		    UnsupportedBitdepth,
		    UnsupportedChannelMix,
		    BufferTooBig,
		};

		//////////////////////
		// Wav Format Utils //
		//////////////////////

		public enum WaveFormatCode
		{
		    FORMAT_UNKNOWN = 0x0,       // Unknown Wave Format
		    FORMAT_PCM = 0x1,           // PCM Format
		    FORMAT_ADPCM = 0x2,         // Microsoft ADPCM Format
		    FORMAT_IEEE = 0x3,          // IEEE float/double
		    FORMAT_ALAW = 0x6,          // 8-bit ITU-T G.711 A-law
		    FORMAT_MULAW = 0x7,         // 8-bit ITU-T G.711 µ-law
		    FORMAT_IMA_ADPCM = 0x11,    // IMA ADPCM Format
		    FORMAT_EXT = 0xFFFE         // Set via subformat
		};

		public struct RiffChunkHeader
		{
		    public uint32_t id_riff;           // Chunk ID: 'RIFF'
		    public uint32_t file_size;         // Entire file in bytes
		    public uint32_t id_wave;           // Chunk ID: 'WAVE'
		};

		public struct WaveChunkHeader
		{
		    public uint32_t fmt_id;            // Chunk ID: 'fmt '
		    public uint32_t chunk_size;        // Size in bytes
		    public uint16_t format;            // Format code
		    public uint16_t channel_count;     // Num interleaved channels
		    public uint32_t sample_rate;       // SR
		    public uint32_t data_rate;         // Data rate
		    public uint16_t frame_size;        // 1 frame = channels * bits per sample (also known as block align)
		    public uint16_t bit_depth;         // Bits per sample  
		};

		public struct BextChunk 
		{
		    public uint32_t fmt_id;            // Chunk ID: 'bext'
		    public uint32_t chunk_size;        // Size in bytes
		    public uint8_t[256] description;   // Description of the sound (ascii)
		    public uint8_t[32] origin;         // Name of the originator (ascii)
		    public uint8_t[32] origin_ref;     // Reference of the originator (ascii)
		    public uint8_t[10] orgin_date;     // yyyy-mm-dd (ascii)
		    public uint8_t[8] origin_time;     // hh-mm-ss (ascii)
		    public uint64_t time_ref;          // First sample count since midnight
		    public uint32_t version;           // Version of the BWF
		    public uint8_t[64] uimd;           // Byte 0 of SMPTE UMID
		    public uint8_t[188] reserved;      // 190 bytes, reserved for future use & set to NULL
		};

		public struct FactChunk
		{
		    public uint32_t fact_id;           // Chunk ID: 'fact'
		    public uint32_t chunk_size;        // Size in bytes 
		    public uint32_t sample_length;     // number of samples per channel
		};

		public struct ExtensibleData
		{
		    public uint16_t size;
		    public uint16_t valid_bits_per_sample;
		    public uint32_t channel_mask;
		    public struct GUID
		    {
		        public uint32_t data0;
		        public uint16_t data1;
		        public uint16_t data2;
		        public uint16_t data3;
		        public uint8_t[6] data4;
		    };
		};

		/*template<class C, class R> 
		std::basic_ostream<C,R> & operator << (std::basic_ostream<C,R> & a, const WaveChunkHeader & b) 
		{ 
		    return a <<
		        "Format ID:\t\t"        << b.fmt_id <<
		        "\nChunk Size:\t\t"     << b.chunk_size <<
		        "\nFormat Code:\t\t"    << b.format <<
		        "\nChannels:\t\t"       << b.channel_count <<
		        "\nSample Rate:\t\t"    << b.sample_rate <<
		        "\nData Rate:\t\t"      << b.data_rate <<
		        "\nFrame Size:\t\t"     << b.frame_size <<
		        "\nBit Depth:\t\t"      << b.bit_depth << std::endl;
		}*/

		//@todo expose speaker/channel/layout masks in the API: 
		    
		public enum SpeakerChannelMask
		{
		    SPEAKER_FRONT_LEFT = 0x00000001,
		    SPEAKER_FRONT_RIGHT = 0x00000002,
		    SPEAKER_FRONT_CENTER = 0x00000004,
		    SPEAKER_LOW_FREQUENCY = 0x00000008,
		    SPEAKER_BACK_LEFT = 0x00000010,
		    SPEAKER_BACK_RIGHT = 0x00000020,
		    SPEAKER_FRONT_LEFT_OF_CENTER = 0x00000040,
		    SPEAKER_FRONT_RIGHT_OF_CENTER = 0x00000080,
		    SPEAKER_BACK_CENTER = 0x00000100,
		    SPEAKER_SIDE_LEFT = 0x00000200,
		    SPEAKER_SIDE_RIGHT = 0x00000400,
		    SPEAKER_TOP_CENTER = 0x00000800,
		    SPEAKER_TOP_FRONT_LEFT = 0x00001000,
		    SPEAKER_TOP_FRONT_CENTER = 0x00002000,
		    SPEAKER_TOP_FRONT_RIGHT = 0x00004000,
		    SPEAKER_TOP_BACK_LEFT = 0x00008000,
		    SPEAKER_TOP_BACK_CENTER = 0x00010000,
		    SPEAKER_TOP_BACK_RIGHT = 0x00020000,
		    SPEAKER_RESERVED = 0x7FFC0000,
		    SPEAKER_ALL = 0x80000000
		};

		public enum SpeakerLayoutMask
		{
		    SPEAKER_MONO = (.)(SpeakerChannelMask.SPEAKER_FRONT_CENTER),
		    SPEAKER_STEREO = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT),
		    SPEAKER_2POINT1 = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_LOW_FREQUENCY),
		    SPEAKER_SURROUND = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_FRONT_CENTER | SpeakerChannelMask.SPEAKER_BACK_CENTER),
		    SPEAKER_QUAD = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_BACK_LEFT | SpeakerChannelMask.SPEAKER_BACK_RIGHT),
		    SPEAKER_4POINT1 = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_LOW_FREQUENCY | SpeakerChannelMask.SPEAKER_BACK_LEFT | SpeakerChannelMask.SPEAKER_BACK_RIGHT),
		    SPEAKER_5POINT1 = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_FRONT_CENTER | SpeakerChannelMask.SPEAKER_LOW_FREQUENCY | SpeakerChannelMask.SPEAKER_BACK_LEFT | SpeakerChannelMask.SPEAKER_BACK_RIGHT),
		    SPEAKER_7POINT1 = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_FRONT_CENTER | SpeakerChannelMask.SPEAKER_LOW_FREQUENCY | SpeakerChannelMask.SPEAKER_BACK_LEFT | SpeakerChannelMask.SPEAKER_BACK_RIGHT | SpeakerChannelMask.SPEAKER_FRONT_LEFT_OF_CENTER | SpeakerChannelMask.SPEAKER_FRONT_RIGHT_OF_CENTER),
		    SPEAKER_5POINT1_SURROUND = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_FRONT_CENTER | SpeakerChannelMask.SPEAKER_LOW_FREQUENCY | SpeakerChannelMask.SPEAKER_SIDE_LEFT | SpeakerChannelMask.SPEAKER_SIDE_RIGHT),
		    SPEAKER_7POINT1_SURROUND = (.)(SpeakerChannelMask.SPEAKER_FRONT_LEFT | SpeakerChannelMask.SPEAKER_FRONT_RIGHT | SpeakerChannelMask.SPEAKER_FRONT_CENTER | SpeakerChannelMask.SPEAKER_LOW_FREQUENCY | SpeakerChannelMask.SPEAKER_BACK_LEFT | SpeakerChannelMask.SPEAKER_BACK_RIGHT | SpeakerChannelMask.SPEAKER_SIDE_LEFT | SpeakerChannelMask.SPEAKER_SIDE_RIGHT),
		};

		//@todo verify mask values
		[Inline]
		public static SpeakerLayoutMask ComputeChannelMask(size_t channels)
		{
		    switch (channels)
		    {
		    case 1: return .SPEAKER_MONO;
		    case 2: return .SPEAKER_STEREO;
		    case 3: return .SPEAKER_2POINT1;
		    case 4: return .SPEAKER_QUAD;
		    case 5: return .SPEAKER_4POINT1;
		    case 6: return .SPEAKER_5POINT1;
		    default: return (.)-1; 
		    }
		}

		/////////////////////
		// Chunk utilities //
		/////////////////////

		public struct ChunkHeaderInfo {
			public uint32_t offset;            // Byte offset into chunk
			public uint32_t size;              // Size of the chunk in bytes

			public this(
				    uint32_t offset,            // Byte offset into chunk
				    uint32_t size              // Size of the chunk in bytes
				){
					this.offset = offset;
					this.size = size;
				}
		}

		[Inline]
		public static uint32_t GenerateChunkCode(uint8_t a, uint8_t b, uint8_t c, uint8_t d)
		{
#if ARCH_CPU_LITTLE_ENDIAN
		    return ((uint32_t)((a) | (((uint32)b) << 8) | (((uint32)c) << 16) | (((uint32_t)(d)) << 24)));
#else
		    return ((uint32_t)((((uint32_t)(a)) << 24) | ((b) << 16) | ((c) << 8) | (d)));
#endif
		}

		[Inline]
		public static char * GenerateChunkCodeChar(uint8_t a, uint8_t b, uint8_t c, uint8_t d)
		{
		    var chunk = GenerateChunkCode(a, b, c, d);

		    char * outArr = new char[4]*(?);

		    uint32_t t = 0x000000FF;

		    for (size_t i = 0; i < 4; i++)
		    {
		        outArr[i] = (.)(chunk & t);
		        chunk >>= 8;
		    }
		    return outArr;
		}

		[Inline]
		public static ChunkHeaderInfo ScanForChunk(Span<uint8_t> fileData, uint32_t chunkMarker)
		{
		    // D[n] aligned to 16 bytes now
		    uint16_t * d = /*reinterpret_cast<uint16_t *>*/(uint16_t*)(fileData.Ptr);

		    for (size_t i = 0; i < (.)fileData.Length / sizeof(uint16_t); i++)
		    {
		        // This will be in machine endianess
		        uint32_t m = Pack(Read16(d[i]), Read16(d[i + 1]));

		        if (m == chunkMarker)
		        {
		            uint32_t cSz = Pack(Read16(d[i + 2]), Read16(d[i + 3]));
		            return .( (uint32_t(i * sizeof(uint16_t))), cSz ); // return i in bytes to the start of the data
		        }
		        else continue;
		    }
		    return .(0, 0);
		};

		/*[Inline]
		public static WaveChunkHeader MakeWaveHeader(EncoderParams param, int32 sampleRate)
		{
		    WaveChunkHeader header;

		    int bitdepth = GetFormatBitsPerSample(param.targetFormat);

		    header.fmt_id = GenerateChunkCode((.)'f', (.)'m', (.)'t', (.)' ');
		    header.chunk_size = 16;
		    header.format = (param.targetFormat <= PCMFormat.PCM_32) ? WaveFormatCode.FORMAT_PCM : WaveFormatCode.FORMAT_IEEE;
		    header.channel_count = param.channelCount;
		    header.sample_rate = sampleRate;
		    header.data_rate = sampleRate * param.channelCount * (bitdepth / 8);
		    header.frame_size = param.channelCount * (bitdepth / 8);
		    header.bit_depth = bitdepth;

		    return header;
		}*/

		// @todo expose this in the FLAC API
		/*[Inline]
		std::map<int, std::string> GetFlacQualityTable()
		{
		    return {
		        { 0, "0 (Fastest)" },
		        { 1, "1" },
		        { 2, "2" },
		        { 3, "3" },
		        { 4, "4" },
		        { 5, "5 (Default)" },
		        { 6, "6" },
		        { 7, "7" },
		        { 8, "8 (Highest)" },
		    };
		}*/

		
		[Inline]
		public static void DeinterleaveStereo<T>(T * c1, T * c2, T* src, size_t count)
		{
			var c1, c2, src;
		    var src_end = src + count;
		    while (src != src_end)
		    {
		        *c1 = src[0];
		        *c2 = src[1];
		        c1++;
		        c2++;
		        src += 2;
		    }
		}

		public static void InterleaveChannels<T>(T * src, T * dest, size_t numFramesPerChannel, size_t numChannels, size_t N)
		{
		    for (size_t ch = 0; ch < numChannels; ch++)
		    {
		        size_t x = ch;
		        T * srcChannel = &src[ch * numFramesPerChannel];
		        for (size_t i = 0; i < N; i++)
		        {
		            dest[x] = srcChannel[i];
		            x += numChannels;
		        }
		    }
		}

		
		public static void DeinterleaveChannels<T>(T * src, T * dest, size_t numFramesPerChannel, size_t numChannels, size_t N)
		{
		    for (size_t ch = 0; ch < numChannels; ch++)
		    {
		        size_t x = ch;
		        T *destChannel = &dest[ch * numFramesPerChannel];
		        for (size_t i = 0; i < N; i++)
		        {
		            destChannel[i] = (T)src[x];
		            x += numChannels;
		        }
		    }
		}

		
		/*void StereoToMono<T>(T * src, T * dest, size_t N)
		{
		    for (size_t i = 0, j = 0; i < N; i += 2, ++j)
		    {
		        dest[j] = (src[i] + src[i + 1]) / 2.0f;
		    }
		}*/


		public static void MonoToStereo<T>(T * src, T * dest, size_t N)
		{
		    for (size_t i = 0, j = 0; i < N; ++i, j += 2)
		    {
		        dest[j] = src[i];
		        dest[j + 1] = src[i];
		    }
		}

		[Inline]
		public static void TrimSilenceInterleaved(List<float> buffer, float v, bool fromFront, bool fromEnd)
		{
		    //@todo implement me!
		}

	} // end namespace nqr

}