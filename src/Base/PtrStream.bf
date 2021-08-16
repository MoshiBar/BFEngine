using System.IO;
using System;

namespace BfEngine{
	class PtrStream : Stream
	{
		uint8* ptr;
		int length;
		int position = 0;

		public this(Span<uint8> span) : this (span.Ptr, span.Length){}
		public this(void* ptr, int length){
			this.ptr = (uint8*)ptr;
			this.length = length;
		}

		public override int64 Position
		{
			get => position;
			set => position = value;
		}

		public override int64 Length
		{
			get => length;
		}

		public override bool CanRead
		{
			get => true;
		}

		public override bool CanWrite
		{
			get => false; // too lazy to implement writes
		}

		public override System.Result<int> TryRead(System.Span<uint8> data)
		{
			int readlength = Math.Min(data.Length, length - position);
			Internal.MemCpy(data.Ptr, ptr + position, data.Length);
			position += readlength;
			return readlength;
		}

		public override System.Result<int> TryWrite(System.Span<uint8> data)
		{
			return default;
		}

		public override System.Result<void> Close()
		{
			return default;
		}
	}
}
