using System;
using System.IO;
using System.Diagnostics;
using System.Collections;
using System.Security.Cryptography;

namespace BfEngine
{
	public static class Utils
	{
		public static int ExecuteProcess(StringView executable, StringView commandLine)
		{
			Log.Info("Executing: {0} {1}", executable, commandLine);
			var process = scope SpawnedProcess();
			var processStartInfo = scope ProcessStartInfo();
			processStartInfo.SetFileName(executable);
			processStartInfo.SetArguments(commandLine);
			switch (process.Start(processStartInfo)) {
			case .Ok:
				break;
			case .Err:
				return -1;
			}
			process.WaitFor();
			return process.ExitCode;
		}

		public static bool ReadBinaryFile(StringView filename, out uint8[] data)
		{
			data = null;
			var file = scope FileStream();
			switch (file.Open(filename, FileAccess.Read)) {
			case .Ok:
				break;
			case .Err:
				return false;
			}
			data = new uint8[file.Length];
			file.TryRead(Span<uint8>(data));
			file.Close();
			return true;
		}

		public static DateTime GetLatestTimestamp(params StringView[] args)
		{
			var bestDateTime = DateTime();
			for (var arg in args)
			{
				switch (File.GetLastWriteTimeUtc(arg)) {
				case .Ok(let dt):
					if (dt > bestDateTime)
					{
						bestDateTime = dt;
					}
					break;
				default:
				}
			}
			return bestDateTime;
		}

		public static void NormalizePath(String path)
		{
			path.Replace("\\", "/");
			path.Replace("//", "/");
		}

		public static void FindFiles(StringView path, StringView what, ref List<String> foundFiles)
		{
			var searchPath = scope String();
			var fileName = scope String();
			searchPath.AppendF("{}/{}", path, what);
			var files = Directory.Enumerate(searchPath, .Directories | .Files);
			for (var file in files)
			{
				fileName.Clear();
				file.GetFilePath(fileName);
				if (file.IsDirectory)
				{
					FindFiles(fileName, what, ref foundFiles);
				} else
				{
					var foundFileName = new String(fileName);
					Utils.NormalizePath(foundFileName);
					foundFiles.Add(foundFileName);
				}
			}
		}

		public static void SHA256ToString(SHA256Hash hash, String s)
		{
			for (var h in hash.mHash)
			{
				s.AppendF("{0:X}", h);
			}
		}

		public static Rect GetCurveBounds(Span<Vector2> span) => GetCurveBounds(span[0], span[1], span[2], span[3]);

		public static Rect GetCurveBounds(Vector2 a, Vector2 b, Vector2 c, Vector2 d) => GetCurveBounds(a.x, a.y, b.x, b.y, c.x, c.y, d.x, d.y);

		public static Rect GetCurveBounds(float ax, float ay, float bx, float by, float cx, float cy, float dx, float dy)
		{
		        float minx = float.PositiveInfinity;
				float miny = float.PositiveInfinity;
		        float maxx = float.NegativeInfinity;
				float maxy = float.NegativeInfinity;

		        var tobx = bx - ax;  var toby = by - ay;  // directions
		        var tocx = cx - bx;  var tocy = cy - by;
		        var todx = dx - cx;  var tody = dy - cy;
		        var step = 1f/40f;      // precision
		        for(var d=0f; d<1.001; d+=step)
		        {
		            var px = ax +d*tobx;  var py = ay +d*toby;
		            var qx = bx +d*tocx;  var qy = by +d*tocy;
		            var rx = cx +d*todx;  var ry = cy +d*tody;
		            var toqx = qx - px;      var toqy = qy - py;
		            var torx = rx - qx;      var tory = ry - qy;

		            var sx = px +d*toqx;  var sy = py +d*toqy;
		            var tx = qx +d*torx;  var ty = qy +d*tory;
		            var totx = tx - sx;   var toty = ty - sy;

		            var x = sx + d*totx;  var y = sy + d*toty;                
		            minx = Math.Min(minx, x); miny = Math.Min(miny, y);
		            maxx = Math.Max(maxx, x); maxy = Math.Max(maxy, y);
		        }
			return .(minx, miny, maxx-minx, maxy-miny);
		}
	}
}
