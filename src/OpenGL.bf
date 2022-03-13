using System;
using Windows;

static class GL {
    public const uint32 RESCALE_NORMAL = 0x803A;
    public const uint32 PARAMETER_BUFFER_BINDING = 0x80EF;
    public const uint32 FRAMEBUFFER_DEFAULT = 0x8218;
    public const uint32 PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 0x8221;
    public const uint32 INDEX = 0x8222;
    public const uint32 LOSE_CONTEXT_ON_RESET = 0x8252;
    public const uint32 UNDEFINED_VERTEX = 0x8260;
    public const uint32 NO_RESET_NOTIFICATION = 0x8261;
    public const uint32 MANUAL_GENERATE_MIPMAP = 0x8294;
    public const uint32 FULL_SUPPORT = 0x82B7;
    public const uint32 CAVEAT_SUPPORT = 0x82B8;
    public const uint32 IMAGE_CLASS_4_X_32 = 0x82B9;
    public const uint32 IMAGE_CLASS_2_X_32 = 0x82BA;
    public const uint32 IMAGE_CLASS_1_X_32 = 0x82BB;
    public const uint32 IMAGE_CLASS_4_X_16 = 0x82BC;
    public const uint32 IMAGE_CLASS_2_X_16 = 0x82BD;
    public const uint32 IMAGE_CLASS_1_X_16 = 0x82BE;
    public const uint32 IMAGE_CLASS_4_X_8 = 0x82BF;
    public const uint32 IMAGE_CLASS_2_X_8 = 0x82C0;
    public const uint32 IMAGE_CLASS_1_X_8 = 0x82C1;
    public const uint32 IMAGE_CLASS_11_11_10 = 0x82C2;
    public const uint32 IMAGE_CLASS_10_10_10_2 = 0x82C3;
    public const uint32 VIEW_CLASS_128_BITS = 0x82C4;
    public const uint32 VIEW_CLASS_96_BITS = 0x82C5;
    public const uint32 VIEW_CLASS_64_BITS = 0x82C6;
    public const uint32 VIEW_CLASS_48_BITS = 0x82C7;
    public const uint32 VIEW_CLASS_32_BITS = 0x82C8;
    public const uint32 VIEW_CLASS_24_BITS = 0x82C9;
    public const uint32 VIEW_CLASS_16_BITS = 0x82CA;
    public const uint32 VIEW_CLASS_8_BITS = 0x82CB;
    public const uint32 VIEW_CLASS_S3TC_DXT1_RGB = 0x82CC;
    public const uint32 VIEW_CLASS_S3TC_DXT1_RGBA = 0x82CD;
    public const uint32 VIEW_CLASS_S3TC_DXT3_RGBA = 0x82CE;
    public const uint32 VIEW_CLASS_S3TC_DXT5_RGBA = 0x82CF;
    public const uint32 VIEW_CLASS_RGTC1_RED = 0x82D0;
    public const uint32 VIEW_CLASS_RGTC2_RG = 0x82D1;
    public const uint32 VIEW_CLASS_BPTC_UNORM = 0x82D2;
    public const uint32 VIEW_CLASS_BPTC_FLOAT = 0x82D3;
    public const uint32 DISPLAY_LIST = 0x82E7;
    public const uint32 NUM_SHADING_LANGUAGE_VERSIONS = 0x82E9;
    public const uint32 TRANSFORM_FEEDBACK_STREAM_OVERFLOW = 0x82ED;
    public const uint32 TESS_CONTROL_SHADER_PATCHES = 0x82F1;
    public const uint32 TESS_EVALUATION_SHADER_INVOCATIONS = 0x82F2;
    public const uint32 GEOMETRY_SHADER_PRIMITIVES_EMITTED = 0x82F3;
    public const uint32 FRAGMENT_SHADER_INVOCATIONS = 0x82F4;
    public const uint32 COMPUTE_SHADER_INVOCATIONS = 0x82F5;
    public const uint32 CLIPPING_INPUT_PRIMITIVES = 0x82F6;
    public const uint32 CLIPPING_OUTPUT_PRIMITIVES = 0x82F7;
    public const uint32 CONTEXT_RELEASE_BEHAVIOR = 0x82FB;
    public const uint32 CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x82FC;
    public const uint32 FOG_COORDINATE_SOURCE = 0x8450;
    public const uint32 FOG_COORDINATE = 0x8451;
    public const uint32 FOG_COORD = 0x8451;
    public const uint32 FRAGMENT_DEPTH = 0x8452;
    public const uint32 CURRENT_FOG_COORDINATE = 0x8453;
    public const uint32 CURRENT_FOG_COORD = 0x8453;
    public const uint32 FOG_COORDINATE_ARRAY_TYPE = 0x8454;
    public const uint32 FOG_COORD_ARRAY_TYPE = 0x8454;
    public const uint32 FOG_COORDINATE_ARRAY_STRIDE = 0x8455;
    public const uint32 FOG_COORD_ARRAY_STRIDE = 0x8455;
    public const uint32 FOG_COORDINATE_ARRAY_POINTER = 0x8456;
    public const uint32 FOG_COORD_ARRAY_POINTER = 0x8456;
    public const uint32 FOG_COORDINATE_ARRAY = 0x8457;
    public const uint32 FOG_COORD_ARRAY = 0x8457;
    public const uint32 COLOR_SUM = 0x8458;
    public const uint32 CURRENT_SECONDARY_COLOR = 0x8459;
    public const uint32 SECONDARY_COLOR_ARRAY_SIZE = 0x845A;
    public const uint32 SECONDARY_COLOR_ARRAY_TYPE = 0x845B;
    public const uint32 SECONDARY_COLOR_ARRAY_STRIDE = 0x845C;
    public const uint32 SECONDARY_COLOR_ARRAY_POINTER = 0x845D;
    public const uint32 SECONDARY_COLOR_ARRAY = 0x845E;
    public const uint32 CURRENT_RASTER_SECONDARY_COLOR = 0x845F;
    public const uint32 CLIENT_ACTIVE_TEXTURE = 0x84E1;
    public const uint32 MAX_TEXTURE_UNITS = 0x84E2;
    public const uint32 TRANSPOSE_MODELVIEW_MATRIX = 0x84E3;
    public const uint32 TRANSPOSE_PROJECTION_MATRIX = 0x84E4;
    public const uint32 TRANSPOSE_TEXTURE_MATRIX = 0x84E5;
    public const uint32 TRANSPOSE_COLOR_MATRIX = 0x84E6;
    public const uint32 SUBTRACT = 0x84E7;
    public const uint32 COMPRESSED_ALPHA = 0x84E9;
    public const uint32 COMPRESSED_LUMINANCE = 0x84EA;
    public const uint32 COMPRESSED_LUMINANCE_ALPHA = 0x84EB;
    public const uint32 COMPRESSED_INTENSITY = 0x84EC;
    public const uint32 MAX_TEXTURE_MAX_ANISOTROPY = 0x84FF;
    public const uint32 TEXTURE_FILTER_CONTROL = 0x8500;
    public const uint32 NORMAL_MAP = 0x8511;
    public const uint32 REFLECTION_MAP = 0x8512;
    public const uint32 VERTEX_PROGRAM_TWO_SIDE = 0x8643;
    public const uint32 DOT3_RGB = 0x86AE;
    public const uint32 DOT3_RGBA = 0x86AF;
    public const uint32 DRAW_BUFFER0 = 0x8825;
    public const uint32 DRAW_BUFFER1 = 0x8826;
    public const uint32 DRAW_BUFFER2 = 0x8827;
    public const uint32 DRAW_BUFFER3 = 0x8828;
    public const uint32 DRAW_BUFFER4 = 0x8829;
    public const uint32 DRAW_BUFFER5 = 0x882A;
    public const uint32 DRAW_BUFFER6 = 0x882B;
    public const uint32 DRAW_BUFFER7 = 0x882C;
    public const uint32 DRAW_BUFFER8 = 0x882D;
    public const uint32 DRAW_BUFFER9 = 0x882E;
    public const uint32 DRAW_BUFFER10 = 0x882F;
    public const uint32 DRAW_BUFFER11 = 0x8830;
    public const uint32 DRAW_BUFFER12 = 0x8831;
    public const uint32 DRAW_BUFFER13 = 0x8832;
    public const uint32 DRAW_BUFFER14 = 0x8833;
    public const uint32 DRAW_BUFFER15 = 0x8834;
    public const uint32 DEPTH_TEXTURE_MODE = 0x884B;
    public const uint32 POINT_SPRITE = 0x8861;
    public const uint32 COORD_REPLACE = 0x8862;
    public const uint32 MAX_TEXTURE_COORDS = 0x8871;
    public const uint32 VERTEX_ARRAY_BUFFER_BINDING = 0x8896;
    public const uint32 NORMAL_ARRAY_BUFFER_BINDING = 0x8897;
    public const uint32 COLOR_ARRAY_BUFFER_BINDING = 0x8898;
    public const uint32 INDEX_ARRAY_BUFFER_BINDING = 0x8899;
    public const uint32 TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A;
    public const uint32 EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889B;
    public const uint32 SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C;
    public const uint32 FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889D;
    public const uint32 FOG_COORD_ARRAY_BUFFER_BINDING = 0x889D;
    public const uint32 WEIGHT_ARRAY_BUFFER_BINDING = 0x889E;
    public const uint32 CLAMP_VERTEX_COLOR = 0x891A;
    public const uint32 CLAMP_FRAGMENT_COLOR = 0x891B;
    public const uint32 TEXTURE_LUMINANCE_TYPE = 0x8C14;
    public const uint32 TEXTURE_INTENSITY_TYPE = 0x8C15;
    public const uint32 UNSIGNED_NORMALIZED = 0x8C17;
    public const uint32 SLUMINANCE_ALPHA = 0x8C44;
    public const uint32 SLUMINANCE8_ALPHA8 = 0x8C45;
    public const uint32 SLUMINANCE = 0x8C46;
    public const uint32 SLUMINANCE8 = 0x8C47;
    public const uint32 COMPRESSED_SLUMINANCE = 0x8C4A;
    public const uint32 COMPRESSED_SLUMINANCE_ALPHA = 0x8C4B;
    public const uint32 RGB565 = 0x8D62;
    public const uint32 ALPHA_INTEGER = 0x8D97;
    public const uint32 POLYGON_OFFSET_CLAMP = 0x8E1B;
    public const uint32 TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8E23;
    public const uint32 TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8E24;
    public const uint32 QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C;
    public const uint32 ISOLINES = 0x8E7A;
    public const uint32 FRACTIONAL_ODD = 0x8E7B;
    public const uint32 FRACTIONAL_EVEN = 0x8E7C;
    public const uint32 SIGNED_NORMALIZED = 0x8F9C;
    public const uint32 IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 0x90C8;
    public const uint32 IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 0x90C9;
    public const uint32 SYNC_FENCE = 0x9116;
    public const uint32 UNSIGNALED = 0x9118;
    public const uint32 SIGNALED = 0x9119;
    public const uint32 UNPACK_COMPRESSED_BLOCK_WIDTH = 0x9127;
    public const uint32 UNPACK_COMPRESSED_BLOCK_HEIGHT = 0x9128;
    public const uint32 UNPACK_COMPRESSED_BLOCK_DEPTH = 0x9129;
    public const uint32 UNPACK_COMPRESSED_BLOCK_SIZE = 0x912A;
    public const uint32 PACK_COMPRESSED_BLOCK_WIDTH = 0x912B;
    public const uint32 PACK_COMPRESSED_BLOCK_HEIGHT = 0x912C;
    public const uint32 PACK_COMPRESSED_BLOCK_DEPTH = 0x912D;
    public const uint32 PACK_COMPRESSED_BLOCK_SIZE = 0x912E;
    public const uint32 QUERY_BUFFER_BINDING = 0x9193;
    public const uint32 ATOMIC_COUNTER_BUFFER_START = 0x92C2;
    public const uint32 ATOMIC_COUNTER_BUFFER_SIZE = 0x92C3;
    public const uint32 SPIR_V_BINARY = 0x9552;
    public const uint32 SPIR_V_EXTENSIONS = 0x9553;
    public const uint32 NUM_SPIR_V_EXTENSIONS = 0x9554;
    [AllowDuplicates]
    public enum CullFaceMode : uint32 {
        case FRONT = 0x0404;
        case BACK = 0x0405;
        case FRONT_AND_BACK = 0x0408;
    }
    [AllowDuplicates]
    public enum PolygonMode : uint32 {
        case POINT = 0x1B00;
        case LINE = 0x1B01;
        case FILL = 0x1B02;
    }
    [AllowDuplicates]
    public enum AtomicCounterBufferPName : uint32 {
        case ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED;
        case ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92CB;
        case ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92C6;
        case ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92C7;
        case ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9;
        case ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8;
        case ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92C4;
        case ATOMIC_COUNTER_BUFFER_BINDING = 0x92C1;
        case ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92C5;
        case ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92CA;
    }
    [AllowDuplicates]
    public enum TextureEnvParameter : uint32 {
        case TEXTURE_ENV_MODE = 0x2200;
        case TEXTURE_ENV_COLOR = 0x2201;
    }
    [AllowDuplicates]
    public enum TransformFeedbackPName : uint32 {
        case TRANSFORM_FEEDBACK_ACTIVE = 0x8E24;
        case TRANSFORM_FEEDBACK_PAUSED = 0x8E23;
        case TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;
        case TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;
        case TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;
    }
    [AllowDuplicates]
    public enum GetPointervPName : uint32 {
        case DEBUG_CALLBACK_FUNCTION = 0x8244;
        case TEXTURE_COORD_ARRAY_POINTER = 0x8092;
        case SELECTION_BUFFER_POINTER = 0x0DF3;
        case COLOR_ARRAY_POINTER = 0x8090;
        case INDEX_ARRAY_POINTER = 0x8091;
        case EDGE_FLAG_ARRAY_POINTER = 0x8093;
        case NORMAL_ARRAY_POINTER = 0x808F;
        case VERTEX_ARRAY_POINTER = 0x808E;
        case FEEDBACK_BUFFER_POINTER = 0x0DF0;
        case DEBUG_CALLBACK_USER_PARAM = 0x8245;
    }
    [AllowDuplicates]
    public enum ColorTableTargetSGI : uint32 {
        case POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2;
        case PROXY_COLOR_TABLE = 0x80D3;
        case COLOR_TABLE = 0x80D0;
        case PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4;
        case PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5;
        case POST_CONVOLUTION_COLOR_TABLE = 0x80D1;
    }
    [AllowDuplicates]
    public enum VertexBufferObjectParameter : uint32 {
        case BUFFER_MAPPED = 0x88BC;
        case BUFFER_STORAGE_FLAGS = 0x8220;
        case BUFFER_SIZE = 0x8764;
        case BUFFER_USAGE = 0x8765;
        case BUFFER_MAP_OFFSET = 0x9121;
        case BUFFER_IMMUTABLE_STORAGE = 0x821F;
        case BUFFER_MAP_LENGTH = 0x9120;
        case BUFFER_ACCESS = 0x88BB;
        case BUFFER_ACCESS_FLAGS = 0x911F;
    }
    [AllowDuplicates]
    public enum FragmentLightParameterSGIX : uint32 {
        case CONSTANT_ATTENUATION = 0x1207;
        case LINEAR_ATTENUATION = 0x1208;
        case AMBIENT = 0x1200;
        case SPECULAR = 0x1202;
        case QUADRATIC_ATTENUATION = 0x1209;
        case SPOT_CUTOFF = 0x1206;
        case POSITION = 0x1203;
        case SPOT_DIRECTION = 0x1204;
        case DIFFUSE = 0x1201;
        case SPOT_EXPONENT = 0x1205;
    }
    [AllowDuplicates]
    public enum BufferPointerNameARB : uint32 {
        case BUFFER_MAP_POINTER = 0x88BD;
    }
    [AllowDuplicates]
    public enum PrimitiveType : uint32 {
        case LINE_LOOP = 0x0002;
        case LINE_STRIP_ADJACENCY = 0x000B;
        case LINE_STRIP = 0x0003;
        case PATCHES = 0x000E;
        case QUAD_STRIP = 0x0008;
        case TRIANGLES = 0x0004;
        case QUADS = 0x0007;
        case TRIANGLES_ADJACENCY = 0x000C;
        case TRIANGLE_STRIP_ADJACENCY = 0x000D;
        case POLYGON = 0x0009;
        case LINES_ADJACENCY = 0x000A;
        case TRIANGLE_FAN = 0x0006;
        case TRIANGLE_STRIP = 0x0005;
        case POINTS = 0x0000;
        case LINES = 0x0001;
    }
    [AllowDuplicates]
    public enum AttribMask : uint32 {
        case COLOR_BUFFER_BIT = 0x00004000;
        case TRANSFORM_BIT = 0x00001000;
        case ENABLE_BIT = 0x00002000;
        case MULTISAMPLE_BIT = 0x20000000;
        case FOG_BIT = 0x00000080;
        case TEXTURE_BIT = 0x00040000;
        case POLYGON_STIPPLE_BIT = 0x00000010;
        case ALL_ATTRIB_BITS = 0xFFFFFFFF;
        case ACCUM_BUFFER_BIT = 0x00000200;
        case LIST_BIT = 0x00020000;
        case VIEWPORT_BIT = 0x00000800;
        case EVAL_BIT = 0x00010000;
        case SCISSOR_BIT = 0x00080000;
        case STENCIL_BUFFER_BIT = 0x00000400;
        case HINT_BIT = 0x00008000;
        case LINE_BIT = 0x00000004;
        case LIGHTING_BIT = 0x00000040;
        case POINT_BIT = 0x00000002;
        case PIXEL_MODE_BIT = 0x00000020;
        case DEPTH_BUFFER_BIT = 0x00000100;
        case CURRENT_BIT = 0x00000001;
        case POLYGON_BIT = 0x00000008;
    }
    [AllowDuplicates]
    public enum LogicOp : uint32 {
        case XOR = 0x1506;
        case AND_INVERTED = 0x1504;
        case EQUIV = 0x1509;
        case COPY = 0x1503;
        case NAND = 0x150E;
        case SET = 0x150F;
        case CLEAR = 0x1500;
        case OR = 0x1507;
        case OR_REVERSE = 0x150B;
        case COPY_INVERTED = 0x150C;
        case NOR = 0x1508;
        case OR_INVERTED = 0x150D;
        case NOOP = 0x1505;
        case INVERT = 0x150A;
        case AND = 0x1501;
        case AND_REVERSE = 0x1502;
    }
    [AllowDuplicates]
    public enum QueryObjectParameterName : uint32 {
        case QUERY_RESULT_AVAILABLE = 0x8867;
        case QUERY_TARGET = 0x82EA;
        case QUERY_RESULT = 0x8866;
        case QUERY_RESULT_NO_WAIT = 0x9194;
    }
    [AllowDuplicates]
    public enum MemoryBarrierMask : uint32 {
        case QUERY_BUFFER_BARRIER_BIT = 0x00008000;
        case TEXTURE_FETCH_BARRIER_BIT = 0x00000008;
        case TRANSFORM_FEEDBACK_BARRIER_BIT = 0x00000800;
        case TEXTURE_UPDATE_BARRIER_BIT = 0x00000100;
        case ATOMIC_COUNTER_BARRIER_BIT = 0x00001000;
        case PIXEL_BUFFER_BARRIER_BIT = 0x00000080;
        case FRAMEBUFFER_BARRIER_BIT = 0x00000400;
        case SHADER_STORAGE_BARRIER_BIT = 0x00002000;
        case COMMAND_BARRIER_BIT = 0x00000040;
        case VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 0x00000001;
        case UNIFORM_BARRIER_BIT = 0x00000004;
        case CLIENT_MAPPED_BUFFER_BARRIER_BIT = 0x00004000;
        case BUFFER_UPDATE_BARRIER_BIT = 0x00000200;
        case ELEMENT_ARRAY_BARRIER_BIT = 0x00000002;
        case SHADER_IMAGE_ACCESS_BARRIER_BIT = 0x00000020;
        case ALL_BARRIER_BITS = 0xFFFFFFFF;
    }
    [AllowDuplicates]
    public enum VertexAttribEnum : uint32 {
        case VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
        case VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;
        case VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
        case CURRENT_VERTEX_ATTRIB = 0x8626;
        case VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
        case VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
        case VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
        case VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
        case VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
    }
    [AllowDuplicates]
    public enum MinmaxTarget : uint32 {
        case MINMAX = 0x802E;
    }
    [AllowDuplicates]
    public enum FramebufferAttachment : uint32 {
        case COLOR_ATTACHMENT15 = 0x8CEF;
        case COLOR_ATTACHMENT14 = 0x8CEE;
        case COLOR_ATTACHMENT17 = 0x8CF1;
        case COLOR_ATTACHMENT16 = 0x8CF0;
        case COLOR_ATTACHMENT0 = 0x8CE0;
        case COLOR_ATTACHMENT11 = 0x8CEB;
        case COLOR_ATTACHMENT10 = 0x8CEA;
        case COLOR_ATTACHMENT13 = 0x8CED;
        case COLOR_ATTACHMENT12 = 0x8CEC;
        case COLOR_ATTACHMENT4 = 0x8CE4;
        case COLOR_ATTACHMENT3 = 0x8CE3;
        case COLOR_ATTACHMENT2 = 0x8CE2;
        case COLOR_ATTACHMENT31 = 0x8CFF;
        case COLOR_ATTACHMENT1 = 0x8CE1;
        case COLOR_ATTACHMENT30 = 0x8CFE;
        case STENCIL_ATTACHMENT = 0x8D20;
        case COLOR_ATTACHMENT8 = 0x8CE8;
        case COLOR_ATTACHMENT7 = 0x8CE7;
        case COLOR_ATTACHMENT6 = 0x8CE6;
        case COLOR_ATTACHMENT5 = 0x8CE5;
        case COLOR_ATTACHMENT29 = 0x8CFD;
        case COLOR_ATTACHMENT26 = 0x8CFA;
        case COLOR_ATTACHMENT25 = 0x8CF9;
        case COLOR_ATTACHMENT28 = 0x8CFC;
        case COLOR_ATTACHMENT27 = 0x8CFB;
        case COLOR_ATTACHMENT22 = 0x8CF6;
        case COLOR_ATTACHMENT21 = 0x8CF5;
        case COLOR_ATTACHMENT24 = 0x8CF8;
        case DEPTH_ATTACHMENT = 0x8D00;
        case COLOR_ATTACHMENT23 = 0x8CF7;
        case COLOR_ATTACHMENT20 = 0x8CF4;
        case COLOR_ATTACHMENT9 = 0x8CE9;
        case COLOR_ATTACHMENT19 = 0x8CF3;
        case COLOR_ATTACHMENT18 = 0x8CF2;
    }
    [AllowDuplicates]
    public enum BlendingFactor : uint32 {
        case SRC_COLOR = 0x0300;
        case ONE_MINUS_SRC1_COLOR = 0x88FA;
        case SRC1_ALPHA = 0x8589;
        case CONSTANT_COLOR = 0x8001;
        case ONE_MINUS_SRC_COLOR = 0x0301;
        case ZERO = 0;
        case ONE = 1;
        case ONE_MINUS_SRC_ALPHA = 0x0303;
        case ONE_MINUS_DST_COLOR = 0x0307;
        case ONE_MINUS_CONSTANT_COLOR = 0x8002;
        case CONSTANT_ALPHA = 0x8003;
        case DST_ALPHA = 0x0304;
        case SRC1_COLOR = 0x88F9;
        case ONE_MINUS_SRC1_ALPHA = 0x88FB;
        case ONE_MINUS_DST_ALPHA = 0x0305;
        case ONE_MINUS_CONSTANT_ALPHA = 0x8004;
        case SRC_ALPHA = 0x0302;
        case DST_COLOR = 0x0306;
        case SRC_ALPHA_SATURATE = 0x0308;
    }
    [AllowDuplicates]
    public enum WeightPointerTypeARB : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case BYTE = 0x1400;
        case INT = 0x1404;
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case SHORT = 0x1402;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum ClipControlOrigin : uint32 {
        case UPPER_LEFT = 0x8CA2;
        case LOWER_LEFT = 0x8CA1;
    }
    [AllowDuplicates]
    public enum LightEnvModeSGIX : uint32 {
        case MODULATE = 0x2100;
        case ADD = 0x0104;
        case REPLACE = 0x1E01;
    }
    [AllowDuplicates]
    public enum FrontFaceDirection : uint32 {
        case CW = 0x0900;
        case CCW = 0x0901;
    }
    [AllowDuplicates]
    public enum TextureCoordName : uint32 {
        case Q = 0x2003;
        case S = 0x2000;
        case R = 0x2002;
        case T = 0x2001;
    }
    [AllowDuplicates]
    public enum TextureGenMode : uint32 {
        case OBJECT_LINEAR = 0x2401;
        case SPHERE_MAP = 0x2402;
        case EYE_LINEAR = 0x2400;
    }
    [AllowDuplicates]
    public enum TextureGenParameter : uint32 {
        case OBJECT_PLANE = 0x2501;
        case TEXTURE_GEN_MODE = 0x2500;
        case EYE_PLANE = 0x2502;
    }
    [AllowDuplicates]
    public enum ClampColorTargetARB : uint32 {
        case CLAMP_READ_COLOR = 0x891C;
    }
    [AllowDuplicates]
    public enum DebugSource : uint32 {
        case DEBUG_SOURCE_API = 0x8246;
        case DEBUG_SOURCE_SHADER_COMPILER = 0x8248;
        case DEBUG_SOURCE_OTHER = 0x824B;
        case DEBUG_SOURCE_APPLICATION = 0x824A;
        case DONT_CARE = 0x1100;
        case DEBUG_SOURCE_WINDOW_SYSTEM = 0x8247;
        case DEBUG_SOURCE_THIRD_PARTY = 0x8249;
    }
    [AllowDuplicates]
    public enum FramebufferAttachmentParameterName : uint32 {
        case FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213;
        case FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
        case FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
        case FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8DA7;
        case FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214;
        case FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216;
        case FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;
        case FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
        case FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211;
        case FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217;
        case FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215;
        case FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212;
        case FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210;
        case FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
    }
    [AllowDuplicates]
    public enum PixelMap : uint32 {
        case PIXEL_MAP_B_TO_B = 0x0C78;
        case PIXEL_MAP_S_TO_S = 0x0C71;
        case PIXEL_MAP_I_TO_I = 0x0C70;
        case PIXEL_MAP_I_TO_R = 0x0C72;
        case PIXEL_MAP_I_TO_B = 0x0C74;
        case PIXEL_MAP_G_TO_G = 0x0C77;
        case PIXEL_MAP_I_TO_A = 0x0C75;
        case PIXEL_MAP_I_TO_G = 0x0C73;
        case PIXEL_MAP_A_TO_A = 0x0C79;
        case PIXEL_MAP_R_TO_R = 0x0C76;
    }
    [AllowDuplicates]
    public enum PrecisionType : uint32 {
        case MEDIUM_FLOAT = 0x8DF1;
        case HIGH_FLOAT = 0x8DF2;
        case LOW_FLOAT = 0x8DF0;
        case LOW_INT = 0x8DF3;
        case MEDIUM_INT = 0x8DF4;
        case HIGH_INT = 0x8DF5;
    }
    [AllowDuplicates]
    public enum ProgramResourceProperty : uint32 {
        case REFERENCED_BY_VERTEX_SHADER = 0x9306;
        case NAME_LENGTH = 0x92F9;
        case BUFFER_BINDING = 0x9302;
        case TOP_LEVEL_ARRAY_STRIDE = 0x930D;
        case MATRIX_STRIDE = 0x92FF;
        case REFERENCED_BY_GEOMETRY_SHADER = 0x9309;
        case UNIFORM = 0x92E1;
        case ACTIVE_VARIABLES = 0x9305;
        case ARRAY_STRIDE = 0x92FE;
        case BUFFER_DATA_SIZE = 0x9303;
        case REFERENCED_BY_TESS_CONTROL_SHADER = 0x9307;
        case NUM_COMPATIBLE_SUBROUTINES = 0x8E4A;
        case ATOMIC_COUNTER_BUFFER_INDEX = 0x9301;
        case REFERENCED_BY_COMPUTE_SHADER = 0x930B;
        case BLOCK_INDEX = 0x92FD;
        case LOCATION = 0x930E;
        case OFFSET = 0x92FC;
        case IS_ROW_MAJOR = 0x9300;
        case TRANSFORM_FEEDBACK_BUFFER_INDEX = 0x934B;
        case TOP_LEVEL_ARRAY_SIZE = 0x930C;
        case TRANSFORM_FEEDBACK_BUFFER_STRIDE = 0x934C;
        case NUM_ACTIVE_VARIABLES = 0x9304;
        case REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308;
        case COMPATIBLE_SUBROUTINES = 0x8E4B;
        case LOCATION_INDEX = 0x930F;
        case LOCATION_COMPONENT = 0x934A;
        case TYPE = 0x92FA;
        case ARRAY_SIZE = 0x92FB;
        case IS_PER_PATCH = 0x92E7;
        case REFERENCED_BY_FRAGMENT_SHADER = 0x930A;
    }
    [AllowDuplicates]
    public enum FramebufferStatus : uint32 {
        case FRAMEBUFFER_COMPLETE = 0x8CD5;
        case FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
        case FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB;
        case FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
        case FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
        case FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC;
        case FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;
        case FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8DA8;
        case FRAMEBUFFER_UNDEFINED = 0x8219;
    }
    [AllowDuplicates]
    public enum VertexShaderWriteMaskEXT : uint32 {
        case TRUE = 1;
        case FALSE = 0;
    }
    [AllowDuplicates]
    public enum GetTextureParameter : uint32 {
        case TEXTURE_DEPTH_TYPE = 0x8C16;
        case TEXTURE_ALPHA_TYPE = 0x8C13;
        case TEXTURE_HEIGHT = 0x1001;
        case TEXTURE_STENCIL_SIZE = 0x88F1;
        case TEXTURE_VIEW_MIN_LEVEL = 0x82DB;
        case TEXTURE_IMMUTABLE_FORMAT = 0x912F;
        case TEXTURE_DEPTH_SIZE = 0x884A;
        case TEXTURE_SHARED_SIZE = 0x8C3F;
        case TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;
        case TEXTURE_BUFFER_OFFSET = 0x919D;
        case TEXTURE_RESIDENT = 0x8067;
        case TEXTURE_MIN_FILTER = 0x2801;
        case TEXTURE_BLUE_TYPE = 0x8C12;
        case TEXTURE_DEPTH = 0x8071;
        case TEXTURE_IMMUTABLE_LEVELS = 0x82DF;
        case TEXTURE_BORDER = 0x1005;
        case TEXTURE_LUMINANCE_SIZE = 0x8060;
        case TEXTURE_BLUE_SIZE = 0x805E;
        case TEXTURE_INTENSITY_SIZE = 0x8061;
        case TEXTURE_COMPONENTS = 0x1003;
        case TEXTURE_WIDTH = 0x1000;
        case TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107;
        case TEXTURE_TARGET = 0x1006;
        case TEXTURE_GREEN_SIZE = 0x805D;
        case TEXTURE_GREEN_TYPE = 0x8C11;
        case TEXTURE_VIEW_NUM_LAYERS = 0x82DE;
        case TEXTURE_BUFFER_SIZE = 0x919E;
        case TEXTURE_MAG_FILTER = 0x2800;
        case TEXTURE_WRAP_S = 0x2802;
        case TEXTURE_WRAP_T = 0x2803;
        case TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D;
        case TEXTURE_INTERNAL_FORMAT = 0x1003;
        case TEXTURE_RED_SIZE = 0x805C;
        case TEXTURE_PRIORITY = 0x8066;
        case TEXTURE_VIEW_NUM_LEVELS = 0x82DC;
        case TEXTURE_ALPHA_SIZE = 0x805F;
        case TEXTURE_RED_TYPE = 0x8C10;
        case TEXTURE_VIEW_MIN_LAYER = 0x82DD;
        case TEXTURE_BORDER_COLOR = 0x1004;
    }
    [AllowDuplicates]
    public enum ObjectIdentifier : uint32 {
        case VERTEX_ARRAY = 0x8074;
        case PROGRAM = 0x82E2;
        case SHADER = 0x82E1;
        case TRANSFORM_FEEDBACK = 0x8E22;
        case BUFFER = 0x82E0;
        case QUERY = 0x82E3;
        case FRAMEBUFFER = 0x8D40;
        case TEXTURE = 0x1702;
        case RENDERBUFFER = 0x8D41;
        case PROGRAM_PIPELINE = 0x82E4;
        case SAMPLER = 0x82E6;
    }
    [AllowDuplicates]
    public enum ClipControlDepth : uint32 {
        case ZERO_TO_ONE = 0x935F;
        case NEGATIVE_ONE_TO_ONE = 0x935E;
    }
    [AllowDuplicates]
    public enum ConvolutionTarget : uint32 {
        case CONVOLUTION_2D = 0x8011;
        case CONVOLUTION_1D = 0x8010;
    }
    [AllowDuplicates]
    public enum PathFontStyle : uint32 {
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum CopyImageSubDataTarget : uint32 {
        case TEXTURE_2D = 0x0DE1;
        case TEXTURE_1D_ARRAY = 0x8C18;
        case TEXTURE_1D = 0x0DE0;
        case TEXTURE_CUBE_MAP_ARRAY = 0x9009;
        case TEXTURE_RECTANGLE = 0x84F5;
        case TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9102;
        case TEXTURE_2D_ARRAY = 0x8C1A;
        case TEXTURE_2D_MULTISAMPLE = 0x9100;
        case RENDERBUFFER = 0x8D41;
        case TEXTURE_CUBE_MAP = 0x8513;
        case TEXTURE_3D = 0x806F;
    }
    [AllowDuplicates]
    public enum QueryCounterTarget : uint32 {
        case TIMESTAMP = 0x8E28;
    }
    [AllowDuplicates]
    public enum PatchParameterName : uint32 {
        case PATCH_VERTICES = 0x8E72;
        case PATCH_DEFAULT_OUTER_LEVEL = 0x8E74;
        case PATCH_DEFAULT_INNER_LEVEL = 0x8E73;
    }
    [AllowDuplicates]
    public enum ShaderType : uint32 {
        case VERTEX_SHADER = 0x8B31;
        case COMPUTE_SHADER = 0x91B9;
        case GEOMETRY_SHADER = 0x8DD9;
        case TESS_CONTROL_SHADER = 0x8E88;
        case FRAGMENT_SHADER = 0x8B30;
        case TESS_EVALUATION_SHADER = 0x8E87;
    }
    [AllowDuplicates]
    public enum FogCoordinatePointerType : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
    }
    [AllowDuplicates]
    public enum CombinerPortionNV : uint32 {
        case RGB = 0x1907;
        case ALPHA = 0x1906;
    }
    [AllowDuplicates]
    public enum HistogramTarget : uint32 {
        case PROXY_HISTOGRAM = 0x8025;
        case HISTOGRAM = 0x8024;
    }
    [AllowDuplicates]
    public enum TextureUnit : uint32 {
        case TEXTURE20 = 0x84D4;
        case TEXTURE19 = 0x84D3;
        case TEXTURE18 = 0x84D2;
        case TEXTURE17 = 0x84D1;
        case TEXTURE16 = 0x84D0;
        case TEXTURE15 = 0x84CF;
        case TEXTURE14 = 0x84CE;
        case TEXTURE13 = 0x84CD;
        case TEXTURE12 = 0x84CC;
        case TEXTURE11 = 0x84CB;
        case TEXTURE10 = 0x84CA;
        case TEXTURE31 = 0x84DF;
        case TEXTURE30 = 0x84DE;
        case TEXTURE0 = 0x84C0;
        case TEXTURE4 = 0x84C4;
        case TEXTURE3 = 0x84C3;
        case TEXTURE2 = 0x84C2;
        case TEXTURE1 = 0x84C1;
        case TEXTURE8 = 0x84C8;
        case TEXTURE7 = 0x84C7;
        case TEXTURE6 = 0x84C6;
        case TEXTURE5 = 0x84C5;
        case TEXTURE29 = 0x84DD;
        case TEXTURE28 = 0x84DC;
        case TEXTURE27 = 0x84DB;
        case TEXTURE26 = 0x84DA;
        case TEXTURE9 = 0x84C9;
        case TEXTURE25 = 0x84D9;
        case TEXTURE24 = 0x84D8;
        case TEXTURE23 = 0x84D7;
        case TEXTURE22 = 0x84D6;
        case TEXTURE21 = 0x84D5;
    }
    [AllowDuplicates]
    public enum PathFillMode : uint32 {
        case INVERT = 0x150A;
    }
    [AllowDuplicates]
    public enum BindTransformFeedbackTarget : uint32 {
        case TRANSFORM_FEEDBACK = 0x8E22;
    }
    [AllowDuplicates]
    public enum CombinerComponentUsageNV : uint32 {
        case BLUE = 0x1905;
        case RGB = 0x1907;
        case ALPHA = 0x1906;
    }
    [AllowDuplicates]
    public enum FeedbackType : uint32 {
        case _2D = 0x0600;
        case _3D_COLOR_TEXTURE = 0x0603;
        case _3D = 0x0601;
        case _3D_COLOR = 0x0602;
        case _4D_COLOR_TEXTURE = 0x0604;
    }
    [AllowDuplicates]
    public enum TransformFeedbackBufferMode : uint32 {
        case INTERLEAVED_ATTRIBS = 0x8C8C;
        case SEPARATE_ATTRIBS = 0x8C8D;
    }
    [AllowDuplicates]
    public enum AttributeType : uint32 {
        case IMAGE_1D_ARRAY = 0x9052;
        case IMAGE_3D = 0x904E;
        case SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910B;
        case UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
        case INT_IMAGE_2D_RECT = 0x905A;
        case UNSIGNED_INT_VEC4 = 0x8DC8;
        case UNSIGNED_INT = 0x1405;
        case INT_SAMPLER_1D_ARRAY = 0x8DCE;
        case INT_SAMPLER_2D_ARRAY = 0x8DCF;
        case INT_IMAGE_CUBE = 0x905B;
        case IMAGE_2D_ARRAY = 0x9053;
        case IMAGE_2D_MULTISAMPLE_ARRAY = 0x9056;
        case INT_SAMPLER_CUBE_MAP_ARRAY = 0x900E;
        case INT_SAMPLER_BUFFER = 0x8DD0;
        case UNSIGNED_INT_IMAGE_1D_ARRAY = 0x9068;
        case FLOAT_MAT3x4 = 0x8B68;
        case UNSIGNED_INT_SAMPLER_1D = 0x8DD1;
        case INT_IMAGE_2D_ARRAY = 0x905E;
        case FLOAT_MAT3x2 = 0x8B67;
        case IMAGE_BUFFER = 0x9051;
        case BOOL_VEC4 = 0x8B59;
        case BOOL_VEC3 = 0x8B58;
        case INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061;
        case UNSIGNED_INT_IMAGE_BUFFER = 0x9067;
        case BOOL_VEC2 = 0x8B57;
        case UNSIGNED_INT_VEC3 = 0x8DC7;
        case UNSIGNED_INT_VEC2 = 0x8DC6;
        case SAMPLER_CUBE_SHADOW = 0x8DC5;
        case SAMPLER_BUFFER = 0x8DC2;
        case UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906B;
        case UNSIGNED_INT_IMAGE_2D = 0x9063;
        case UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906A;
        case UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8;
        case UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906C;
        case FLOAT_MAT4 = 0x8B5C;
        case FLOAT_MAT3 = 0x8B5B;
        case FLOAT_MAT2 = 0x8B5A;
        case UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5;
        case UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A;
        case SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
        case INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C;
        case UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
        case IMAGE_2D_RECT = 0x904F;
        case UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F;
        case UNSIGNED_INT_IMAGE_2D_RECT = 0x9065;
        case INT_IMAGE_BUFFER = 0x905C;
        case INT_SAMPLER_1D = 0x8DC9;
        case SAMPLER_1D_SHADOW = 0x8B61;
        case UNSIGNED_INT_IMAGE_1D = 0x9062;
        case UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
        case UNSIGNED_INT_IMAGE_2D_ARRAY = 0x9069;
        case FLOAT_MAT4x3 = 0x8B6A;
        case DOUBLE_VEC4 = 0x8FFE;
        case DOUBLE_VEC3 = 0x8FFD;
        case SAMPLER_2D_MULTISAMPLE = 0x9108;
        case FLOAT_MAT4x2 = 0x8B69;
        case DOUBLE_VEC2 = 0x8FFC;
        case INT_SAMPLER_CUBE = 0x8DCC;
        case INT_IMAGE_2D_MULTISAMPLE = 0x9060;
        case DOUBLE_MAT2x4 = 0x8F4A;
        case INT_IMAGE_1D_ARRAY = 0x905D;
        case DOUBLE_MAT2x3 = 0x8F49;
        case INT_SAMPLER_2D_MULTISAMPLE = 0x9109;
        case INT_VEC4 = 0x8B55;
        case INT_VEC2 = 0x8B53;
        case INT_VEC3 = 0x8B54;
        case SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900D;
        case FLOAT = 0x1406;
        case SAMPLER_2D_RECT_SHADOW = 0x8B64;
        case INT_SAMPLER_3D = 0x8DCB;
        case UNSIGNED_INT_IMAGE_CUBE = 0x9066;
        case SAMPLER_2D_SHADOW = 0x8B62;
        case DOUBLE = 0x140A;
        case UNSIGNED_INT_IMAGE_3D = 0x9064;
        case SAMPLER_3D = 0x8B5F;
        case DOUBLE_MAT4 = 0x8F48;
        case DOUBLE_MAT3x4 = 0x8F4C;
        case DOUBLE_MAT3x2 = 0x8F4B;
        case INT_SAMPLER_2D = 0x8DCA;
        case SAMPLER_1D_ARRAY_SHADOW = 0x8DC3;
        case UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D;
        case DOUBLE_MAT3 = 0x8F47;
        case DOUBLE_MAT2 = 0x8F46;
        case IMAGE_CUBE_MAP_ARRAY = 0x9054;
        case INT_IMAGE_CUBE_MAP_ARRAY = 0x905F;
        case UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
        case IMAGE_CUBE = 0x9050;
        case SAMPLER_2D = 0x8B5E;
        case INT_IMAGE_1D = 0x9057;
        case SAMPLER_CUBE_MAP_ARRAY = 0x900C;
        case UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6;
        case IMAGE_2D_MULTISAMPLE = 0x9055;
        case IMAGE_1D = 0x904C;
        case BOOL = 0x8B56;
        case SAMPLER_CUBE = 0x8B60;
        case FLOAT_MAT2x3 = 0x8B65;
        case FLOAT_MAT2x4 = 0x8B66;
        case INT_IMAGE_3D = 0x9059;
        case INT_IMAGE_2D = 0x9058;
        case SAMPLER_2D_RECT = 0x8B63;
        case INT_SAMPLER_2D_RECT = 0x8DCD;
        case DOUBLE_MAT4x2 = 0x8F4D;
        case DOUBLE_MAT4x3 = 0x8F4E;
        case INT = 0x1404;
        case SAMPLER_1D = 0x8B5D;
        case FLOAT_VEC2 = 0x8B50;
        case IMAGE_2D = 0x904D;
        case FLOAT_VEC4 = 0x8B52;
        case FLOAT_VEC3 = 0x8B51;
    }
    [AllowDuplicates]
    public enum ReadBufferMode : uint32 {
        case COLOR_ATTACHMENT15 = 0x8CEF;
        case COLOR_ATTACHMENT14 = 0x8CEE;
        case AUX0 = 0x0409;
        case AUX1 = 0x040A;
        case COLOR_ATTACHMENT0 = 0x8CE0;
        case COLOR_ATTACHMENT11 = 0x8CEB;
        case FRONT = 0x0404;
        case COLOR_ATTACHMENT10 = 0x8CEA;
        case COLOR_ATTACHMENT13 = 0x8CED;
        case FRONT_RIGHT = 0x0401;
        case COLOR_ATTACHMENT12 = 0x8CEC;
        case LEFT = 0x0406;
        case COLOR_ATTACHMENT4 = 0x8CE4;
        case COLOR_ATTACHMENT3 = 0x8CE3;
        case COLOR_ATTACHMENT2 = 0x8CE2;
        case COLOR_ATTACHMENT1 = 0x8CE1;
        case AUX2 = 0x040B;
        case COLOR_ATTACHMENT8 = 0x8CE8;
        case AUX3 = 0x040C;
        case COLOR_ATTACHMENT7 = 0x8CE7;
        case COLOR_ATTACHMENT6 = 0x8CE6;
        case COLOR_ATTACHMENT5 = 0x8CE5;
        case BACK_LEFT = 0x0402;
        case BACK_RIGHT = 0x0403;
        case FRONT_LEFT = 0x0400;
        case BACK = 0x0405;
        case RIGHT = 0x0407;
        case COLOR_ATTACHMENT9 = 0x8CE9;
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum SyncCondition : uint32 {
        case SYNC_GPU_COMMANDS_COMPLETE = 0x9117;
    }
    [AllowDuplicates]
    public enum InternalFormatPName : uint32 {
        case TEXTURE_COMPRESSED_BLOCK_HEIGHT = 0x82B2;
        case READ_PIXELS_TYPE = 0x828E;
        case TEXTURE_GATHER = 0x82A2;
        case INTERNALFORMAT_RED_TYPE = 0x8278;
        case INTERNALFORMAT_BLUE_SIZE = 0x8273;
        case IMAGE_PIXEL_TYPE = 0x82AA;
        case INTERNALFORMAT_ALPHA_TYPE = 0x827B;
        case FRAGMENT_TEXTURE = 0x829F;
        case STENCIL_RENDERABLE = 0x8288;
        case SHADER_IMAGE_ATOMIC = 0x82A6;
        case TESS_CONTROL_TEXTURE = 0x829C;
        case MAX_HEIGHT = 0x827F;
        case DEPTH_COMPONENTS = 0x8284;
        case TEXTURE_VIEW = 0x82B5;
        case MAX_LAYERS = 0x8281;
        case TEXTURE_IMAGE_TYPE = 0x8290;
        case STENCIL_COMPONENTS = 0x8285;
        case DEPTH_RENDERABLE = 0x8287;
        case SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 0x82AE;
        case COLOR_RENDERABLE = 0x8286;
        case INTERNALFORMAT_GREEN_SIZE = 0x8272;
        case VIEW_COMPATIBILITY_CLASS = 0x82B6;
        case TESS_EVALUATION_TEXTURE = 0x829D;
        case READ_PIXELS = 0x828C;
        case FRAMEBUFFER_RENDERABLE = 0x8289;
        case TEXTURE_GATHER_SHADOW = 0x82A3;
        case INTERNALFORMAT_SUPPORTED = 0x826F;
        case NUM_SAMPLE_COUNTS = 0x9380;
        case INTERNALFORMAT_STENCIL_TYPE = 0x827D;
        case GENERATE_MIPMAP = 0x8191;
        case INTERNALFORMAT_DEPTH_TYPE = 0x827C;
        case SHADER_IMAGE_LOAD = 0x82A4;
        case SHADER_IMAGE_STORE = 0x82A5;
        case IMAGE_FORMAT_COMPATIBILITY_TYPE = 0x90C7;
        case TEXTURE_IMAGE_FORMAT = 0x828F;
        case SAMPLES = 0x80A9;
        case FRAMEBUFFER_BLEND = 0x828B;
        case VERTEX_TEXTURE = 0x829B;
        case MAX_DEPTH = 0x8280;
        case MAX_WIDTH = 0x827E;
        case SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 0x82AC;
        case INTERNALFORMAT_PREFERRED = 0x8270;
        case GET_TEXTURE_IMAGE_FORMAT = 0x8291;
        case FILTER = 0x829A;
        case INTERNALFORMAT_ALPHA_SIZE = 0x8274;
        case MAX_COMBINED_DIMENSIONS = 0x8282;
        case TEXTURE_COMPRESSED_BLOCK_SIZE = 0x82B3;
        case TEXTURE_SHADOW = 0x82A1;
        case AUTO_GENERATE_MIPMAP = 0x8295;
        case COMPUTE_TEXTURE = 0x82A0;
        case COLOR_ENCODING = 0x8296;
        case IMAGE_PIXEL_FORMAT = 0x82A9;
        case INTERNALFORMAT_BLUE_TYPE = 0x827A;
        case SRGB_WRITE = 0x8298;
        case INTERNALFORMAT_GREEN_TYPE = 0x8279;
        case FRAMEBUFFER_RENDERABLE_LAYERED = 0x828A;
        case TEXTURE_COMPRESSED = 0x86A1;
        case SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 0x82AD;
        case INTERNALFORMAT_SHARED_SIZE = 0x8277;
        case GEOMETRY_TEXTURE = 0x829E;
        case COLOR_COMPONENTS = 0x8283;
        case INTERNALFORMAT_STENCIL_SIZE = 0x8276;
        case MIPMAP = 0x8293;
        case IMAGE_COMPATIBILITY_CLASS = 0x82A8;
        case INTERNALFORMAT_DEPTH_SIZE = 0x8275;
        case CLEAR_BUFFER = 0x82B4;
        case CLEAR_TEXTURE = 0x9365;
        case READ_PIXELS_FORMAT = 0x828D;
        case SRGB_READ = 0x8297;
        case SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 0x82AF;
        case TEXTURE_COMPRESSED_BLOCK_WIDTH = 0x82B1;
        case GET_TEXTURE_IMAGE_TYPE = 0x8292;
        case INTERNALFORMAT_RED_SIZE = 0x8271;
        case IMAGE_TEXEL_SIZE = 0x82A7;
    }
    [AllowDuplicates]
    public enum SecondaryColorPointerTypeIBM : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case INT = 0x1404;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum SyncBehaviorFlags : uint32 {
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum SyncStatus : uint32 {
        case TIMEOUT_EXPIRED = 0x911B;
        case CONDITION_SATISFIED = 0x911C;
        case ALREADY_SIGNALED = 0x911A;
        case WAIT_FAILED = 0x911D;
    }
    [AllowDuplicates]
    public enum FogPName : uint32 {
        case FOG_END = 0x0B64;
        case FOG_DENSITY = 0x0B62;
        case FOG_INDEX = 0x0B61;
        case FOG_START = 0x0B63;
        case FOG_MODE = 0x0B65;
        case FOG_COORD_SRC = 0x8450;
    }
    [AllowDuplicates]
    public enum ProgramInterface : uint32 {
        case COMPUTE_SUBROUTINE_UNIFORM = 0x92F3;
        case PROGRAM_OUTPUT = 0x92E4;
        case SHADER_STORAGE_BLOCK = 0x92E6;
        case VERTEX_SUBROUTINE = 0x92E8;
        case TESS_EVALUATION_SUBROUTINE = 0x92EA;
        case TESS_EVALUATION_SUBROUTINE_UNIFORM = 0x92F0;
        case FRAGMENT_SUBROUTINE_UNIFORM = 0x92F2;
        case UNIFORM = 0x92E1;
        case TESS_CONTROL_SUBROUTINE_UNIFORM = 0x92EF;
        case TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
        case FRAGMENT_SUBROUTINE = 0x92EC;
        case COMPUTE_SUBROUTINE = 0x92ED;
        case TRANSFORM_FEEDBACK_VARYING = 0x92F4;
        case VERTEX_SUBROUTINE_UNIFORM = 0x92EE;
        case PROGRAM_INPUT = 0x92E3;
        case GEOMETRY_SUBROUTINE_UNIFORM = 0x92F1;
        case BUFFER_VARIABLE = 0x92E5;
        case UNIFORM_BLOCK = 0x92E2;
        case TESS_CONTROL_SUBROUTINE = 0x92E9;
        case GEOMETRY_SUBROUTINE = 0x92EB;
    }
    [AllowDuplicates]
    public enum PointParameterNameSGIS : uint32 {
        case POINT_SIZE_MAX = 0x8127;
        case POINT_FADE_THRESHOLD_SIZE = 0x8128;
        case POINT_SIZE_MIN = 0x8126;
        case POINT_DISTANCE_ATTENUATION = 0x8129;
    }
    [AllowDuplicates]
    public enum slTypeToken : uint32 {
        case IMAGE_1D_ARRAY = 0x9052;
        case IMAGE_3D = 0x904E;
        case SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910B;
        case UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
        case INT_IMAGE_2D_RECT = 0x905A;
        case UNSIGNED_INT_VEC4 = 0x8DC8;
        case UNSIGNED_INT = 0x1405;
        case INT_SAMPLER_1D_ARRAY = 0x8DCE;
        case INT_SAMPLER_2D_ARRAY = 0x8DCF;
        case INT_IMAGE_CUBE = 0x905B;
        case SAMPLER_2D_ARRAY = 0x8DC1;
        case SAMPLER_1D_ARRAY = 0x8DC0;
        case IMAGE_2D_ARRAY = 0x9053;
        case IMAGE_2D_MULTISAMPLE_ARRAY = 0x9056;
        case INT_SAMPLER_CUBE_MAP_ARRAY = 0x900E;
        case INT_SAMPLER_BUFFER = 0x8DD0;
        case UNSIGNED_INT_IMAGE_1D_ARRAY = 0x9068;
        case FLOAT_MAT3x4 = 0x8B68;
        case UNSIGNED_INT_SAMPLER_1D = 0x8DD1;
        case INT_IMAGE_2D_ARRAY = 0x905E;
        case FLOAT_MAT3x2 = 0x8B67;
        case IMAGE_BUFFER = 0x9051;
        case BOOL_VEC4 = 0x8B59;
        case BOOL_VEC3 = 0x8B58;
        case INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061;
        case UNSIGNED_INT_IMAGE_BUFFER = 0x9067;
        case BOOL_VEC2 = 0x8B57;
        case UNSIGNED_INT_VEC3 = 0x8DC7;
        case UNSIGNED_INT_VEC2 = 0x8DC6;
        case SAMPLER_CUBE_SHADOW = 0x8DC5;
        case SAMPLER_BUFFER = 0x8DC2;
        case UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906B;
        case UNSIGNED_INT_IMAGE_2D = 0x9063;
        case UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906A;
        case UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8;
        case UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906C;
        case FLOAT_MAT4 = 0x8B5C;
        case FLOAT_MAT3 = 0x8B5B;
        case FLOAT_MAT2 = 0x8B5A;
        case UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5;
        case UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A;
        case SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
        case INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C;
        case UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
        case IMAGE_2D_RECT = 0x904F;
        case UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F;
        case UNSIGNED_INT_IMAGE_2D_RECT = 0x9065;
        case INT_IMAGE_BUFFER = 0x905C;
        case INT_SAMPLER_1D = 0x8DC9;
        case UNSIGNED_INT_ATOMIC_COUNTER = 0x92DB;
        case SAMPLER_1D_SHADOW = 0x8B61;
        case UNSIGNED_INT_IMAGE_1D = 0x9062;
        case UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
        case UNSIGNED_INT_IMAGE_2D_ARRAY = 0x9069;
        case FLOAT_MAT4x3 = 0x8B6A;
        case DOUBLE_VEC4 = 0x8FFE;
        case DOUBLE_VEC3 = 0x8FFD;
        case SAMPLER_2D_MULTISAMPLE = 0x9108;
        case FLOAT_MAT4x2 = 0x8B69;
        case DOUBLE_VEC2 = 0x8FFC;
        case INT_SAMPLER_CUBE = 0x8DCC;
        case INT_IMAGE_2D_MULTISAMPLE = 0x9060;
        case INT_IMAGE_1D_ARRAY = 0x905D;
        case INT_SAMPLER_2D_MULTISAMPLE = 0x9109;
        case INT_VEC4 = 0x8B55;
        case INT_VEC2 = 0x8B53;
        case INT_VEC3 = 0x8B54;
        case SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900D;
        case FLOAT = 0x1406;
        case SAMPLER_2D_RECT_SHADOW = 0x8B64;
        case INT_SAMPLER_3D = 0x8DCB;
        case UNSIGNED_INT_IMAGE_CUBE = 0x9066;
        case SAMPLER_2D_SHADOW = 0x8B62;
        case DOUBLE = 0x140A;
        case UNSIGNED_INT_IMAGE_3D = 0x9064;
        case SAMPLER_3D = 0x8B5F;
        case DOUBLE_MAT4 = 0x8F48;
        case INT_SAMPLER_2D = 0x8DCA;
        case SAMPLER_1D_ARRAY_SHADOW = 0x8DC3;
        case UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D;
        case DOUBLE_MAT3 = 0x8F47;
        case DOUBLE_MAT2 = 0x8F46;
        case IMAGE_CUBE_MAP_ARRAY = 0x9054;
        case INT_IMAGE_CUBE_MAP_ARRAY = 0x905F;
        case UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
        case IMAGE_CUBE = 0x9050;
        case SAMPLER_2D = 0x8B5E;
        case INT_IMAGE_1D = 0x9057;
        case SAMPLER_CUBE_MAP_ARRAY = 0x900C;
        case UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6;
        case IMAGE_2D_MULTISAMPLE = 0x9055;
        case IMAGE_1D = 0x904C;
        case BOOL = 0x8B56;
        case SAMPLER_CUBE = 0x8B60;
        case FLOAT_MAT2x3 = 0x8B65;
        case FLOAT_MAT2x4 = 0x8B66;
        case INT_IMAGE_3D = 0x9059;
        case INT_IMAGE_2D = 0x9058;
        case SAMPLER_2D_RECT = 0x8B63;
        case INT_SAMPLER_2D_RECT = 0x8DCD;
        case INT = 0x1404;
        case SAMPLER_1D = 0x8B5D;
        case FLOAT_VEC2 = 0x8B50;
        case IMAGE_2D = 0x904D;
        case FLOAT_VEC4 = 0x8B52;
        case FLOAT_VEC3 = 0x8B51;
    }
    [AllowDuplicates]
    public enum DepthFunction : uint32 {
        case EQUAL = 0x0202;
        case GREATER = 0x0204;
        case LEQUAL = 0x0203;
        case NEVER = 0x0200;
        case GEQUAL = 0x0206;
        case LESS = 0x0201;
        case NOTEQUAL = 0x0205;
        case ALWAYS = 0x0207;
    }
    [AllowDuplicates]
    public enum PathTransformType : uint32 {
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum QueryTarget : uint32 {
        case PRIMITIVES_SUBMITTED = 0x82EF;
        case ANY_SAMPLES_PASSED = 0x8C2F;
        case ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A;
        case PRIMITIVES_GENERATED = 0x8C87;
        case TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88;
        case VERTEX_SHADER_INVOCATIONS = 0x82F0;
        case TIME_ELAPSED = 0x88BF;
        case VERTICES_SUBMITTED = 0x82EE;
        case SAMPLES_PASSED = 0x8914;
        case TRANSFORM_FEEDBACK_OVERFLOW = 0x82EC;
    }
    [AllowDuplicates]
    public enum GetMultisamplePNameNV : uint32 {
        case SAMPLE_POSITION = 0x8E50;
    }
    [AllowDuplicates]
    public enum IndexPointerType : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case INT = 0x1404;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum VertexPointerType : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case INT = 0x1404;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum CheckFramebufferStatusTarget : uint32 {
        case DRAW_FRAMEBUFFER = 0x8CA9;
        case READ_FRAMEBUFFER = 0x8CA8;
        case FRAMEBUFFER = 0x8D40;
    }
    [AllowDuplicates]
    public enum UniformPName : uint32 {
        case UNIFORM_SIZE = 0x8A38;
        case UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92DA;
        case UNIFORM_MATRIX_STRIDE = 0x8A3D;
        case UNIFORM_TYPE = 0x8A37;
        case UNIFORM_OFFSET = 0x8A3B;
        case UNIFORM_ARRAY_STRIDE = 0x8A3C;
        case UNIFORM_IS_ROW_MAJOR = 0x8A3E;
        case UNIFORM_NAME_LENGTH = 0x8A39;
        case UNIFORM_BLOCK_INDEX = 0x8A3A;
    }
    [AllowDuplicates]
    public enum GetFramebufferParameter : uint32 {
        case FRAMEBUFFER_DEFAULT_WIDTH = 0x9310;
        case FRAMEBUFFER_DEFAULT_HEIGHT = 0x9311;
        case FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314;
        case STEREO = 0x0C33;
        case SAMPLE_BUFFERS = 0x80A8;
        case FRAMEBUFFER_DEFAULT_LAYERS = 0x9312;
        case FRAMEBUFFER_DEFAULT_SAMPLES = 0x9313;
        case DOUBLEBUFFER = 0x0C32;
        case IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
        case SAMPLES = 0x80A9;
        case IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;
    }
    [AllowDuplicates]
    public enum BlendEquationModeEXT : uint32 {
        case MAX = 0x8008;
        case FUNC_ADD = 0x8006;
        case MIN = 0x8007;
        case FUNC_REVERSE_SUBTRACT = 0x800B;
        case FUNC_SUBTRACT = 0x800A;
    }
    [AllowDuplicates]
    public enum ProgramParameterPName : uint32 {
        case PROGRAM_SEPARABLE = 0x8258;
        case PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257;
    }
    [AllowDuplicates]
    public enum ScalarType : uint32 {
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum DrawBufferMode : uint32 {
        case COLOR_ATTACHMENT15 = 0x8CEF;
        case COLOR_ATTACHMENT14 = 0x8CEE;
        case AUX0 = 0x0409;
        case COLOR_ATTACHMENT17 = 0x8CF1;
        case AUX1 = 0x040A;
        case COLOR_ATTACHMENT16 = 0x8CF0;
        case COLOR_ATTACHMENT0 = 0x8CE0;
        case COLOR_ATTACHMENT11 = 0x8CEB;
        case FRONT = 0x0404;
        case COLOR_ATTACHMENT10 = 0x8CEA;
        case COLOR_ATTACHMENT13 = 0x8CED;
        case FRONT_RIGHT = 0x0401;
        case COLOR_ATTACHMENT12 = 0x8CEC;
        case LEFT = 0x0406;
        case COLOR_ATTACHMENT4 = 0x8CE4;
        case COLOR_ATTACHMENT3 = 0x8CE3;
        case COLOR_ATTACHMENT2 = 0x8CE2;
        case COLOR_ATTACHMENT31 = 0x8CFF;
        case COLOR_ATTACHMENT1 = 0x8CE1;
        case COLOR_ATTACHMENT30 = 0x8CFE;
        case AUX2 = 0x040B;
        case COLOR_ATTACHMENT8 = 0x8CE8;
        case AUX3 = 0x040C;
        case COLOR_ATTACHMENT7 = 0x8CE7;
        case COLOR_ATTACHMENT6 = 0x8CE6;
        case COLOR_ATTACHMENT5 = 0x8CE5;
        case BACK_LEFT = 0x0402;
        case FRONT_AND_BACK = 0x0408;
        case BACK_RIGHT = 0x0403;
        case FRONT_LEFT = 0x0400;
        case COLOR_ATTACHMENT29 = 0x8CFD;
        case COLOR_ATTACHMENT26 = 0x8CFA;
        case COLOR_ATTACHMENT25 = 0x8CF9;
        case COLOR_ATTACHMENT28 = 0x8CFC;
        case COLOR_ATTACHMENT27 = 0x8CFB;
        case COLOR_ATTACHMENT22 = 0x8CF6;
        case BACK = 0x0405;
        case COLOR_ATTACHMENT21 = 0x8CF5;
        case COLOR_ATTACHMENT24 = 0x8CF8;
        case COLOR_ATTACHMENT23 = 0x8CF7;
        case COLOR_ATTACHMENT20 = 0x8CF4;
        case RIGHT = 0x0407;
        case COLOR_ATTACHMENT9 = 0x8CE9;
        case NONE = 0;
        case COLOR_ATTACHMENT19 = 0x8CF3;
        case COLOR_ATTACHMENT18 = 0x8CF2;
    }
    [AllowDuplicates]
    public enum IndexFunctionEXT : uint32 {
        case EQUAL = 0x0202;
        case GREATER = 0x0204;
        case LEQUAL = 0x0203;
        case NEVER = 0x0200;
        case GEQUAL = 0x0206;
        case LESS = 0x0201;
        case NOTEQUAL = 0x0205;
        case ALWAYS = 0x0207;
    }
    [AllowDuplicates]
    public enum InvalidateFramebufferAttachment : uint32 {
        case COLOR_ATTACHMENT15 = 0x8CEF;
        case DEPTH = 0x1801;
        case COLOR_ATTACHMENT14 = 0x8CEE;
        case COLOR_ATTACHMENT17 = 0x8CF1;
        case COLOR_ATTACHMENT16 = 0x8CF0;
        case COLOR_ATTACHMENT0 = 0x8CE0;
        case COLOR_ATTACHMENT11 = 0x8CEB;
        case COLOR_ATTACHMENT10 = 0x8CEA;
        case COLOR_ATTACHMENT13 = 0x8CED;
        case COLOR_ATTACHMENT12 = 0x8CEC;
        case COLOR_ATTACHMENT4 = 0x8CE4;
        case COLOR_ATTACHMENT3 = 0x8CE3;
        case COLOR_ATTACHMENT2 = 0x8CE2;
        case COLOR_ATTACHMENT31 = 0x8CFF;
        case COLOR_ATTACHMENT1 = 0x8CE1;
        case COLOR_ATTACHMENT30 = 0x8CFE;
        case COLOR_ATTACHMENT8 = 0x8CE8;
        case COLOR_ATTACHMENT7 = 0x8CE7;
        case COLOR_ATTACHMENT6 = 0x8CE6;
        case COLOR_ATTACHMENT5 = 0x8CE5;
        case DEPTH_STENCIL_ATTACHMENT = 0x821A;
        case COLOR = 0x1800;
        case COLOR_ATTACHMENT29 = 0x8CFD;
        case COLOR_ATTACHMENT26 = 0x8CFA;
        case COLOR_ATTACHMENT25 = 0x8CF9;
        case COLOR_ATTACHMENT28 = 0x8CFC;
        case COLOR_ATTACHMENT27 = 0x8CFB;
        case COLOR_ATTACHMENT22 = 0x8CF6;
        case COLOR_ATTACHMENT21 = 0x8CF5;
        case COLOR_ATTACHMENT24 = 0x8CF8;
        case DEPTH_ATTACHMENT = 0x8D00;
        case COLOR_ATTACHMENT23 = 0x8CF7;
        case COLOR_ATTACHMENT20 = 0x8CF4;
        case STENCIL = 0x1802;
        case COLOR_ATTACHMENT9 = 0x8CE9;
        case COLOR_ATTACHMENT19 = 0x8CF3;
        case COLOR_ATTACHMENT18 = 0x8CF2;
    }
    [AllowDuplicates]
    public enum DebugSeverity : uint32 {
        case DEBUG_SEVERITY_MEDIUM = 0x9147;
        case DEBUG_SEVERITY_LOW = 0x9148;
        case DEBUG_SEVERITY_HIGH = 0x9146;
        case DONT_CARE = 0x1100;
        case DEBUG_SEVERITY_NOTIFICATION = 0x826B;
    }
    [AllowDuplicates]
    public enum QueryParameterName : uint32 {
        case QUERY_COUNTER_BITS = 0x8864;
        case CURRENT_QUERY = 0x8865;
    }
    [AllowDuplicates]
    public enum MapBufferAccessMask : uint32 {
        case MAP_COHERENT_BIT = 0x0080;
        case MAP_FLUSH_EXPLICIT_BIT = 0x0010;
        case MAP_UNSYNCHRONIZED_BIT = 0x0020;
        case MAP_PERSISTENT_BIT = 0x0040;
        case MAP_WRITE_BIT = 0x0002;
        case MAP_INVALIDATE_RANGE_BIT = 0x0004;
        case MAP_READ_BIT = 0x0001;
        case MAP_INVALIDATE_BUFFER_BIT = 0x0008;
    }
    [AllowDuplicates]
    public enum SamplerParameterI : uint32 {
        case TEXTURE_COMPARE_FUNC = 0x884D;
        case TEXTURE_MIN_FILTER = 0x2801;
        case TEXTURE_COMPARE_MODE = 0x884C;
        case TEXTURE_WRAP_R = 0x8072;
        case TEXTURE_MAG_FILTER = 0x2800;
        case TEXTURE_WRAP_S = 0x2802;
        case TEXTURE_WRAP_T = 0x2803;
    }
    [AllowDuplicates]
    public enum EnableCap : uint32 {
        case LIGHT6 = 0x4006;
        case LIGHT7 = 0x4007;
        case LIGHT4 = 0x4004;
        case LIGHT5 = 0x4005;
        case VERTEX_PROGRAM_POINT_SIZE = 0x8642;
        case CLIP_DISTANCE1 = 0x3001;
        case NORMAL_ARRAY = 0x8075;
        case CLIP_DISTANCE0 = 0x3000;
        case SAMPLE_ALPHA_TO_ONE = 0x809F;
        case CLIP_DISTANCE3 = 0x3003;
        case CLIP_DISTANCE2 = 0x3002;
        case CLIP_DISTANCE5 = 0x3005;
        case POLYGON_OFFSET_FILL = 0x8037;
        case CLIP_DISTANCE4 = 0x3004;
        case SCISSOR_TEST = 0x0C11;
        case CLIP_DISTANCE7 = 0x3007;
        case LIGHT2 = 0x4002;
        case SAMPLE_MASK = 0x8E51;
        case CLIP_DISTANCE6 = 0x3006;
        case LIGHT3 = 0x4003;
        case NORMALIZE = 0x0BA1;
        case LIGHT0 = 0x4000;
        case LIGHT1 = 0x4001;
        case TEXTURE_2D = 0x0DE1;
        case POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2;
        case PROGRAM_POINT_SIZE = 0x8642;
        case COLOR_TABLE = 0x80D0;
        case FRAMEBUFFER_SRGB = 0x8DB9;
        case MAP1_INDEX = 0x0D91;
        case POLYGON_OFFSET_LINE = 0x2A02;
        case LINE_STIPPLE = 0x0B24;
        case MAP2_COLOR_4 = 0x0DB0;
        case MULTISAMPLE = 0x809D;
        case INDEX_LOGIC_OP = 0x0BF1;
        case RASTERIZER_DISCARD = 0x8C89;
        case COLOR_LOGIC_OP = 0x0BF2;
        case SAMPLE_COVERAGE = 0x80A0;
        case STENCIL_TEST = 0x0B90;
        case TEXTURE_1D = 0x0DE0;
        case DEBUG_OUTPUT_SYNCHRONOUS = 0x8242;
        case VERTEX_ARRAY = 0x8074;
        case DITHER = 0x0BD0;
        case COLOR_MATERIAL = 0x0B57;
        case MAP1_VERTEX_3 = 0x0D97;
        case POST_CONVOLUTION_COLOR_TABLE = 0x80D1;
        case MAP1_VERTEX_4 = 0x0D98;
        case LIGHTING = 0x0B50;
        case DEPTH_TEST = 0x0B71;
        case FOG = 0x0B60;
        case MAP2_INDEX = 0x0DB1;
        case TEXTURE_CUBE_MAP_SEAMLESS = 0x884F;
        case CLIP_PLANE0 = 0x3000;
        case CLIP_PLANE1 = 0x3001;
        case CLIP_PLANE2 = 0x3002;
        case CLIP_PLANE3 = 0x3003;
        case CULL_FACE = 0x0B44;
        case CLIP_PLANE4 = 0x3004;
        case CLIP_PLANE5 = 0x3005;
        case MAP1_TEXTURE_COORD_3 = 0x0D95;
        case MAP1_TEXTURE_COORD_2 = 0x0D94;
        case MAP1_TEXTURE_COORD_4 = 0x0D96;
        case INDEX_ARRAY = 0x8077;
        case LINE_SMOOTH = 0x0B20;
        case POLYGON_STIPPLE = 0x0B42;
        case MAP1_TEXTURE_COORD_1 = 0x0D93;
        case MAP2_VERTEX_4 = 0x0DB8;
        case MAP2_VERTEX_3 = 0x0DB7;
        case ALPHA_TEST = 0x0BC0;
        case AUTO_NORMAL = 0x0D80;
        case MAP1_COLOR_4 = 0x0D90;
        case TEXTURE_COORD_ARRAY = 0x8078;
        case MAP1_NORMAL = 0x0D92;
        case MAP2_NORMAL = 0x0DB2;
        case COLOR_ARRAY = 0x8076;
        case PRIMITIVE_RESTART_FIXED_INDEX = 0x8D69;
        case SAMPLE_SHADING = 0x8C36;
        case EDGE_FLAG_ARRAY = 0x8079;
        case TEXTURE_GEN_Q = 0x0C63;
        case PRIMITIVE_RESTART = 0x8F9D;
        case POLYGON_SMOOTH = 0x0B41;
        case TEXTURE_GEN_R = 0x0C62;
        case TEXTURE_GEN_S = 0x0C60;
        case TEXTURE_GEN_T = 0x0C61;
        case SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
        case DEBUG_OUTPUT = 0x92E0;
        case DEPTH_CLAMP = 0x864F;
        case BLEND = 0x0BE2;
        case MAP2_TEXTURE_COORD_4 = 0x0DB6;
        case MAP2_TEXTURE_COORD_3 = 0x0DB5;
        case MAP2_TEXTURE_COORD_2 = 0x0DB4;
        case MAP2_TEXTURE_COORD_1 = 0x0DB3;
        case POINT_SMOOTH = 0x0B10;
        case POLYGON_OFFSET_POINT = 0x2A01;
    }
    [AllowDuplicates]
    public enum ShaderBinaryFormat : uint32 {
        case SHADER_BINARY_FORMAT_SPIR_V = 0x9551;
    }
    [AllowDuplicates]
    public enum LightName : uint32 {
        case LIGHT6 = 0x4006;
        case LIGHT7 = 0x4007;
        case LIGHT4 = 0x4004;
        case LIGHT5 = 0x4005;
        case LIGHT2 = 0x4002;
        case LIGHT3 = 0x4003;
        case LIGHT0 = 0x4000;
        case LIGHT1 = 0x4001;
    }
    [AllowDuplicates]
    public enum RenderbufferParameterName : uint32 {
        case RENDERBUFFER_SAMPLES = 0x8CAB;
        case RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
        case RENDERBUFFER_DEPTH_SIZE = 0x8D54;
        case RENDERBUFFER_ALPHA_SIZE = 0x8D53;
        case RENDERBUFFER_STENCIL_SIZE = 0x8D55;
        case RENDERBUFFER_BLUE_SIZE = 0x8D52;
        case RENDERBUFFER_HEIGHT = 0x8D43;
        case RENDERBUFFER_RED_SIZE = 0x8D50;
        case RENDERBUFFER_WIDTH = 0x8D42;
        case RENDERBUFFER_GREEN_SIZE = 0x8D51;
    }
    [AllowDuplicates]
    public enum FogPointerTypeEXT : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
    }
    [AllowDuplicates]
    public enum SamplerParameterF : uint32 {
        case TEXTURE_MAX_ANISOTROPY = 0x84FE;
        case TEXTURE_MIN_LOD = 0x813A;
        case TEXTURE_LOD_BIAS = 0x8501;
        case TEXTURE_BORDER_COLOR = 0x1004;
        case TEXTURE_MAX_LOD = 0x813B;
    }
    [AllowDuplicates]
    public enum GetPixelMap : uint32 {
        case PIXEL_MAP_B_TO_B = 0x0C78;
        case PIXEL_MAP_S_TO_S = 0x0C71;
        case PIXEL_MAP_I_TO_I = 0x0C70;
        case PIXEL_MAP_I_TO_R = 0x0C72;
        case PIXEL_MAP_I_TO_B = 0x0C74;
        case PIXEL_MAP_G_TO_G = 0x0C77;
        case PIXEL_MAP_I_TO_A = 0x0C75;
        case PIXEL_MAP_I_TO_G = 0x0C73;
        case PIXEL_MAP_A_TO_A = 0x0C79;
        case PIXEL_MAP_R_TO_R = 0x0C76;
    }
    [AllowDuplicates]
    public enum PixelTransferParameter : uint32 {
        case GREEN_BIAS = 0x0D19;
        case ALPHA_SCALE = 0x0D1C;
        case INDEX_SHIFT = 0x0D12;
        case INDEX_OFFSET = 0x0D13;
        case DEPTH_SCALE = 0x0D1E;
        case DEPTH_BIAS = 0x0D1F;
        case GREEN_SCALE = 0x0D18;
        case BLUE_SCALE = 0x0D1A;
        case RED_BIAS = 0x0D15;
        case MAP_COLOR = 0x0D10;
        case BLUE_BIAS = 0x0D1B;
        case ALPHA_BIAS = 0x0D1D;
        case MAP_STENCIL = 0x0D11;
        case RED_SCALE = 0x0D14;
    }
    [AllowDuplicates]
    public enum StencilOp : uint32 {
        case DECR_WRAP = 0x8508;
        case KEEP = 0x1E00;
        case INCR_WRAP = 0x8507;
        case INVERT = 0x150A;
        case INCR = 0x1E02;
        case ZERO = 0;
        case REPLACE = 0x1E01;
        case DECR = 0x1E03;
    }
    [AllowDuplicates]
    public enum ErrorCode : uint32 {
        case NO_ERROR = 0;
        case STACK_UNDERFLOW = 0x0504;
        case INVALID_OPERATION = 0x0502;
        case STACK_OVERFLOW = 0x0503;
        case INVALID_FRAMEBUFFER_OPERATION = 0x0506;
        case INVALID_ENUM = 0x0500;
        case OUT_OF_MEMORY = 0x0505;
        case INVALID_VALUE = 0x0501;
        case CONTEXT_LOST = 0x0507;
    }
    [AllowDuplicates]
    public enum CombinerScaleNV : uint32 {
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum SeparableTargetEXT : uint32 {
        case SEPARABLE_2D = 0x8012;
    }
    [AllowDuplicates]
    public enum AlphaFunction : uint32 {
        case EQUAL = 0x0202;
        case GREATER = 0x0204;
        case LEQUAL = 0x0203;
        case NEVER = 0x0200;
        case GEQUAL = 0x0206;
        case LESS = 0x0201;
        case NOTEQUAL = 0x0205;
        case ALWAYS = 0x0207;
    }
    [AllowDuplicates]
    public enum BlitFramebufferFilter : uint32 {
        case LINEAR = 0x2601;
        case NEAREST = 0x2600;
    }
    [AllowDuplicates]
    public enum GetMapQuery : uint32 {
        case COEFF = 0x0A00;
        case DOMAIN = 0x0A02;
        case ORDER = 0x0A01;
    }
    [AllowDuplicates]
    public enum VertexAttribIType : uint32 {
        case BYTE = 0x1400;
        case INT = 0x1404;
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case SHORT = 0x1402;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum FeedBackToken : uint32 {
        case BITMAP_TOKEN = 0x0704;
        case DRAW_PIXEL_TOKEN = 0x0705;
        case COPY_PIXEL_TOKEN = 0x0706;
        case POINT_TOKEN = 0x0701;
        case LINE_TOKEN = 0x0702;
        case LINE_RESET_TOKEN = 0x0707;
        case POLYGON_TOKEN = 0x0703;
        case PASS_THROUGH_TOKEN = 0x0700;
    }
    [AllowDuplicates]
    public enum MapTypeNV : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
    }
    [AllowDuplicates]
    public enum ReplacementCodeTypeSUN : uint32 {
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum TextureEnvMode : uint32 {
        case MODULATE = 0x2100;
        case ADD = 0x0104;
        case BLEND = 0x0BE2;
        case DECAL = 0x2101;
    }
    [AllowDuplicates]
    public enum PathColorFormat : uint32 {
        case RGB = 0x1907;
        case LUMINANCE_ALPHA = 0x190A;
        case ALPHA = 0x1906;
        case RGBA = 0x1908;
        case LUMINANCE = 0x1909;
        case NONE = 0;
        case INTENSITY = 0x8049;
    }
    [AllowDuplicates]
    public enum RenderingMode : uint32 {
        case SELECT = 0x1C02;
        case RENDER = 0x1C00;
        case FEEDBACK = 0x1C01;
    }
    [AllowDuplicates]
    public enum BufferPNameARB : uint32 {
        case BUFFER_MAPPED = 0x88BC;
        case BUFFER_STORAGE_FLAGS = 0x8220;
        case BUFFER_SIZE = 0x8764;
        case BUFFER_USAGE = 0x8765;
        case BUFFER_MAP_OFFSET = 0x9121;
        case BUFFER_IMMUTABLE_STORAGE = 0x821F;
        case BUFFER_MAP_LENGTH = 0x9120;
        case BUFFER_ACCESS = 0x88BB;
        case BUFFER_ACCESS_FLAGS = 0x911F;
    }
    [AllowDuplicates]
    public enum ConvolutionTargetEXT : uint32 {
        case CONVOLUTION_2D = 0x8011;
        case CONVOLUTION_1D = 0x8010;
    }
    [AllowDuplicates]
    public enum HintMode : uint32 {
        case FASTEST = 0x1101;
        case DONT_CARE = 0x1100;
        case NICEST = 0x1102;
    }
    [AllowDuplicates]
    public enum TextureParameterName : uint32 {
        case TEXTURE_SAMPLES = 0x9106;
        case TEXTURE_HEIGHT = 0x1001;
        case TEXTURE_MAX_LOD = 0x813B;
        case TEXTURE_COMPARE_FUNC = 0x884D;
        case TEXTURE_RESIDENT = 0x8067;
        case TEXTURE_MIN_FILTER = 0x2801;
        case TEXTURE_BORDER = 0x1005;
        case TEXTURE_LUMINANCE_SIZE = 0x8060;
        case TEXTURE_BLUE_SIZE = 0x805E;
        case TEXTURE_SWIZZLE_RGBA = 0x8E46;
        case TEXTURE_INTENSITY_SIZE = 0x8061;
        case TEXTURE_COMPONENTS = 0x1003;
        case TEXTURE_SWIZZLE_R = 0x8E42;
        case TEXTURE_WIDTH = 0x1000;
        case TEXTURE_GREEN_SIZE = 0x805D;
        case TEXTURE_MIN_LOD = 0x813A;
        case TEXTURE_COMPARE_MODE = 0x884C;
        case TEXTURE_WRAP_R = 0x8072;
        case TEXTURE_MAG_FILTER = 0x2800;
        case TEXTURE_WRAP_S = 0x2802;
        case TEXTURE_WRAP_T = 0x2803;
        case TEXTURE_INTERNAL_FORMAT = 0x1003;
        case TEXTURE_RED_SIZE = 0x805C;
        case TEXTURE_MAX_LEVEL = 0x813D;
        case TEXTURE_SWIZZLE_B = 0x8E44;
        case TEXTURE_PRIORITY = 0x8066;
        case TEXTURE_SWIZZLE_A = 0x8E45;
        case TEXTURE_BASE_LEVEL = 0x813C;
        case GENERATE_MIPMAP = 0x8191;
        case DEPTH_STENCIL_TEXTURE_MODE = 0x90EA;
        case TEXTURE_LOD_BIAS = 0x8501;
        case TEXTURE_SWIZZLE_G = 0x8E43;
        case TEXTURE_ALPHA_SIZE = 0x805F;
        case TEXTURE_BORDER_COLOR = 0x1004;
    }
    [AllowDuplicates]
    public enum UniformBlockPName : uint32 {
        case UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1;
        case UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42;
        case UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44;
        case UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45;
        case UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90EC;
        case UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43;
        case UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;
        case UNIFORM_BLOCK_DATA_SIZE = 0x8A40;
        case UNIFORM_BLOCK_NAME_LENGTH = 0x8A41;
        case UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 0x84F0;
        case UNIFORM_BLOCK_BINDING = 0x8A3F;
    }
    [AllowDuplicates]
    public enum ProgramPropertyARB : uint32 {
        case GEOMETRY_INPUT_TYPE = 0x8917;
        case TESS_CONTROL_OUTPUT_VERTICES = 0x8E75;
        case TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;
        case GEOMETRY_VERTICES_OUT = 0x8916;
        case ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A;
        case DELETE_STATUS = 0x8B80;
        case PROGRAM_BINARY_LENGTH = 0x8741;
        case ACTIVE_UNIFORMS = 0x8B86;
        case GEOMETRY_SHADER_INVOCATIONS = 0x887F;
        case VALIDATE_STATUS = 0x8B83;
        case ACTIVE_ATTRIBUTES = 0x8B89;
        case ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35;
        case TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76;
        case TESS_GEN_POINT_MODE = 0x8E79;
        case ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87;
        case TESS_GEN_VERTEX_ORDER = 0x8E78;
        case INFO_LOG_LENGTH = 0x8B84;
        case TESS_GEN_SPACING = 0x8E77;
        case ACTIVE_UNIFORM_BLOCKS = 0x8A36;
        case COMPUTE_WORK_GROUP_SIZE = 0x8267;
        case GEOMETRY_OUTPUT_TYPE = 0x8918;
        case TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;
        case LINK_STATUS = 0x8B82;
        case ATTACHED_SHADERS = 0x8B85;
        case TESS_GEN_MODE = 0x8E76;
        case ACTIVE_ATOMIC_COUNTER_BUFFERS = 0x92D9;
    }
    [AllowDuplicates]
    public enum Boolean : uint32 {
        case TRUE = 1;
        case FALSE = 0;
        public static implicit operator Boolean(bool b) {
            return b ? TRUE : FALSE;
        }
    }
    [AllowDuplicates]
    public enum ClearBufferMask : uint32 {
        case COLOR_BUFFER_BIT = 0x00004000;
        case ACCUM_BUFFER_BIT = 0x00000200;
        case STENCIL_BUFFER_BIT = 0x00000400;
        case DEPTH_BUFFER_BIT = 0x00000100;
    }
    [AllowDuplicates]
    public enum MeshMode1 : uint32 {
        case POINT = 0x1B00;
        case LINE = 0x1B01;
    }
    [AllowDuplicates]
    public enum Buffer : uint32 {
        case DEPTH = 0x1801;
        case COLOR = 0x1800;
        case STENCIL = 0x1802;
    }
    [AllowDuplicates]
    public enum PathGenMode : uint32 {
        case CONSTANT = 0x8576;
        case OBJECT_LINEAR = 0x2401;
        case NONE = 0;
        case EYE_LINEAR = 0x2400;
    }
    [AllowDuplicates]
    public enum MeshMode2 : uint32 {
        case POINT = 0x1B00;
        case LINE = 0x1B01;
        case FILL = 0x1B02;
    }
    [AllowDuplicates]
    public enum UniformType : uint32 {
        case SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900D;
        case FLOAT = 0x1406;
        case SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910B;
        case UNSIGNED_INT_SAMPLER_2D = 0x8DD2;
        case UNSIGNED_INT_VEC4 = 0x8DC8;
        case UNSIGNED_INT = 0x1405;
        case INT_SAMPLER_1D_ARRAY = 0x8DCE;
        case INT_SAMPLER_2D_ARRAY = 0x8DCF;
        case SAMPLER_2D_RECT_SHADOW = 0x8B64;
        case SAMPLER_2D_ARRAY = 0x8DC1;
        case INT_SAMPLER_3D = 0x8DCB;
        case SAMPLER_1D_ARRAY = 0x8DC0;
        case SAMPLER_2D_SHADOW = 0x8B62;
        case DOUBLE = 0x140A;
        case INT_SAMPLER_CUBE_MAP_ARRAY = 0x900E;
        case INT_SAMPLER_BUFFER = 0x8DD0;
        case FLOAT_MAT3x4 = 0x8B68;
        case UNSIGNED_INT_SAMPLER_1D = 0x8DD1;
        case FLOAT_MAT3x2 = 0x8B67;
        case BOOL_VEC4 = 0x8B59;
        case SAMPLER_3D = 0x8B5F;
        case BOOL_VEC3 = 0x8B58;
        case BOOL_VEC2 = 0x8B57;
        case UNSIGNED_INT_VEC3 = 0x8DC7;
        case UNSIGNED_INT_VEC2 = 0x8DC6;
        case DOUBLE_MAT4 = 0x8F48;
        case SAMPLER_CUBE_SHADOW = 0x8DC5;
        case DOUBLE_MAT3x4 = 0x8F4C;
        case DOUBLE_MAT3x2 = 0x8F4B;
        case SAMPLER_BUFFER = 0x8DC2;
        case INT_SAMPLER_2D = 0x8DCA;
        case SAMPLER_1D_ARRAY_SHADOW = 0x8DC3;
        case UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D;
        case DOUBLE_MAT3 = 0x8F47;
        case DOUBLE_MAT2 = 0x8F46;
        case UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8;
        case UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;
        case FLOAT_MAT4 = 0x8B5C;
        case FLOAT_MAT3 = 0x8B5B;
        case FLOAT_MAT2 = 0x8B5A;
        case UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5;
        case SAMPLER_2D = 0x8B5E;
        case UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A;
        case SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;
        case INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C;
        case SAMPLER_CUBE_MAP_ARRAY = 0x900C;
        case UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;
        case UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6;
        case UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F;
        case INT_SAMPLER_1D = 0x8DC9;
        case BOOL = 0x8B56;
        case SAMPLER_CUBE = 0x8B60;
        case SAMPLER_1D_SHADOW = 0x8B61;
        case UNSIGNED_INT_SAMPLER_3D = 0x8DD3;
        case FLOAT_MAT4x3 = 0x8B6A;
        case DOUBLE_VEC4 = 0x8FFE;
        case FLOAT_MAT2x3 = 0x8B65;
        case DOUBLE_VEC3 = 0x8FFD;
        case SAMPLER_2D_MULTISAMPLE = 0x9108;
        case FLOAT_MAT2x4 = 0x8B66;
        case FLOAT_MAT4x2 = 0x8B69;
        case DOUBLE_VEC2 = 0x8FFC;
        case INT_SAMPLER_CUBE = 0x8DCC;
        case SAMPLER_2D_RECT = 0x8B63;
        case INT_SAMPLER_2D_RECT = 0x8DCD;
        case DOUBLE_MAT2x4 = 0x8F4A;
        case DOUBLE_MAT4x2 = 0x8F4D;
        case DOUBLE_MAT4x3 = 0x8F4E;
        case INT = 0x1404;
        case SAMPLER_1D = 0x8B5D;
        case DOUBLE_MAT2x3 = 0x8F49;
        case FLOAT_VEC2 = 0x8B50;
        case INT_SAMPLER_2D_MULTISAMPLE = 0x9109;
        case INT_VEC4 = 0x8B55;
        case FLOAT_VEC4 = 0x8B52;
        case INT_VEC2 = 0x8B53;
        case FLOAT_VEC3 = 0x8B51;
        case INT_VEC3 = 0x8B54;
    }
    [AllowDuplicates]
    public enum FramebufferParameterName : uint32 {
        case FRAMEBUFFER_DEFAULT_WIDTH = 0x9310;
        case FRAMEBUFFER_DEFAULT_HEIGHT = 0x9311;
        case FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314;
        case FRAMEBUFFER_DEFAULT_LAYERS = 0x9312;
        case FRAMEBUFFER_DEFAULT_SAMPLES = 0x9313;
    }
    [AllowDuplicates]
    public enum ColorTableTarget : uint32 {
        case POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2;
        case PROXY_COLOR_TABLE = 0x80D3;
        case COLOR_TABLE = 0x80D0;
        case PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4;
        case PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5;
        case POST_CONVOLUTION_COLOR_TABLE = 0x80D1;
    }
    [AllowDuplicates]
    public enum MapQuery : uint32 {
        case COEFF = 0x0A00;
        case DOMAIN = 0x0A02;
        case ORDER = 0x0A01;
    }
    [AllowDuplicates]
    public enum UseProgramStageMask : uint32 {
        case ALL_SHADER_BITS = 0xFFFFFFFF;
        case TESS_CONTROL_SHADER_BIT = 0x00000008;
        case GEOMETRY_SHADER_BIT = 0x00000004;
        case FRAGMENT_SHADER_BIT = 0x00000002;
        case COMPUTE_SHADER_BIT = 0x00000020;
        case TESS_EVALUATION_SHADER_BIT = 0x00000010;
        case VERTEX_SHADER_BIT = 0x00000001;
    }
    [AllowDuplicates]
    public enum BufferTargetARB : uint32 {
        case PARAMETER_BUFFER = 0x80EE;
        case UNIFORM_BUFFER = 0x8A11;
        case COPY_WRITE_BUFFER = 0x8F37;
        case QUERY_BUFFER = 0x9192;
        case DISPATCH_INDIRECT_BUFFER = 0x90EE;
        case TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
        case DRAW_INDIRECT_BUFFER = 0x8F3F;
        case PIXEL_UNPACK_BUFFER = 0x88EC;
        case ELEMENT_ARRAY_BUFFER = 0x8893;
        case PIXEL_PACK_BUFFER = 0x88EB;
        case TEXTURE_BUFFER = 0x8C2A;
        case COPY_READ_BUFFER = 0x8F36;
        case ATOMIC_COUNTER_BUFFER = 0x92C0;
        case ARRAY_BUFFER = 0x8892;
        case SHADER_STORAGE_BUFFER = 0x90D2;
    }
    [AllowDuplicates]
    public enum MinmaxTargetEXT : uint32 {
        case MINMAX = 0x802E;
    }
    [AllowDuplicates]
    public enum PixelStoreParameter : uint32 {
        case PACK_ROW_LENGTH = 0x0D02;
        case UNPACK_LSB_FIRST = 0x0CF1;
        case PACK_SKIP_IMAGES = 0x806B;
        case PACK_IMAGE_HEIGHT = 0x806C;
        case UNPACK_IMAGE_HEIGHT = 0x806E;
        case PACK_SKIP_PIXELS = 0x0D04;
        case UNPACK_SKIP_PIXELS = 0x0CF4;
        case UNPACK_SKIP_ROWS = 0x0CF3;
        case PACK_LSB_FIRST = 0x0D01;
        case UNPACK_SWAP_BYTES = 0x0CF0;
        case PACK_SKIP_ROWS = 0x0D03;
        case PACK_ALIGNMENT = 0x0D05;
        case UNPACK_SKIP_IMAGES = 0x806D;
        case PACK_SWAP_BYTES = 0x0D00;
        case UNPACK_ROW_LENGTH = 0x0CF2;
        case UNPACK_ALIGNMENT = 0x0CF5;
    }
    [AllowDuplicates]
    public enum MaterialParameter : uint32 {
        case AMBIENT_AND_DIFFUSE = 0x1602;
        case AMBIENT = 0x1200;
        case SHININESS = 0x1601;
        case COLOR_INDEXES = 0x1603;
        case SPECULAR = 0x1202;
        case EMISSION = 0x1600;
        case DIFFUSE = 0x1201;
    }
    [AllowDuplicates]
    public enum ContextFlagMask : uint32 {
        case CONTEXT_FLAG_NO_ERROR_BIT = 0x00000008;
        case CONTEXT_FLAG_DEBUG_BIT = 0x00000002;
        case CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x00000001;
        case CONTEXT_FLAG_ROBUST_ACCESS_BIT = 0x00000004;
    }
    [AllowDuplicates]
    public enum ShadingModel : uint32 {
        case SMOOTH = 0x1D01;
        case FLAT = 0x1D00;
    }
    [AllowDuplicates]
    public enum RegisterCombinerPname : uint32 {
        case COMBINE_RGB = 0x8571;
        case PRIMARY_COLOR = 0x8577;
        case SOURCE0_RGB = 0x8580;
        case SRC1_ALPHA = 0x8589;
        case PREVIOUS = 0x8578;
        case RGB_SCALE = 0x8573;
        case CONSTANT = 0x8576;
        case OPERAND0_RGB = 0x8590;
        case OPERAND1_ALPHA = 0x8599;
        case SOURCE2_ALPHA = 0x858A;
        case SRC2_RGB = 0x8582;
        case INTERPOLATE = 0x8575;
        case SOURCE1_RGB = 0x8581;
        case SOURCE0_ALPHA = 0x8588;
        case SRC0_ALPHA = 0x8588;
        case SOURCE2_RGB = 0x8582;
        case SRC2_ALPHA = 0x858A;
        case SRC1_RGB = 0x8581;
        case OPERAND2_RGB = 0x8592;
        case OPERAND0_ALPHA = 0x8598;
        case COMBINE = 0x8570;
        case SRC0_RGB = 0x8580;
        case SOURCE1_ALPHA = 0x8589;
        case COMBINE_ALPHA = 0x8572;
        case ADD_SIGNED = 0x8574;
        case OPERAND2_ALPHA = 0x859A;
        case OPERAND1_RGB = 0x8591;
    }
    [AllowDuplicates]
    public enum ConditionalRenderMode : uint32 {
        case QUERY_NO_WAIT = 0x8E14;
        case QUERY_BY_REGION_WAIT_INVERTED = 0x8E19;
        case QUERY_BY_REGION_WAIT = 0x8E15;
        case QUERY_BY_REGION_NO_WAIT = 0x8E16;
        case QUERY_WAIT_INVERTED = 0x8E17;
        case QUERY_BY_REGION_NO_WAIT_INVERTED = 0x8E1A;
        case QUERY_WAIT = 0x8E13;
        case QUERY_NO_WAIT_INVERTED = 0x8E18;
    }
    [AllowDuplicates]
    public enum GraphicsResetStatus : uint32 {
        case GUILTY_CONTEXT_RESET = 0x8253;
        case NO_ERROR = 0;
        case INNOCENT_CONTEXT_RESET = 0x8254;
        case UNKNOWN_CONTEXT_RESET = 0x8255;
    }
    [AllowDuplicates]
    public enum FogPointerTypeIBM : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
    }
    [AllowDuplicates]
    public enum VertexProvokingMode : uint32 {
        case LAST_VERTEX_CONVENTION = 0x8E4E;
        case FIRST_VERTEX_CONVENTION = 0x8E4D;
    }
    [AllowDuplicates]
    public enum GetPName : uint32 {
        case TRANSFORM_FEEDBACK_BINDING = 0x8E25;
        case VERTEX_BINDING_STRIDE = 0x82D8;
        case MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
        case VERTEX_BINDING_DIVISOR = 0x82D6;
        case MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92CC;
        case SCISSOR_TEST = 0x0C11;
        case ARRAY_BUFFER_BINDING = 0x8894;
        case PACK_LSB_FIRST = 0x0D01;
        case ACCUM_CLEAR_VALUE = 0x0B80;
        case TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105;
        case MAX_GEOMETRY_IMAGE_UNIFORMS = 0x90CD;
        case PACK_SWAP_BYTES = 0x0D00;
        case ALIASED_LINE_WIDTH_RANGE = 0x846E;
        case RENDERBUFFER_BINDING = 0x8CA7;
        case POLYGON_OFFSET_LINE = 0x2A02;
        case MAX_IMAGE_UNITS = 0x8F38;
        case MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 0x90DA;
        case STENCIL_REF = 0x0B97;
        case MODELVIEW_STACK_DEPTH = 0x0BA3;
        case SHADER_COMPILER = 0x8DFA;
        case POINT_SIZE_RANGE = 0x0B12;
        case GREEN_SCALE = 0x0D18;
        case NUM_SHADER_BINARY_FORMATS = 0x8DF9;
        case MAX_COMBINED_ATOMIC_COUNTERS = 0x92D7;
        case MAX_DEBUG_LOGGED_MESSAGES = 0x9144;
        case FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;
        case MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;
        case VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F;
        case MAX_GEOMETRY_INPUT_COMPONENTS = 0x9123;
        case STENCIL_PASS_DEPTH_PASS = 0x0B96;
        case GREEN_BIAS = 0x0D19;
        case MAX_PROGRAM_TEXEL_OFFSET = 0x8905;
        case STENCIL_BACK_WRITEMASK = 0x8CA5;
        case MAX_SERVER_WAIT_TIMEOUT = 0x9111;
        case DEPTH_TEST = 0x0B71;
        case MAX_TESS_EVALUATION_INPUT_COMPONENTS = 0x886D;
        case MAP2_INDEX = 0x0DB1;
        case IMAGE_BINDING_ACCESS = 0x8F3E;
        case TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;
        case BLEND_EQUATION_ALPHA = 0x883D;
        case MAX_DEBUG_MESSAGE_LENGTH = 0x9143;
        case MAJOR_VERSION = 0x821B;
        case PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
        case SHADER_STORAGE_BUFFER_BINDING = 0x90D3;
        case MAX_COMBINED_IMAGE_UNIFORMS = 0x90CF;
        case CLIP_ORIGIN = 0x935C;
        case VERTEX_ARRAY_SIZE = 0x807A;
        case MAX_SAMPLES = 0x8D57;
        case POLYGON_OFFSET_FACTOR = 0x8038;
        case AUX_BUFFERS = 0x0C00;
        case FOG_HINT = 0x0C54;
        case MAX_DEPTH_TEXTURE_SAMPLES = 0x910F;
        case MAP2_GRID_SEGMENTS = 0x0DD3;
        case IMAGE_BINDING_LAYER = 0x8F3D;
        case CURRENT_TEXTURE_COORDS = 0x0B03;
        case ACCUM_BLUE_BITS = 0x0D5A;
        case STENCIL_BACK_FAIL = 0x8801;
        case CURRENT_COLOR = 0x0B00;
        case LIST_INDEX = 0x0B33;
        case MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8F39;
        case STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
        case NORMAL_ARRAY = 0x8075;
        case PROJECTION_MATRIX = 0x0BA7;
        case PACK_IMAGE_HEIGHT = 0x806C;
        case UNPACK_IMAGE_HEIGHT = 0x806E;
        case INDEX_ARRAY_STRIDE = 0x8086;
        case MATRIX_MODE = 0x0BA0;
        case MAX_LIST_NESTING = 0x0B31;
        case MAP1_GRID_DOMAIN = 0x0DD0;
        case VERTEX_ARRAY_TYPE = 0x807B;
        case CONTEXT_FLAGS = 0x821E;
        case CLIP_DEPTH_MODE = 0x935D;
        case MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E1E;
        case UNPACK_ROW_LENGTH = 0x0CF2;
        case RGBA_MODE = 0x0C31;
        case MAP_STENCIL = 0x0D11;
        case STENCIL_BACK_FUNC = 0x8800;
        case LINE_STIPPLE = 0x0B24;
        case MAX_3D_TEXTURE_SIZE = 0x8073;
        case MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 0x8E83;
        case MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33;
        case SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;
        case MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 0x90CC;
        case MAX_VERTEX_ATOMIC_COUNTERS = 0x92D2;
        case MAX_TEXTURE_SIZE = 0x0D33;
        case READ_FRAMEBUFFER_BINDING = 0x8CAA;
        case MAX_VARYING_FLOATS = 0x8B4B;
        case MAX_ELEMENTS_VERTICES = 0x80E8;
        case COLOR_WRITEMASK = 0x0C23;
        case DEPTH_BITS = 0x0D56;
        case PROGRAM_BINARY_FORMATS = 0x87FF;
        case MAX_FRAGMENT_IMAGE_UNIFORMS = 0x90CE;
        case LINE_WIDTH_GRANULARITY = 0x0B23;
        case VERTEX_ARRAY_STRIDE = 0x807C;
        case MAX_VERTEX_ATTRIB_STRIDE = 0x82E5;
        case MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 0x92CF;
        case CLIP_PLANE0 = 0x3000;
        case MAX_TEXTURE_BUFFER_SIZE = 0x8C2B;
        case CLIP_PLANE1 = 0x3001;
        case CLIP_PLANE2 = 0x3002;
        case CLIP_PLANE3 = 0x3003;
        case MIN_PROGRAM_TEXEL_OFFSET = 0x8904;
        case CLIP_PLANE4 = 0x3004;
        case CLIP_PLANE5 = 0x3005;
        case MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;
        case TIMESTAMP = 0x8E28;
        case INDEX_ARRAY = 0x8077;
        case LINE_SMOOTH = 0x0B20;
        case MAX_TESS_CONTROL_INPUT_COMPONENTS = 0x886C;
        case MAP2_VERTEX_4 = 0x0DB8;
        case MAP2_VERTEX_3 = 0x0DB7;
        case ALPHA_TEST = 0x0BC0;
        case MAX_TEXTURE_LOD_BIAS = 0x84FD;
        case STENCIL_BACK_REF = 0x8CA3;
        case CONTEXT_PROFILE_MASK = 0x9126;
        case COLOR_ARRAY_STRIDE = 0x8083;
        case MAX_RECTANGLE_TEXTURE_SIZE = 0x84F8;
        case ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
        case EDGE_FLAG_ARRAY_STRIDE = 0x808C;
        case FRAMEBUFFER_BINDING = 0x8CA6;
        case DEPTH_WRITEMASK = 0x0B72;
        case PRIMITIVE_RESTART_INDEX = 0x8F9E;
        case VERTEX_PROGRAM_POINT_SIZE = 0x8642;
        case MAX_LIGHTS = 0x0D31;
        case MAX_VARYING_COMPONENTS = 0x8B4B;
        case PROJECTION_STACK_DEPTH = 0x0BA4;
        case UNPACK_SKIP_ROWS = 0x0CF3;
        case SCISSOR_BOX = 0x0C10;
        case SMOOTH_LINE_WIDTH_RANGE = 0x0B22;
        case PACK_ALIGNMENT = 0x0D05;
        case MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124;
        case IMAGE_BINDING_FORMAT = 0x906E;
        case MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 0x90DB;
        case MAX_COMPUTE_IMAGE_UNIFORMS = 0x91BD;
        case FRONT_FACE = 0x0B46;
        case LAYER_PROVOKING_VERTEX = 0x825E;
        case BLEND_SRC = 0x0BE1;
        case MAX_TRANSFORM_FEEDBACK_BUFFERS = 0x8E70;
        case STENCIL_TEST = 0x0B90;
        case MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92D3;
        case COLOR_MATERIAL_FACE = 0x0B55;
        case POINT_FADE_THRESHOLD_SIZE = 0x8128;
        case MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122;
        case MAX_PIXEL_MAP_TABLE = 0x0D34;
        case STEREO = 0x0C33;
        case MAX_FRAMEBUFFER_HEIGHT = 0x9316;
        case UNPACK_SKIP_IMAGES = 0x806D;
        case RENDER_MODE = 0x0C40;
        case TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900A;
        case COPY_READ_BUFFER_BINDING = 0x8F36;
        case LIGHTING = 0x0B50;
        case BLEND_DST = 0x0BE0;
        case TEXTURE_STACK_DEPTH = 0x0BA5;
        case MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92D1;
        case PERSPECTIVE_CORRECTION_HINT = 0x0C50;
        case UNPACK_SKIP_PIXELS = 0x0CF4;
        case ALPHA_BITS = 0x0D55;
        case LOGIC_OP = 0x0BF1;
        case BLUE_SCALE = 0x0D1A;
        case MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B;
        case UNPACK_SWAP_BYTES = 0x0CF0;
        case PACK_SKIP_ROWS = 0x0D03;
        case SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 0x90DF;
        case POLYGON_STIPPLE = 0x0B42;
        case LIGHT_MODEL_TWO_SIDE = 0x0B52;
        case MAP1_COLOR_4 = 0x0D90;
        case CURRENT_RASTER_DISTANCE = 0x0B09;
        case MAX_SHADER_STORAGE_BUFFER_BINDINGS = 0x90DD;
        case BLEND_SRC_ALPHA = 0x80CB;
        case MAX_VERTEX_ATTRIBS = 0x8869;
        case COLOR_CLEAR_VALUE = 0x0C22;
        case MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8E5A;
        case MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;
        case TEXTURE_COORD_ARRAY_TYPE = 0x8089;
        case LINE_STIPPLE_PATTERN = 0x0B25;
        case POLYGON_SMOOTH = 0x0B41;
        case POINT_SIZE_GRANULARITY = 0x0B13;
        case NUM_EXTENSIONS = 0x821D;
        case MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;
        case STENCIL_PASS_DEPTH_FAIL = 0x0B95;
        case FOG_MODE = 0x0B65;
        case CURRENT_PROGRAM = 0x8B8D;
        case MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92CD;
        case ALPHA_TEST_FUNC = 0x0BC1;
        case POLYGON_OFFSET_POINT = 0x2A01;
        case MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266;
        case FEEDBACK_BUFFER_SIZE = 0x0DF1;
        case DEPTH_RANGE = 0x0B70;
        case ACCUM_ALPHA_BITS = 0x0D5B;
        case MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 0x8F39;
        case LIST_MODE = 0x0B30;
        case TEXTURE_MATRIX = 0x0BA8;
        case DEPTH_SCALE = 0x0D1E;
        case MAX_CLIP_PLANES = 0x0D32;
        case BLEND_EQUATION = 0x8009;
        case POLYGON_OFFSET_FILL = 0x8037;
        case NORMALIZE = 0x0BA1;
        case SAMPLE_MASK_VALUE = 0x8E52;
        case ACCUM_RED_BITS = 0x0D58;
        case MAP2_COLOR_4 = 0x0DB0;
        case MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263;
        case CURRENT_RASTER_POSITION = 0x0B07;
        case PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
        case TEXTURE_BINDING_1D = 0x8068;
        case MAX_CULL_DISTANCES = 0x82F9;
        case TEXTURE_COORD_ARRAY_SIZE = 0x8088;
        case TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;
        case MAX_COLOR_ATTACHMENTS = 0x8CDF;
        case STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
        case CURRENT_RASTER_POSITION_VALID = 0x0B08;
        case VERTEX_BINDING_OFFSET = 0x82D7;
        case MAX_TEXTURE_STACK_DEPTH = 0x0D39;
        case SAMPLES = 0x80A9;
        case TEXTURE_BINDING_BUFFER = 0x8C2C;
        case LINE_WIDTH = 0x0B21;
        case STENCIL_WRITEMASK = 0x0B98;
        case UNPACK_LSB_FIRST = 0x0CF1;
        case TEXTURE_BINDING_2D = 0x8069;
        case MAX_GEOMETRY_ATOMIC_COUNTERS = 0x92D5;
        case CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
        case MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
        case NORMAL_ARRAY_STRIDE = 0x807F;
        case MAX_VERTEX_SHADER_STORAGE_BLOCKS = 0x90D6;
        case MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 0x90D8;
        case MAX_GEOMETRY_UNIFORM_BLOCKS = 0x8A2C;
        case TEXTURE_COMPRESSION_HINT = 0x84EF;
        case MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 0x90EB;
        case BLUE_BIAS = 0x0D1B;
        case IMAGE_BINDING_LAYERED = 0x8F3C;
        case STENCIL_BITS = 0x0D57;
        case AUTO_NORMAL = 0x0D80;
        case CULL_FACE_MODE = 0x0B45;
        case PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
        case MAP1_NORMAL = 0x0D92;
        case READ_BUFFER = 0x0C02;
        case MAX_FRAMEBUFFER_WIDTH = 0x9315;
        case FOG_COLOR = 0x0B66;
        case TEXTURE_BINDING_3D = 0x806A;
        case MAX_ELEMENT_INDEX = 0x8D6B;
        case BLEND_DST_RGB = 0x80C8;
        case MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E80;
        case BLEND = 0x0BE2;
        case POINT_SMOOTH = 0x0B10;
        case PIXEL_PACK_BUFFER_BINDING = 0x88ED;
        case ALIASED_POINT_SIZE_RANGE = 0x846D;
        case MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5B;
        case MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5C;
        case LINE_WIDTH_RANGE = 0x0B22;
        case GREEN_BITS = 0x0D53;
        case MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 0x8E86;
        case MAX_TESS_CONTROL_IMAGE_UNIFORMS = 0x90CB;
        case MAX_COMPUTE_WORK_GROUP_COUNT = 0x91BE;
        case DOUBLEBUFFER = 0x0C32;
        case MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92D0;
        case RED_BITS = 0x0D52;
        case MAP1_INDEX = 0x0D91;
        case LINE_SMOOTH_HINT = 0x0C52;
        case PROGRAM_PIPELINE_BINDING = 0x825A;
        case COLOR_ARRAY_SIZE = 0x8081;
        case UNIFORM_BUFFER_BINDING = 0x8A28;
        case LIGHT_MODEL_AMBIENT = 0x0B53;
        case PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
        case MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E7F;
        case SAMPLE_COVERAGE_VALUE = 0x80AA;
        case CURRENT_NORMAL = 0x0B02;
        case MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;
        case MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92D4;
        case POLYGON_MODE = 0x0B40;
        case COLOR_MATERIAL = 0x0B57;
        case ATTRIB_STACK_DEPTH = 0x0BB0;
        case MAX_PROJECTION_STACK_DEPTH = 0x0D38;
        case SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;
        case LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
        case FOG_INDEX = 0x0B61;
        case SHADER_STORAGE_BUFFER_SIZE = 0x90D5;
        case MIN_MAP_BUFFER_ALIGNMENT = 0x90BC;
        case CULL_FACE = 0x0B44;
        case MAX_COMPUTE_WORK_GROUP_SIZE = 0x91BF;
        case BLEND_SRC_RGB = 0x80C9;
        case VIEWPORT = 0x0BA2;
        case MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91BC;
        case TEXTURE_COORD_ARRAY = 0x8078;
        case MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 0x8E8A;
        case MAP2_NORMAL = 0x0DB2;
        case RESET_NOTIFICATION_STRATEGY = 0x8256;
        case IMAGE_BINDING_NAME = 0x8F3A;
        case MAX_NAME_STACK_DEPTH = 0x0D37;
        case SELECTION_BUFFER_SIZE = 0x0DF4;
        case SHADER_BINARY_FORMATS = 0x8DF8;
        case BLEND_COLOR = 0x8005;
        case VERTEX_BINDING_BUFFER = 0x8F4F;
        case STENCIL_VALUE_MASK = 0x0B93;
        case DEPTH_BIAS = 0x0D1F;
        case DEPTH_CLEAR_VALUE = 0x0B73;
        case DEPTH_FUNC = 0x0B74;
        case MAX_FRAMEBUFFER_LAYERS = 0x9317;
        case CURRENT_RASTER_INDEX = 0x0B05;
        case MAX_RENDERBUFFER_SIZE = 0x84E8;
        case MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;
        case MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
        case MAX_VERTEX_ATTRIB_BINDINGS = 0x82DA;
        case MAX_SAMPLE_MASK_WORDS = 0x8E59;
        case PACK_SKIP_PIXELS = 0x0D04;
        case ALPHA_TEST_REF = 0x0BC2;
        case STENCIL_BACK_VALUE_MASK = 0x8CA4;
        case MAX_FRAMEBUFFER_SAMPLES = 0x9318;
        case TEXTURE_2D = 0x0DE1;
        case VIEWPORT_SUBPIXEL_BITS = 0x825C;
        case MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32;
        case ALPHA_SCALE = 0x0D1C;
        case INDEX_CLEAR_VALUE = 0x0C20;
        case TEXTURE_1D = 0x0DE0;
        case MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8DE1;
        case VERTEX_ARRAY = 0x8074;
        case MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E1F;
        case ACTIVE_TEXTURE = 0x84E0;
        case SHADER_STORAGE_BUFFER_START = 0x90D4;
        case FEEDBACK_BUFFER_TYPE = 0x0DF2;
        case TEXTURE_VIEW_MIN_LAYER = 0x82DD;
        case UNPACK_ALIGNMENT = 0x0CF5;
        case IMAGE_BINDING_LEVEL = 0x8F3B;
        case LIST_BASE = 0x0B32;
        case MAX_LABEL_LENGTH = 0x82E8;
        case PACK_ROW_LENGTH = 0x0D02;
        case NAME_STACK_DEPTH = 0x0D70;
        case MAX_TESS_GEN_LEVEL = 0x8E7E;
        case TEXTURE_BINDING_2D_ARRAY = 0x8C1D;
        case MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9;
        case MAX_COMPUTE_ATOMIC_COUNTERS = 0x8265;
        case MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8C29;
        case ZOOM_X = 0x0D16;
        case MAP1_TEXTURE_COORD_3 = 0x0D95;
        case ZOOM_Y = 0x0D17;
        case MAP1_TEXTURE_COORD_2 = 0x0D94;
        case MAP1_TEXTURE_COORD_4 = 0x0D96;
        case MAP1_TEXTURE_COORD_1 = 0x0D93;
        case MAX_VERTEX_IMAGE_UNIFORMS = 0x90CA;
        case COLOR_MATERIAL_PARAMETER = 0x0B56;
        case FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8E5D;
        case COLOR_ARRAY = 0x8076;
        case MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;
        case UNIFORM_BUFFER_SIZE = 0x8A2A;
        case MAX_GEOMETRY_OUTPUT_VERTICES = 0x8DE0;
        case MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5E;
        case INDEX_OFFSET = 0x0D13;
        case PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
        case COLOR_ARRAY_TYPE = 0x8082;
        case TEXTURE_BINDING_CUBE_MAP = 0x8514;
        case TEXTURE_VIEW_NUM_LAYERS = 0x82DE;
        case LINE_STIPPLE_REPEAT = 0x0B26;
        case DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 0x8243;
        case IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;
        case MAX_COMBINED_SHADER_STORAGE_BLOCKS = 0x90DC;
        case MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 0x8E81;
        case MAX_COMPUTE_UNIFORM_BLOCKS = 0x91BB;
        case ALPHA_BIAS = 0x0D1D;
        case MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;
        case TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104;
        case DEBUG_LOGGED_MESSAGES = 0x9145;
        case NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
        case MAX_UNIFORM_LOCATIONS = 0x826E;
        case MIN_SAMPLE_SHADING_VALUE = 0x8C37;
        case MAX_TESS_PATCH_COMPONENTS = 0x8E84;
        case MAX_VARYING_VECTORS = 0x8DFC;
        case LOGIC_OP_MODE = 0x0BF0;
        case SAMPLE_BUFFERS = 0x80A8;
        case PACK_SKIP_IMAGES = 0x806B;
        case TEXTURE_BINDING_RECTANGLE = 0x84F6;
        case MAX_SUBROUTINES = 0x8DE7;
        case LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
        case MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92DC;
        case TEXTURE_BUFFER_OFFSET_ALIGNMENT = 0x919F;
        case POINT_SMOOTH_HINT = 0x0C51;
        case MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;
        case POINT_SIZE = 0x0B11;
        case INDEX_BITS = 0x0D51;
        case MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 0x8E82;
        case TEXTURE_IMMUTABLE_LEVELS = 0x82DF;
        case MAX_DRAW_BUFFERS = 0x8824;
        case STENCIL_CLEAR_VALUE = 0x0B91;
        case DRAW_BUFFER = 0x0C01;
        case MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264;
        case UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34;
        case SMOOTH_POINT_SIZE_RANGE = 0x0B12;
        case SHADE_MODEL = 0x0B54;
        case ACCUM_GREEN_BITS = 0x0D59;
        case POLYGON_OFFSET_UNITS = 0x2A00;
        case COLOR_LOGIC_OP = 0x0BF2;
        case TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;
        case TEXTURE_BUFFER_BINDING = 0x8C2A;
        case MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262;
        case CURRENT_RASTER_COLOR = 0x0B04;
        case MAX_GEOMETRY_UNIFORM_COMPONENTS = 0x8DDF;
        case COPY_WRITE_BUFFER_BINDING = 0x8F37;
        case MAX_COMBINED_CLIP_AND_CULL_DISTANCES = 0x82FA;
        case UNIFORM_BUFFER_START = 0x8A29;
        case PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
        case MAP1_GRID_SEGMENTS = 0x0DD1;
        case MAX_VIEWPORT_DIMS = 0x0D3A;
        case MAX_PATCH_VERTICES = 0x8E7D;
        case MAX_TESS_CONTROL_UNIFORM_BLOCKS = 0x8E89;
        case DRAW_INDIRECT_BUFFER_BINDING = 0x8F43;
        case BLEND_DST_ALPHA = 0x80CA;
        case VIEWPORT_BOUNDS_RANGE = 0x825D;
        case FOG_END = 0x0B64;
        case TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
        case NORMAL_ARRAY_TYPE = 0x807E;
        case NUM_PROGRAM_BINARY_FORMATS = 0x87FE;
        case MAX_TEXTURE_IMAGE_UNITS = 0x8872;
        case SAMPLER_BINDING = 0x8919;
        case EDGE_FLAG_ARRAY = 0x8079;
        case BLEND_EQUATION_RGB = 0x8009;
        case MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92D8;
        case MAX_CLIP_DISTANCES = 0x0D32;
        case MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125;
        case TEXTURE_GEN_Q = 0x0C63;
        case TEXTURE_GEN_R = 0x0C62;
        case TEXTURE_GEN_S = 0x0C60;
        case TEXTURE_GEN_T = 0x0C61;
        case MAX_DUAL_SOURCE_DRAW_BUFFERS = 0x88FC;
        case SAMPLE_COVERAGE_INVERT = 0x80AB;
        case EDGE_FLAG = 0x0B43;
        case MAX_DEBUG_GROUP_STACK_DEPTH = 0x826C;
        case MODELVIEW_MATRIX = 0x0BA6;
        case MAP2_TEXTURE_COORD_4 = 0x0DB6;
        case MAP2_TEXTURE_COORD_3 = 0x0DB5;
        case MAP2_TEXTURE_COORD_2 = 0x0DB4;
        case MAX_INTEGER_SAMPLES = 0x9110;
        case MAP2_TEXTURE_COORD_1 = 0x0DB3;
        case LIGHT6 = 0x4006;
        case PROVOKING_VERTEX = 0x8E4F;
        case MAX_FRAGMENT_ATOMIC_COUNTERS = 0x92D6;
        case LIGHT7 = 0x4007;
        case LIGHT4 = 0x4004;
        case INDEX_WRITEMASK = 0x0C21;
        case BLUE_BITS = 0x0D54;
        case LIGHT5 = 0x4005;
        case INDEX_SHIFT = 0x0D12;
        case MAX_ATTRIB_STACK_DEPTH = 0x0D35;
        case DRAW_FRAMEBUFFER_BINDING = 0x8CA6;
        case LIGHT2 = 0x4002;
        case LIGHT3 = 0x4003;
        case INDEX_MODE = 0x0C30;
        case LIGHT0 = 0x4000;
        case LIGHT1 = 0x4001;
        case MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 0x90D7;
        case PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
        case PROGRAM_POINT_SIZE = 0x8642;
        case MAX_UNIFORM_BLOCK_SIZE = 0x8A30;
        case STENCIL_FUNC = 0x0B92;
        case CURRENT_INDEX = 0x0B01;
        case MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;
        case INDEX_LOGIC_OP = 0x0BF1;
        case FOG_DENSITY = 0x0B62;
        case MAX_VERTEX_STREAMS = 0x8E71;
        case PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
        case IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;
        case MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5F;
        case MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 0x8E85;
        case MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;
        case COMPRESSED_TEXTURE_FORMATS = 0x86A3;
        case MAP_COLOR = 0x0D10;
        case DITHER = 0x0BD0;
        case MAX_SHADER_STORAGE_BLOCK_SIZE = 0x90DE;
        case MAP1_VERTEX_3 = 0x0D97;
        case MAP1_VERTEX_4 = 0x0D98;
        case MINOR_VERSION = 0x821C;
        case STENCIL_FAIL = 0x0B94;
        case MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 0x90D9;
        case DEBUG_GROUP_STACK_DEPTH = 0x826D;
        case TEXTURE_BINDING_1D_ARRAY = 0x8C1C;
        case FOG = 0x0B60;
        case FOG_START = 0x0B63;
        case SUBPIXEL_BITS = 0x0D50;
        case POLYGON_SMOOTH_HINT = 0x0C53;
        case RED_BIAS = 0x0D15;
        case MAX_VIEWPORTS = 0x825B;
        case VERTEX_ARRAY_BINDING = 0x85B5;
        case INDEX_ARRAY_TYPE = 0x8085;
        case MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;
        case MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92CE;
        case MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
        case DISPATCH_INDIRECT_BUFFER_BINDING = 0x90EF;
        case PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;
        case PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
        case MAX_SUBROUTINE_UNIFORM_LOCATIONS = 0x8DE8;
        case MAX_EVAL_ORDER = 0x0D30;
        case MAP2_GRID_DOMAIN = 0x0DD2;
        case MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;
        case MAX_ELEMENTS_INDICES = 0x80E9;
        case CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
        case MAX_IMAGE_SAMPLES = 0x906D;
        case PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
        case RED_SCALE = 0x0D14;
        case MAX_COLOR_TEXTURE_SAMPLES = 0x910E;
    }
    [AllowDuplicates]
    public enum ClipPlaneName : uint32 {
        case CLIP_DISTANCE1 = 0x3001;
        case CLIP_DISTANCE0 = 0x3000;
        case CLIP_DISTANCE3 = 0x3003;
        case CLIP_PLANE0 = 0x3000;
        case CLIP_DISTANCE2 = 0x3002;
        case CLIP_PLANE1 = 0x3001;
        case CLIP_DISTANCE5 = 0x3005;
        case CLIP_PLANE2 = 0x3002;
        case CLIP_DISTANCE4 = 0x3004;
        case CLIP_PLANE3 = 0x3003;
        case CLIP_DISTANCE7 = 0x3007;
        case CLIP_PLANE4 = 0x3004;
        case CLIP_DISTANCE6 = 0x3006;
        case CLIP_PLANE5 = 0x3005;
    }
    [AllowDuplicates]
    public enum FramebufferTarget : uint32 {
        case DRAW_FRAMEBUFFER = 0x8CA9;
        case READ_FRAMEBUFFER = 0x8CA8;
        case FRAMEBUFFER = 0x8D40;
    }
    [AllowDuplicates]
    public enum DrawElementsType : uint32 {
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum TextureMagFilter : uint32 {
        case LINEAR = 0x2601;
        case NEAREST = 0x2600;
    }
    [AllowDuplicates]
    public enum IndexMaterialParameterEXT : uint32 {
        case INDEX_OFFSET = 0x0D13;
    }
    [AllowDuplicates]
    public enum FogMode : uint32 {
        case EXP = 0x0800;
        case LINEAR = 0x2601;
        case EXP2 = 0x0801;
    }
    [AllowDuplicates]
    public enum VertexAttribPointerType : uint32 {
        case INT_2_10_10_10_REV = 0x8D9F;
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case BYTE = 0x1400;
        case HALF_FLOAT = 0x140B;
        case UNSIGNED_INT = 0x1405;
        case UNSIGNED_INT_2_10_10_10_REV = 0x8368;
        case INT = 0x1404;
        case UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;
        case UNSIGNED_SHORT = 0x1403;
        case FIXED = 0x140C;
        case UNSIGNED_BYTE = 0x1401;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum StringName : uint32 {
        case VERSION = 0x1F02;
        case SHADING_LANGUAGE_VERSION = 0x8B8C;
        case VENDOR = 0x1F00;
        case RENDERER = 0x1F01;
        case EXTENSIONS = 0x1F03;
    }
    [AllowDuplicates]
    public enum VertexAttribPropertyARB : uint32 {
        case VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
        case VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;
        case VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
        case CURRENT_VERTEX_ATTRIB = 0x8626;
        case VERTEX_ATTRIB_ARRAY_LONG = 0x874E;
        case VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
        case VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D5;
        case VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
        case VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
        case VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
        case VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
        case VERTEX_ATTRIB_BINDING = 0x82D4;
    }
    [AllowDuplicates]
    public enum PixelCopyType : uint32 {
        case DEPTH = 0x1801;
        case COLOR = 0x1800;
        case STENCIL = 0x1802;
    }
    [AllowDuplicates]
    public enum ListNameType : uint32 {
        case _3BYTES = 0x1408;
        case FLOAT = 0x1406;
        case BYTE = 0x1400;
        case INT = 0x1404;
        case _2BYTES = 0x1407;
        case UNSIGNED_SHORT = 0x1403;
        case _4BYTES = 0x1409;
        case UNSIGNED_BYTE = 0x1401;
        case SHORT = 0x1402;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum ProgramStagePName : uint32 {
        case ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 0x8E47;
        case ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8E49;
        case ACTIVE_SUBROUTINES = 0x8DE5;
        case ACTIVE_SUBROUTINE_MAX_LENGTH = 0x8E48;
        case ACTIVE_SUBROUTINE_UNIFORMS = 0x8DE6;
    }
    [AllowDuplicates]
    public enum PixelTexGenMode : uint32 {
        case RGB = 0x1907;
        case LUMINANCE_ALPHA = 0x190A;
        case RGBA = 0x1908;
        case LUMINANCE = 0x1909;
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum TextureCompareMode : uint32 {
        case COMPARE_R_TO_TEXTURE = 0x884E;
        case COMPARE_REF_TO_TEXTURE = 0x884E;
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum SubroutineParameterName : uint32 {
        case UNIFORM_SIZE = 0x8A38;
        case UNIFORM_NAME_LENGTH = 0x8A39;
        case NUM_COMPATIBLE_SUBROUTINES = 0x8E4A;
        case COMPATIBLE_SUBROUTINES = 0x8E4B;
    }
    [AllowDuplicates]
    public enum VertexShaderTextureUnitParameter : uint32 {
        case TEXTURE_MATRIX = 0x0BA8;
        case CURRENT_TEXTURE_COORDS = 0x0B03;
    }
    [AllowDuplicates]
    public enum SeparableTarget : uint32 {
        case SEPARABLE_2D = 0x8012;
    }
    [AllowDuplicates]
    public enum NormalPointerType : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case BYTE = 0x1400;
        case INT = 0x1404;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum MapTarget : uint32 {
        case MAP2_INDEX = 0x0DB1;
        case MAP1_TEXTURE_COORD_3 = 0x0D95;
        case MAP1_TEXTURE_COORD_2 = 0x0D94;
        case MAP1_TEXTURE_COORD_4 = 0x0D96;
        case MAP1_TEXTURE_COORD_1 = 0x0D93;
        case MAP2_VERTEX_4 = 0x0DB8;
        case MAP2_TEXTURE_COORD_4 = 0x0DB6;
        case MAP2_VERTEX_3 = 0x0DB7;
        case MAP2_TEXTURE_COORD_3 = 0x0DB5;
        case MAP1_COLOR_4 = 0x0D90;
        case MAP2_TEXTURE_COORD_2 = 0x0DB4;
        case MAP2_TEXTURE_COORD_1 = 0x0DB3;
        case MAP1_INDEX = 0x0D91;
        case MAP1_NORMAL = 0x0D92;
        case MAP2_NORMAL = 0x0DB2;
        case MAP1_VERTEX_3 = 0x0D97;
        case MAP2_COLOR_4 = 0x0DB0;
        case MAP1_VERTEX_4 = 0x0D98;
    }
    [AllowDuplicates]
    public enum ClientAttribMask : uint32 {
        case CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
        case CLIENT_PIXEL_STORE_BIT = 0x00000001;
        case CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF;
    }
    [AllowDuplicates]
    public enum ContextProfileMask : uint32 {
        case CONTEXT_CORE_PROFILE_BIT = 0x00000001;
        case CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002;
    }
    [AllowDuplicates]
    public enum ColorMaterialFace : uint32 {
        case FRONT = 0x0404;
        case BACK = 0x0405;
        case FRONT_AND_BACK = 0x0408;
    }
    [AllowDuplicates]
    public enum AccumOp : uint32 {
        case ACCUM = 0x0100;
        case MULT = 0x0103;
        case ADD = 0x0104;
        case LOAD = 0x0101;
        case RETURN = 0x0102;
    }
    [AllowDuplicates]
    public enum MatrixIndexPointerTypeARB : uint32 {
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum LightParameter : uint32 {
        case CONSTANT_ATTENUATION = 0x1207;
        case LINEAR_ATTENUATION = 0x1208;
        case QUADRATIC_ATTENUATION = 0x1209;
        case SPOT_CUTOFF = 0x1206;
        case POSITION = 0x1203;
        case SPOT_DIRECTION = 0x1204;
        case SPOT_EXPONENT = 0x1205;
    }
    [AllowDuplicates]
    public enum PathColor : uint32 {
        case PRIMARY_COLOR = 0x8577;
    }
    [AllowDuplicates]
    public enum VertexArrayPName : uint32 {
        case VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
        case VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;
        case VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
        case VERTEX_ATTRIB_ARRAY_LONG = 0x874E;
        case VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;
        case VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D5;
        case VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
        case VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
        case VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
    }
    [AllowDuplicates]
    public enum TexCoordPointerType : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case INT = 0x1404;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum PointParameterNameARB : uint32 {
        case POINT_FADE_THRESHOLD_SIZE = 0x8128;
        case POINT_SPRITE_COORD_ORIGIN = 0x8CA0;
    }
    [AllowDuplicates]
    public enum HistogramTargetEXT : uint32 {
        case PROXY_HISTOGRAM = 0x8025;
        case HISTOGRAM = 0x8024;
    }
    [AllowDuplicates]
    public enum BufferUsageARB : uint32 {
        case STATIC_COPY = 0x88E6;
        case STATIC_DRAW = 0x88E4;
        case STREAM_READ = 0x88E1;
        case DYNAMIC_DRAW = 0x88E8;
        case DYNAMIC_READ = 0x88E9;
        case DYNAMIC_COPY = 0x88EA;
        case STATIC_READ = 0x88E5;
        case STREAM_DRAW = 0x88E0;
        case STREAM_COPY = 0x88E2;
    }
    [AllowDuplicates]
    public enum ListMode : uint32 {
        case COMPILE_AND_EXECUTE = 0x1301;
        case COMPILE = 0x1300;
    }
    [AllowDuplicates]
    public enum FogParameter : uint32 {
        case FOG_COLOR = 0x0B66;
        case FOG_END = 0x0B64;
        case FOG_DENSITY = 0x0B62;
        case FOG_INDEX = 0x0B61;
        case FOG_START = 0x0B63;
        case FOG_MODE = 0x0B65;
    }
    [AllowDuplicates]
    public enum LightModelParameter : uint32 {
        case LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
        case LIGHT_MODEL_TWO_SIDE = 0x0B52;
        case LIGHT_MODEL_COLOR_CONTROL = 0x81F8;
        case LIGHT_MODEL_AMBIENT = 0x0B53;
    }
    [AllowDuplicates]
    public enum InterleavedArrayFormat : uint32 {
        case N3F_V3F = 0x2A25;
        case T2F_C3F_V3F = 0x2A2A;
        case T2F_C4F_N3F_V3F = 0x2A2C;
        case C3F_V3F = 0x2A24;
        case T2F_N3F_V3F = 0x2A2B;
        case V3F = 0x2A21;
        case C4UB_V2F = 0x2A22;
        case C4UB_V3F = 0x2A23;
        case C4F_N3F_V3F = 0x2A26;
        case V2F = 0x2A20;
        case T2F_C4UB_V3F = 0x2A29;
        case T4F_V4F = 0x2A28;
        case T2F_V3F = 0x2A27;
        case T4F_C4F_N3F_V4F = 0x2A2D;
    }
    [AllowDuplicates]
    public enum ColorBuffer : uint32 {
        case COLOR_ATTACHMENT15 = 0x8CEF;
        case COLOR_ATTACHMENT14 = 0x8CEE;
        case COLOR_ATTACHMENT17 = 0x8CF1;
        case COLOR_ATTACHMENT16 = 0x8CF0;
        case COLOR_ATTACHMENT0 = 0x8CE0;
        case COLOR_ATTACHMENT11 = 0x8CEB;
        case FRONT = 0x0404;
        case COLOR_ATTACHMENT10 = 0x8CEA;
        case COLOR_ATTACHMENT13 = 0x8CED;
        case FRONT_RIGHT = 0x0401;
        case COLOR_ATTACHMENT12 = 0x8CEC;
        case LEFT = 0x0406;
        case COLOR_ATTACHMENT4 = 0x8CE4;
        case COLOR_ATTACHMENT3 = 0x8CE3;
        case COLOR_ATTACHMENT2 = 0x8CE2;
        case COLOR_ATTACHMENT31 = 0x8CFF;
        case COLOR_ATTACHMENT1 = 0x8CE1;
        case COLOR_ATTACHMENT30 = 0x8CFE;
        case COLOR_ATTACHMENT8 = 0x8CE8;
        case COLOR_ATTACHMENT7 = 0x8CE7;
        case COLOR_ATTACHMENT6 = 0x8CE6;
        case COLOR_ATTACHMENT5 = 0x8CE5;
        case BACK_LEFT = 0x0402;
        case FRONT_AND_BACK = 0x0408;
        case BACK_RIGHT = 0x0403;
        case FRONT_LEFT = 0x0400;
        case COLOR_ATTACHMENT29 = 0x8CFD;
        case COLOR_ATTACHMENT26 = 0x8CFA;
        case COLOR_ATTACHMENT25 = 0x8CF9;
        case COLOR_ATTACHMENT28 = 0x8CFC;
        case COLOR_ATTACHMENT27 = 0x8CFB;
        case COLOR_ATTACHMENT22 = 0x8CF6;
        case BACK = 0x0405;
        case COLOR_ATTACHMENT21 = 0x8CF5;
        case COLOR_ATTACHMENT24 = 0x8CF8;
        case COLOR_ATTACHMENT23 = 0x8CF7;
        case COLOR_ATTACHMENT20 = 0x8CF4;
        case RIGHT = 0x0407;
        case COLOR_ATTACHMENT9 = 0x8CE9;
        case NONE = 0;
        case COLOR_ATTACHMENT19 = 0x8CF3;
        case COLOR_ATTACHMENT18 = 0x8CF2;
    }
    [AllowDuplicates]
    public enum PixelFormat : uint32 {
        case RG = 0x8227;
        case DEPTH_STENCIL = 0x84F9;
        case ALPHA = 0x1906;
        case LUMINANCE = 0x1909;
        case UNSIGNED_INT = 0x1405;
        case BLUE = 0x1905;
        case RGB = 0x1907;
        case BGR = 0x80E0;
        case RED = 0x1903;
        case GREEN_INTEGER = 0x8D95;
        case RED_INTEGER = 0x8D94;
        case BGR_INTEGER = 0x8D9A;
        case STENCIL_INDEX = 0x1901;
        case RGB_INTEGER = 0x8D98;
        case LUMINANCE_ALPHA = 0x190A;
        case RGBA = 0x1908;
        case BGRA = 0x80E1;
        case RGBA_INTEGER = 0x8D99;
        case DEPTH_COMPONENT = 0x1902;
        case RG_INTEGER = 0x8228;
        case BGRA_INTEGER = 0x8D9B;
        case COLOR_INDEX = 0x1900;
        case GREEN = 0x1904;
        case UNSIGNED_SHORT = 0x1403;
        case BLUE_INTEGER = 0x8D96;
    }
    [AllowDuplicates]
    public enum VertexBufferObjectUsage : uint32 {
        case STATIC_COPY = 0x88E6;
        case STATIC_DRAW = 0x88E4;
        case STREAM_READ = 0x88E1;
        case DYNAMIC_DRAW = 0x88E8;
        case DYNAMIC_READ = 0x88E9;
        case DYNAMIC_COPY = 0x88EA;
        case STATIC_READ = 0x88E5;
        case STREAM_DRAW = 0x88E0;
        case STREAM_COPY = 0x88E2;
    }
    [AllowDuplicates]
    public enum ProgramInterfacePName : uint32 {
        case MAX_NUM_ACTIVE_VARIABLES = 0x92F7;
        case MAX_NUM_COMPATIBLE_SUBROUTINES = 0x92F8;
        case MAX_NAME_LENGTH = 0x92F6;
        case ACTIVE_RESOURCES = 0x92F5;
    }
    [AllowDuplicates]
    public enum MatrixMode : uint32 {
        case PROJECTION = 0x1701;
        case TEXTURE = 0x1702;
        case MODELVIEW = 0x1700;
    }
    [AllowDuplicates]
    public enum BufferStorageMask : uint32 {
        case MAP_COHERENT_BIT = 0x0080;
        case CLIENT_STORAGE_BIT = 0x0200;
        case DYNAMIC_STORAGE_BIT = 0x0100;
        case MAP_PERSISTENT_BIT = 0x0040;
        case MAP_WRITE_BIT = 0x0002;
        case MAP_READ_BIT = 0x0001;
    }
    [AllowDuplicates]
    public enum HintTarget : uint32 {
        case POINT_SMOOTH_HINT = 0x0C51;
        case LINE_SMOOTH_HINT = 0x0C52;
        case FOG_HINT = 0x0C54;
        case TEXTURE_COMPRESSION_HINT = 0x84EF;
        case PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257;
        case FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;
        case GENERATE_MIPMAP_HINT = 0x8192;
        case PERSPECTIVE_CORRECTION_HINT = 0x0C50;
        case POLYGON_SMOOTH_HINT = 0x0C53;
    }
    [AllowDuplicates]
    public enum TextureWrapMode : uint32 {
        case LINEAR_MIPMAP_LINEAR = 0x2703;
        case CLAMP_TO_BORDER = 0x812D;
        case REPEAT = 0x2901;
        case MIRROR_CLAMP_TO_EDGE = 0x8743;
        case MIRRORED_REPEAT = 0x8370;
        case CLAMP = 0x2900;
        case CLAMP_TO_EDGE = 0x812F;
    }
    [AllowDuplicates]
    public enum InternalFormat : uint32 {
        case RGB10_A2UI = 0x906F;
        case COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279;
        case COMPRESSED_RGB = 0x84ED;
        case R8I = 0x8231;
        case STENCIL_INDEX4 = 0x8D47;
        case RG8UI = 0x8238;
        case STENCIL_INDEX1 = 0x8D46;
        case RG32F = 0x8230;
        case RG32I = 0x823B;
        case STENCIL_INDEX = 0x1901;
        case INTENSITY16 = 0x804D;
        case RG16I = 0x8239;
        case LUMINANCE12_ALPHA12 = 0x8047;
        case INTENSITY12 = 0x804C;
        case R16 = 0x822A;
        case COMPRESSED_RED_RGTC1 = 0x8DBB;
        case RG16F = 0x822F;
        case RGBA16UI = 0x8D76;
        case RGBA8 = 0x8058;
        case RGBA4 = 0x8056;
        case RGBA2 = 0x8055;
        case SRGB8_ALPHA8 = 0x8C43;
        case RGB8I = 0x8D8F;
        case COMPRESSED_RG_RGTC2 = 0x8DBD;
        case STENCIL_INDEX8 = 0x8D48;
        case R32UI = 0x8236;
        case DEPTH_COMPONENT32 = 0x81A7;
        case RGBA16_SNORM = 0x8F9B;
        case RG16_SNORM = 0x8F99;
        case RGB16 = 0x8054;
        case RGB12 = 0x8053;
        case RGB10 = 0x8052;
        case LUMINANCE16 = 0x8042;
        case R3_G3_B2 = 0x2A10;
        case R11F_G11F_B10F = 0x8C3A;
        case COMPRESSED_SIGNED_R11_EAC = 0x9271;
        case COMPRESSED_RG = 0x8226;
        case COMPRESSED_RGB8_ETC2 = 0x9274;
        case RGBA8_SNORM = 0x8F97;
        case RGBA16I = 0x8D88;
        case RGBA16F = 0x881A;
        case LUMINANCE8 = 0x8040;
        case RGBA8UI = 0x8D7C;
        case LUMINANCE4 = 0x803F;
        case RGBA32I = 0x8D82;
        case COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = 0x8E8F;
        case COMPRESSED_RG11_EAC = 0x9272;
        case COMPRESSED_RGBA = 0x84EE;
        case RGB16_SNORM = 0x8F9A;
        case RGBA32F = 0x8814;
        case DEPTH24_STENCIL8 = 0x88F0;
        case INTENSITY8 = 0x804B;
        case ALPHA16 = 0x803E;
        case INTENSITY4 = 0x804A;
        case RGBA32UI = 0x8D70;
        case ALPHA12 = 0x803D;
        case DEPTH_COMPONENT = 0x1902;
        case LUMINANCE12_ALPHA4 = 0x8046;
        case R16UI = 0x8234;
        case COMPRESSED_RGBA8_ETC2_EAC = 0x9278;
        case SRGB = 0x8C40;
        case LUMINANCE12 = 0x8041;
        case LUMINANCE16_ALPHA16 = 0x8048;
        case INTENSITY = 0x8049;
        case SRGB_ALPHA = 0x8C42;
        case COMPRESSED_RGBA_BPTC_UNORM = 0x8E8C;
        case SRGB8 = 0x8C41;
        case COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277;
        case RGB16UI = 0x8D77;
        case RED = 0x1903;
        case COMPRESSED_SRGB_ALPHA_BPTC_UNORM = 0x8E8D;
        case LUMINANCE6_ALPHA2 = 0x8044;
        case COMPRESSED_SRGB = 0x8C48;
        case LUMINANCE8_ALPHA8 = 0x8045;
        case LUMINANCE4_ALPHA4 = 0x8043;
        case COMPRESSED_SIGNED_RED_RGTC1 = 0x8DBC;
        case R8_SNORM = 0x8F94;
        case RGB8UI = 0x8D7D;
        case R16F = 0x822D;
        case R32F = 0x822E;
        case RGBA = 0x1908;
        case RGB8_SNORM = 0x8F96;
        case R16I = 0x8233;
        case DEPTH32F_STENCIL8 = 0x8CAD;
        case RGB5 = 0x8050;
        case RGB16I = 0x8D89;
        case RGB4 = 0x804F;
        case RGB32F = 0x8815;
        case COMPRESSED_R11_EAC = 0x9270;
        case DEPTH_COMPONENT32F = 0x8CAC;
        case RGB8 = 0x8051;
        case RGB32I = 0x8D83;
        case COMPRESSED_SRGB8_ETC2 = 0x9275;
        case RG32UI = 0x823C;
        case RGB16F = 0x881B;
        case R32I = 0x8235;
        case RGB10_A2 = 0x8059;
        case R16_SNORM = 0x8F98;
        case R8UI = 0x8232;
        case RG = 0x8227;
        case DEPTH_STENCIL = 0x84F9;
        case COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276;
        case COMPRESSED_SRGB_ALPHA = 0x8C49;
        case RG8 = 0x822B;
        case RGB9_E5 = 0x8C3D;
        case RGBA16 = 0x805B;
        case RG8I = 0x8237;
        case RGB5_A1 = 0x8057;
        case R8 = 0x8229;
        case COMPRESSED_RED = 0x8225;
        case RGB = 0x1907;
        case ALPHA4 = 0x803B;
        case ALPHA8 = 0x803C;
        case RGBA12 = 0x805A;
        case COMPRESSED_SIGNED_RG11_EAC = 0x9273;
        case DEPTH_COMPONENT24 = 0x81A6;
        case RG16 = 0x822C;
        case RG8_SNORM = 0x8F95;
        case RGB32UI = 0x8D71;
        case COMPRESSED_SIGNED_RG_RGTC2 = 0x8DBE;
        case RGBA8I = 0x8D8E;
        case STENCIL_INDEX16 = 0x8D49;
        case COMPRESSED_RGB_BPTC_SIGNED_FLOAT = 0x8E8E;
        case RG16UI = 0x823A;
        case DEPTH_COMPONENT16 = 0x81A5;
    }
    [AllowDuplicates]
    public enum DebugType : uint32 {
        case DEBUG_TYPE_PUSH_GROUP = 0x8269;
        case DEBUG_TYPE_MARKER = 0x8268;
        case DEBUG_TYPE_ERROR = 0x824C;
        case DEBUG_TYPE_PERFORMANCE = 0x8250;
        case DEBUG_TYPE_PORTABILITY = 0x824F;
        case DONT_CARE = 0x1100;
        case DEBUG_TYPE_DEPRECATED_BEHAVIOR = 0x824D;
        case DEBUG_TYPE_UNDEFINED_BEHAVIOR = 0x824E;
        case DEBUG_TYPE_OTHER = 0x8251;
        case DEBUG_TYPE_POP_GROUP = 0x826A;
    }
    [AllowDuplicates]
    public enum SizedInternalFormat : uint32 {
        case RGB10_A2UI = 0x906F;
        case COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279;
        case R8I = 0x8231;
        case STENCIL_INDEX4 = 0x8D47;
        case RG8UI = 0x8238;
        case STENCIL_INDEX1 = 0x8D46;
        case RG32F = 0x8230;
        case RG32I = 0x823B;
        case INTENSITY16 = 0x804D;
        case RG16I = 0x8239;
        case LUMINANCE12_ALPHA12 = 0x8047;
        case INTENSITY12 = 0x804C;
        case R16 = 0x822A;
        case COMPRESSED_RED_RGTC1 = 0x8DBB;
        case RG16F = 0x822F;
        case RGBA16UI = 0x8D76;
        case RGBA8 = 0x8058;
        case RGBA4 = 0x8056;
        case RGBA2 = 0x8055;
        case SRGB8_ALPHA8 = 0x8C43;
        case RGB8I = 0x8D8F;
        case COMPRESSED_RG_RGTC2 = 0x8DBD;
        case STENCIL_INDEX8 = 0x8D48;
        case R32UI = 0x8236;
        case DEPTH_COMPONENT32 = 0x81A7;
        case RGBA16_SNORM = 0x8F9B;
        case RG16_SNORM = 0x8F99;
        case RGB16 = 0x8054;
        case RGB12 = 0x8053;
        case RGB10 = 0x8052;
        case LUMINANCE16 = 0x8042;
        case R3_G3_B2 = 0x2A10;
        case R11F_G11F_B10F = 0x8C3A;
        case COMPRESSED_SIGNED_R11_EAC = 0x9271;
        case COMPRESSED_RGB8_ETC2 = 0x9274;
        case RGBA8_SNORM = 0x8F97;
        case RGBA16I = 0x8D88;
        case RGBA16F = 0x881A;
        case LUMINANCE8 = 0x8040;
        case RGBA8UI = 0x8D7C;
        case LUMINANCE4 = 0x803F;
        case RGBA32I = 0x8D82;
        case COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = 0x8E8F;
        case COMPRESSED_RG11_EAC = 0x9272;
        case RGB16_SNORM = 0x8F9A;
        case RGBA32F = 0x8814;
        case DEPTH24_STENCIL8 = 0x88F0;
        case INTENSITY8 = 0x804B;
        case ALPHA16 = 0x803E;
        case INTENSITY4 = 0x804A;
        case RGBA32UI = 0x8D70;
        case ALPHA12 = 0x803D;
        case LUMINANCE12_ALPHA4 = 0x8046;
        case R16UI = 0x8234;
        case COMPRESSED_RGBA8_ETC2_EAC = 0x9278;
        case LUMINANCE12 = 0x8041;
        case LUMINANCE16_ALPHA16 = 0x8048;
        case COMPRESSED_RGBA_BPTC_UNORM = 0x8E8C;
        case SRGB8 = 0x8C41;
        case COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277;
        case RGB16UI = 0x8D77;
        case COMPRESSED_SRGB_ALPHA_BPTC_UNORM = 0x8E8D;
        case LUMINANCE6_ALPHA2 = 0x8044;
        case LUMINANCE8_ALPHA8 = 0x8045;
        case LUMINANCE4_ALPHA4 = 0x8043;
        case COMPRESSED_SIGNED_RED_RGTC1 = 0x8DBC;
        case R8_SNORM = 0x8F94;
        case RGB8UI = 0x8D7D;
        case R16F = 0x822D;
        case R32F = 0x822E;
        case RGB8_SNORM = 0x8F96;
        case R16I = 0x8233;
        case DEPTH32F_STENCIL8 = 0x8CAD;
        case RGB5 = 0x8050;
        case RGB16I = 0x8D89;
        case RGB4 = 0x804F;
        case RGB32F = 0x8815;
        case COMPRESSED_R11_EAC = 0x9270;
        case DEPTH_COMPONENT32F = 0x8CAC;
        case RGB8 = 0x8051;
        case RGB32I = 0x8D83;
        case COMPRESSED_SRGB8_ETC2 = 0x9275;
        case RG32UI = 0x823C;
        case RGB16F = 0x881B;
        case R32I = 0x8235;
        case RGB10_A2 = 0x8059;
        case R16_SNORM = 0x8F98;
        case R8UI = 0x8232;
        case COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276;
        case RG8 = 0x822B;
        case RGB9_E5 = 0x8C3D;
        case RGBA16 = 0x805B;
        case RG8I = 0x8237;
        case RGB5_A1 = 0x8057;
        case R8 = 0x8229;
        case ALPHA4 = 0x803B;
        case ALPHA8 = 0x803C;
        case RGBA12 = 0x805A;
        case COMPRESSED_SIGNED_RG11_EAC = 0x9273;
        case DEPTH_COMPONENT24 = 0x81A6;
        case RG16 = 0x822C;
        case RG8_SNORM = 0x8F95;
        case RGB32UI = 0x8D71;
        case COMPRESSED_SIGNED_RG_RGTC2 = 0x8DBE;
        case RGBA8I = 0x8D8E;
        case STENCIL_INDEX16 = 0x8D49;
        case COMPRESSED_RGB_BPTC_SIGNED_FLOAT = 0x8E8E;
        case RG16UI = 0x823A;
        case DEPTH_COMPONENT16 = 0x81A5;
    }
    [AllowDuplicates]
    public enum TextureSwizzle : uint32 {
        case BLUE = 0x1905;
        case GREEN = 0x1904;
        case RED = 0x1903;
        case ALPHA = 0x1906;
        case ZERO = 0;
        case ONE = 1;
    }
    [AllowDuplicates]
    public enum StencilFaceDirection : uint32 {
        case FRONT = 0x0404;
        case BACK = 0x0405;
        case FRONT_AND_BACK = 0x0408;
    }
    [AllowDuplicates]
    public enum TextureTarget : uint32 {
        case PROXY_TEXTURE_2D = 0x8064;
        case PROXY_TEXTURE_2D_MULTISAMPLE = 0x9101;
        case TEXTURE_CUBE_MAP_ARRAY = 0x9009;
        case PROXY_TEXTURE_2D_ARRAY = 0x8C1B;
        case PROXY_TEXTURE_1D_ARRAY = 0x8C19;
        case TEXTURE_2D = 0x0DE1;
        case TEXTURE_1D_ARRAY = 0x8C18;
        case PROXY_TEXTURE_CUBE_MAP = 0x851B;
        case TEXTURE_2D_ARRAY = 0x8C1A;
        case TEXTURE_2D_MULTISAMPLE = 0x9100;
        case TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
        case TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
        case TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
        case PROXY_TEXTURE_3D = 0x8070;
        case PROXY_TEXTURE_1D = 0x8063;
        case TEXTURE_RECTANGLE = 0x84F5;
        case TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
        case TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
        case TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
        case TEXTURE_CUBE_MAP = 0x8513;
        case TEXTURE_3D = 0x806F;
        case TEXTURE_1D = 0x0DE0;
        case TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9102;
        case PROXY_TEXTURE_RECTANGLE = 0x84F7;
        case TEXTURE_BUFFER = 0x8C2A;
        case PROXY_TEXTURE_CUBE_MAP_ARRAY = 0x900B;
        case PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103;
    }
    [AllowDuplicates]
    public enum PipelineParameterName : uint32 {
        case VERTEX_SHADER = 0x8B31;
        case GEOMETRY_SHADER = 0x8DD9;
        case INFO_LOG_LENGTH = 0x8B84;
        case TESS_CONTROL_SHADER = 0x8E88;
        case FRAGMENT_SHADER = 0x8B30;
        case TESS_EVALUATION_SHADER = 0x8E87;
        case ACTIVE_PROGRAM = 0x8259;
    }
    [AllowDuplicates]
    public enum TangentPointerTypeEXT : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case BYTE = 0x1400;
        case INT = 0x1404;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum SpecialNumbers : uint64 {
        case INVALID_INDEX = 0xFFFFFFFF;
        case NO_ERROR = 0;
        case TRUE = 1;
        case NONE = 0;
        case FALSE = 0;
        case ZERO = 0;
        case ONE = 1;
        case TIMEOUT_IGNORED = 0xFFFFFFFFFFFFFFFF;
    }
    [AllowDuplicates]
    public enum ColorMaterialParameter : uint32 {
        case AMBIENT_AND_DIFFUSE = 0x1602;
        case AMBIENT = 0x1200;
        case SPECULAR = 0x1202;
        case EMISSION = 0x1600;
        case DIFFUSE = 0x1201;
    }
    [AllowDuplicates]
    public enum BufferStorageTarget : uint32 {
        case UNIFORM_BUFFER = 0x8A11;
        case COPY_WRITE_BUFFER = 0x8F37;
        case QUERY_BUFFER = 0x9192;
        case DISPATCH_INDIRECT_BUFFER = 0x90EE;
        case TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
        case DRAW_INDIRECT_BUFFER = 0x8F3F;
        case PIXEL_UNPACK_BUFFER = 0x88EC;
        case ELEMENT_ARRAY_BUFFER = 0x8893;
        case PIXEL_PACK_BUFFER = 0x88EB;
        case TEXTURE_BUFFER = 0x8C2A;
        case COPY_READ_BUFFER = 0x8F36;
        case ATOMIC_COUNTER_BUFFER = 0x92C0;
        case ARRAY_BUFFER = 0x8892;
        case SHADER_STORAGE_BUFFER = 0x90D2;
    }
    [AllowDuplicates]
    public enum TextureMinFilter : uint32 {
		case NEAREST = 0x2600;
		case LINEAR = 0x2601;

		case NEAREST_MIPMAP_NEAREST = 0x2700;
		case LINEAR_MIPMAP_NEAREST = 0x2701;
		case NEAREST_MIPMAP_LINEAR = 0x2702;
        case LINEAR_MIPMAP_LINEAR = 0x2703;
    }
    [AllowDuplicates]
    public enum SyncParameterName : uint32 {
        case SYNC_STATUS = 0x9114;
        case SYNC_FLAGS = 0x9115;
        case OBJECT_TYPE = 0x9112;
        case SYNC_CONDITION = 0x9113;
    }
    [AllowDuplicates]
    public enum CombinerBiasNV : uint32 {
        case NONE = 0;
    }
    [AllowDuplicates]
    public enum VertexAttribLType : uint32 {
        case DOUBLE = 0x140A;
    }
    [AllowDuplicates]
    public enum LightModelColorControl : uint32 {
        case SINGLE_COLOR = 0x81F9;
        case SEPARATE_SPECULAR_COLOR = 0x81FA;
    }
    [AllowDuplicates]
    public enum BinormalPointerTypeEXT : uint32 {
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case BYTE = 0x1400;
        case INT = 0x1404;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum ClampColorModeARB : uint32 {
        case TRUE = 1;
        case FIXED_ONLY = 0x891D;
        case FALSE = 0;
    }
    [AllowDuplicates]
    public enum StencilFunction : uint32 {
        case EQUAL = 0x0202;
        case GREATER = 0x0204;
        case LEQUAL = 0x0203;
        case NEVER = 0x0200;
        case GEQUAL = 0x0206;
        case LESS = 0x0201;
        case NOTEQUAL = 0x0205;
        case ALWAYS = 0x0207;
    }
    [AllowDuplicates]
    public enum TextureEnvTarget : uint32 {
        case TEXTURE_ENV = 0x2300;
    }
    [AllowDuplicates]
    public enum ElementPointerTypeATI : uint32 {
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum PixelType : uint32 {
        case UNSIGNED_INT_8_8_8_8 = 0x8035;
        case UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;
        case FLOAT = 0x1406;
        case BYTE = 0x1400;
        case BITMAP = 0x1A00;
        case UNSIGNED_INT_8_8_8_8_REV = 0x8367;
        case UNSIGNED_INT_24_8 = 0x84FA;
        case UNSIGNED_SHORT_4_4_4_4 = 0x8033;
        case UNSIGNED_INT_10_10_10_2 = 0x8036;
        case UNSIGNED_BYTE_2_3_3_REV = 0x8362;
        case UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;
        case UNSIGNED_INT = 0x1405;
        case UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;
        case FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;
        case INT = 0x1404;
        case UNSIGNED_SHORT_5_6_5 = 0x8363;
        case UNSIGNED_SHORT_5_6_5_REV = 0x8364;
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case SHORT = 0x1402;
        case UNSIGNED_BYTE_3_3_2 = 0x8032;
        case UNSIGNED_SHORT_5_5_5_1 = 0x8034;
    }
    [AllowDuplicates]
    public enum ColorPointerType : uint32 {
        case BYTE = 0x1400;
        case UNSIGNED_SHORT = 0x1403;
        case UNSIGNED_BYTE = 0x1401;
        case UNSIGNED_INT = 0x1405;
    }
    [AllowDuplicates]
    public enum ShaderParameterName : uint32 {
        case DELETE_STATUS = 0x8B80;
        case SHADER_SOURCE_LENGTH = 0x8B88;
        case COMPILE_STATUS = 0x8B81;
        case INFO_LOG_LENGTH = 0x8B84;
        case SHADER_TYPE = 0x8B4F;
    }
    [AllowDuplicates]
    public enum VertexAttribType : uint32 {
        case INT_2_10_10_10_REV = 0x8D9F;
        case FLOAT = 0x1406;
        case DOUBLE = 0x140A;
        case BYTE = 0x1400;
        case HALF_FLOAT = 0x140B;
        case UNSIGNED_INT = 0x1405;
        case UNSIGNED_INT_2_10_10_10_REV = 0x8368;
        case INT = 0x1404;
        case UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;
        case UNSIGNED_SHORT = 0x1403;
        case FIXED = 0x140C;
        case UNSIGNED_BYTE = 0x1401;
        case SHORT = 0x1402;
    }
    [AllowDuplicates]
    public enum SyncObjectMask : uint32 {
        case SYNC_FLUSH_COMMANDS_BIT = 0x00000001;
    }
    [AllowDuplicates]
    public enum CopyBufferSubDataTarget : uint32 {
        case UNIFORM_BUFFER = 0x8A11;
        case COPY_WRITE_BUFFER = 0x8F37;
        case QUERY_BUFFER = 0x9192;
        case DISPATCH_INDIRECT_BUFFER = 0x90EE;
        case TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;
        case DRAW_INDIRECT_BUFFER = 0x8F3F;
        case PIXEL_UNPACK_BUFFER = 0x88EC;
        case ELEMENT_ARRAY_BUFFER = 0x8893;
        case PIXEL_PACK_BUFFER = 0x88EB;
        case TEXTURE_BUFFER = 0x8C2A;
        case COPY_READ_BUFFER = 0x8F36;
        case ATOMIC_COUNTER_BUFFER = 0x92C0;
        case ARRAY_BUFFER = 0x8892;
        case SHADER_STORAGE_BUFFER = 0x90D2;
    }
    [AllowDuplicates]
    public enum RenderbufferTarget : uint32 {
        case RENDERBUFFER = 0x8D41;
    }
    [AllowDuplicates]
    public enum VertexAttribPointerPropertyARB : uint32 {
        case VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
    }
    [AllowDuplicates]
    public enum MaterialFace : uint32 {
        case FRONT = 0x0404;
        case BACK = 0x0405;
        case FRONT_AND_BACK = 0x0408;
    }
    [AllowDuplicates]
    public enum VertexWeightPointerTypeEXT : uint32 {
        case FLOAT = 0x1406;
    }
    [AllowDuplicates]
    public enum BufferAccessARB : uint32 {
        case WRITE_ONLY = 0x88B9;
        case READ_WRITE = 0x88BA;
        case READ_ONLY = 0x88B8;
    }
    public static function void(AccumOp op, float value) Accum;
    public static function void(uint32 pipeline, uint32 program) ActiveShaderProgram;
    public static function void(TextureUnit texture) ActiveTexture;
    public static function void(AlphaFunction func, float reference) AlphaFunc;
    public static function bool(int32 n, uint32* textures, Boolean* residences) AreTexturesResident;
    public static function void(int32 i) ArrayElement;
    public static function void(uint32 program, uint32 shader) AttachShader;
    public static function void(PrimitiveType mode) Begin;
    public static function void(uint32 id, ConditionalRenderMode mode) BeginConditionalRender;
    public static function void(QueryTarget target, uint32 id) BeginQuery;
    public static function void(QueryTarget target, uint32 index, uint32 id) BeginQueryIndexed;
    public static function void(PrimitiveType primitiveMode) BeginTransformFeedback;
    public static function void(uint32 program, uint32 index, char8* name) BindAttribLocation;
    public static function void(BufferTargetARB target, uint32 buffer) BindBuffer;
    public static function void(BufferTargetARB target, uint32 index, uint32 buffer) BindBufferBase;
    public static function void(BufferTargetARB target, uint32 index, uint32 buffer, int32 offset, int32 size) BindBufferRange;
    public static function void(BufferTargetARB target, uint32 first, int32 count, uint32* buffers) BindBuffersBase;
    public static function void(BufferTargetARB target, uint32 first, int32 count, uint32* buffers, int32* offsets, int32* sizes) BindBuffersRange;
    public static function void(uint32 program, uint32 color, char8* name) BindFragDataLocation;
    public static function void(uint32 program, uint32 colorNumber, uint32 index, char8* name) BindFragDataLocationIndexed;
    public static function void(FramebufferTarget target, uint32 framebuffer) BindFramebuffer;
    public static function void(uint32 unit, uint32 texture, int32 level, Boolean layered, int32 layer, BufferAccessARB access, InternalFormat format) BindImageTexture;
    public static function void(uint32 first, int32 count, uint32* textures) BindImageTextures;
    public static function void(uint32 pipeline) BindProgramPipeline;
    public static function void(RenderbufferTarget target, uint32 renderbuffer) BindRenderbuffer;
    public static function void(uint32 unit, uint32 sampler) BindSampler;
    public static function void(uint32 first, int32 count, uint32* samplers) BindSamplers;
    public static function void(TextureTarget target, uint32 texture) BindTexture;
    public static function void(uint32 unit, uint32 texture) BindTextureUnit;
    public static function void(uint32 first, int32 count, uint32* textures) BindTextures;
    public static function void(BindTransformFeedbackTarget target, uint32 id) BindTransformFeedback;
    public static function void(uint32 array) BindVertexArray;
    public static function void(uint32 bindingindex, uint32 buffer, int32 offset, int32 stride) BindVertexBuffer;
    public static function void(uint32 first, int32 count, uint32* buffers, int32* offsets, int32* strides) BindVertexBuffers;
    public static function void(int32 width, int32 height, float xorig, float yorig, float xmove, float ymove, uint8* bitmap) Bitmap;
    public static function void(float red, float green, float blue, float alpha) BlendColor;
    public static function void(BlendEquationModeEXT mode) BlendEquation;
    public static function void(BlendEquationModeEXT modeRGB, BlendEquationModeEXT modeAlpha) BlendEquationSeparate;
    public static function void(uint32 buf, BlendEquationModeEXT modeRGB, BlendEquationModeEXT modeAlpha) BlendEquationSeparatei;
    public static function void(uint32 buf, BlendEquationModeEXT mode) BlendEquationi;
    public static function void(BlendingFactor sfactor, BlendingFactor dfactor) BlendFunc;
    public static function void(BlendingFactor sfactorRGB, BlendingFactor dfactorRGB, BlendingFactor sfactorAlpha, BlendingFactor dfactorAlpha) BlendFuncSeparate;
    public static function void(uint32 buf, BlendingFactor srcRGB, BlendingFactor dstRGB, BlendingFactor srcAlpha, BlendingFactor dstAlpha) BlendFuncSeparatei;
    public static function void(uint32 buf, BlendingFactor src, BlendingFactor dst) BlendFunci;
    public static function void(int32 srcX0, int32 srcY0, int32 srcX1, int32 srcY1, int32 dstX0, int32 dstY0, int32 dstX1, int32 dstY1, ClearBufferMask mask, BlitFramebufferFilter filter) BlitFramebuffer;
    public static function void(uint32 readFramebuffer, uint32 drawFramebuffer, int32 srcX0, int32 srcY0, int32 srcX1, int32 srcY1, int32 dstX0, int32 dstY0, int32 dstX1, int32 dstY1, ClearBufferMask mask, BlitFramebufferFilter filter) BlitNamedFramebuffer;
    public static function void(BufferTargetARB target, int32 size, void* data, BufferUsageARB usage) BufferData;
    public static function void(BufferStorageTarget target, int32 size, void* data, BufferStorageMask flags) BufferStorage;
    public static function void(BufferTargetARB target, int32 offset, int32 size, void* data) BufferSubData;
    public static function void(uint32 list) CallList;
    public static function void(int32 n, ListNameType type, void* lists) CallLists;
    public static function FramebufferStatus(FramebufferTarget target) CheckFramebufferStatus;
    public static function FramebufferStatus(uint32 framebuffer, FramebufferTarget target) CheckNamedFramebufferStatus;
    public static function void(ClampColorTargetARB target, ClampColorModeARB clamp) ClampColor;
    public static function void(ClearBufferMask mask) Clear;
    public static function void(float red, float green, float blue, float alpha) ClearAccum;
    public static function void(BufferStorageTarget target, SizedInternalFormat internalformat, PixelFormat format, PixelType type, void* data) ClearBufferData;
    public static function void(BufferTargetARB target, SizedInternalFormat internalformat, int32 offset, int32 size, PixelFormat format, PixelType type, void* data) ClearBufferSubData;
    public static function void(Buffer buffer, int32 drawbuffer, float depth, int32 stencil) ClearBufferfi;
    public static function void(Buffer buffer, int32 drawbuffer, float* value) ClearBufferfv;
    public static function void(Buffer buffer, int32 drawbuffer, int32* value) ClearBufferiv;
    public static function void(Buffer buffer, int32 drawbuffer, uint32* value) ClearBufferuiv;
    public static function void(float red, float green, float blue, float alpha) ClearColor;
    public static function void(double depth) ClearDepth;
    public static function void(float d) ClearDepthf;
    public static function void(float c) ClearIndex;
    public static function void(uint32 buffer, SizedInternalFormat internalformat, PixelFormat format, PixelType type, void* data) ClearNamedBufferData;
    public static function void(uint32 buffer, SizedInternalFormat internalformat, int32 offset, int32 size, PixelFormat format, PixelType type, void* data) ClearNamedBufferSubData;
    public static function void(uint32 framebuffer, Buffer buffer, int32 drawbuffer, float depth, int32 stencil) ClearNamedFramebufferfi;
    public static function void(uint32 framebuffer, Buffer buffer, int32 drawbuffer, float* value) ClearNamedFramebufferfv;
    public static function void(uint32 framebuffer, Buffer buffer, int32 drawbuffer, int32* value) ClearNamedFramebufferiv;
    public static function void(uint32 framebuffer, Buffer buffer, int32 drawbuffer, uint32* value) ClearNamedFramebufferuiv;
    public static function void(int32 s) ClearStencil;
    public static function void(uint32 texture, int32 level, PixelFormat format, PixelType type, void* data) ClearTexImage;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth, PixelFormat format, PixelType type, void* data) ClearTexSubImage;
    public static function void(TextureUnit texture) ClientActiveTexture;
    public static function SyncStatus(void* sync, SyncObjectMask flags, uint64 timeout) ClientWaitSync;
    public static function void(ClipControlOrigin origin, ClipControlDepth depth) ClipControl;
    public static function void(ClipPlaneName plane, double* equation) ClipPlane;
    public static function void(int8 red, int8 green, int8 blue) Color3b;
    public static function void(int8* v) Color3bv;
    public static function void(double red, double green, double blue) Color3d;
    public static function void(double* v) Color3dv;
    public static function void(float red, float green, float blue) Color3f;
    public static function void(float* v) Color3fv;
    public static function void(int32 red, int32 green, int32 blue) Color3i;
    public static function void(int32* v) Color3iv;
    public static function void(int16 red, int16 green, int16 blue) Color3s;
    public static function void(int16* v) Color3sv;
    public static function void(uint8 red, uint8 green, uint8 blue) Color3ub;
    public static function void(uint8* v) Color3ubv;
    public static function void(uint32 red, uint32 green, uint32 blue) Color3ui;
    public static function void(uint32* v) Color3uiv;
    public static function void(uint16 red, uint16 green, uint16 blue) Color3us;
    public static function void(uint16* v) Color3usv;
    public static function void(int8 red, int8 green, int8 blue, int8 alpha) Color4b;
    public static function void(int8* v) Color4bv;
    public static function void(double red, double green, double blue, double alpha) Color4d;
    public static function void(double* v) Color4dv;
    public static function void(float red, float green, float blue, float alpha) Color4f;
    public static function void(float* v) Color4fv;
    public static function void(int32 red, int32 green, int32 blue, int32 alpha) Color4i;
    public static function void(int32* v) Color4iv;
    public static function void(int16 red, int16 green, int16 blue, int16 alpha) Color4s;
    public static function void(int16* v) Color4sv;
    public static function void(uint8 red, uint8 green, uint8 blue, uint8 alpha) Color4ub;
    public static function void(uint8* v) Color4ubv;
    public static function void(uint32 red, uint32 green, uint32 blue, uint32 alpha) Color4ui;
    public static function void(uint32* v) Color4uiv;
    public static function void(uint16 red, uint16 green, uint16 blue, uint16 alpha) Color4us;
    public static function void(uint16* v) Color4usv;
    public static function void(Boolean red, Boolean green, Boolean blue, Boolean alpha) ColorMask;
    public static function void(uint32 index, Boolean r, Boolean g, Boolean b, Boolean a) ColorMaski;
    public static function void(MaterialFace face, ColorMaterialParameter mode) ColorMaterial;
    public static function void(ColorPointerType type, uint32 color) ColorP3ui;
    public static function void(ColorPointerType type, uint32* color) ColorP3uiv;
    public static function void(ColorPointerType type, uint32 color) ColorP4ui;
    public static function void(ColorPointerType type, uint32* color) ColorP4uiv;
    public static function void(int32 size, ColorPointerType type, int32 stride, void* pointer) ColorPointer;
    public static function void(uint32 shader) CompileShader;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 width, int32 border, int32 imageSize, void* data) CompressedTexImage1D;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 width, int32 height, int32 border, int32 imageSize, void* data) CompressedTexImage2D;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 width, int32 height, int32 depth, int32 border, int32 imageSize, void* data) CompressedTexImage3D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 width, PixelFormat format, int32 imageSize, void* data) CompressedTexSubImage1D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, PixelFormat format, int32 imageSize, void* data) CompressedTexSubImage2D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth, PixelFormat format, int32 imageSize, void* data) CompressedTexSubImage3D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 width, PixelFormat format, int32 imageSize, void* data) CompressedTextureSubImage1D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, PixelFormat format, int32 imageSize, void* data) CompressedTextureSubImage2D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth, PixelFormat format, int32 imageSize, void* data) CompressedTextureSubImage3D;
    public static function void(CopyBufferSubDataTarget readTarget, CopyBufferSubDataTarget writeTarget, int32 readOffset, int32 writeOffset, int32 size) CopyBufferSubData;
    public static function void(uint32 srcName, CopyImageSubDataTarget srcTarget, int32 srcLevel, int32 srcX, int32 srcY, int32 srcZ, uint32 dstName, CopyImageSubDataTarget dstTarget, int32 dstLevel, int32 dstX, int32 dstY, int32 dstZ, int32 srcWidth, int32 srcHeight, int32 srcDepth) CopyImageSubData;
    public static function void(uint32 readBuffer, uint32 writeBuffer, int32 readOffset, int32 writeOffset, int32 size) CopyNamedBufferSubData;
    public static function void(int32 x, int32 y, int32 width, int32 height, PixelCopyType type) CopyPixels;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 x, int32 y, int32 width, int32 border) CopyTexImage1D;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 x, int32 y, int32 width, int32 height, int32 border) CopyTexImage2D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 x, int32 y, int32 width) CopyTexSubImage1D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 yoffset, int32 x, int32 y, int32 width, int32 height) CopyTexSubImage2D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 x, int32 y, int32 width, int32 height) CopyTexSubImage3D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 x, int32 y, int32 width) CopyTextureSubImage1D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 x, int32 y, int32 width, int32 height) CopyTextureSubImage2D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 x, int32 y, int32 width, int32 height) CopyTextureSubImage3D;
    public static function void(int32 n, uint32* buffers) CreateBuffers;
    public static function void(int32 n, uint32* framebuffers) CreateFramebuffers;
    public static function uint32() CreateProgram;
    public static function void(int32 n, uint32* pipelines) CreateProgramPipelines;
    public static function void(QueryTarget target, int32 n, uint32* ids) CreateQueries;
    public static function void(int32 n, uint32* renderbuffers) CreateRenderbuffers;
    public static function void(int32 n, uint32* samplers) CreateSamplers;
    public static function uint32(ShaderType type) CreateShader;
    public static function uint32(ShaderType type, int32 count, char8** strings) CreateShaderProgramv;
    public static function void(TextureTarget target, int32 n, uint32* textures) CreateTextures;
    public static function void(int32 n, uint32* ids) CreateTransformFeedbacks;
    public static function void(int32 n, uint32* arrays) CreateVertexArrays;
    public static function void(CullFaceMode mode) CullFace;
    public static function void(function void(DebugSource source, DebugType type, uint id, DebugSeverity severity, int length, char8* message, void* userParam) callback, void* userParam) DebugMessageCallback;
    public static function void(DebugSource source, DebugType type, DebugSeverity severity, int32 count, uint32* ids, Boolean enabled) DebugMessageControl;
    public static function void(DebugSource source, DebugType type, uint32 id, DebugSeverity severity, int32 length, char8* buf) DebugMessageInsert;
    public static function void(int32 n, uint32* buffers) DeleteBuffers;
    public static function void(int32 n, uint32* framebuffers) DeleteFramebuffers;
    public static function void(uint32 list, int32 range) DeleteLists;
    public static function void(uint32 program) DeleteProgram;
    public static function void(int32 n, uint32* pipelines) DeleteProgramPipelines;
    public static function void(int32 n, uint32* ids) DeleteQueries;
    public static function void(int32 n, uint32* renderbuffers) DeleteRenderbuffers;
    public static function void(int32 count, uint32* samplers) DeleteSamplers;
    public static function void(uint32 shader) DeleteShader;
    public static function void(void* sync) DeleteSync;
    public static function void(int32 n, uint32* textures) DeleteTextures;
    public static function void(int32 n, uint32* ids) DeleteTransformFeedbacks;
    public static function void(int32 n, uint32* arrays) DeleteVertexArrays;
    public static function void(DepthFunction func) DepthFunc;
    public static function void(Boolean flag) DepthMask;
    public static function void(double n, double f) DepthRange;
    public static function void(uint32 first, int32 count, double* v) DepthRangeArrayv;
    public static function void(uint32 index, double n, double f) DepthRangeIndexed;
    public static function void(float n, float f) DepthRangef;
    public static function void(uint32 program, uint32 shader) DetachShader;
    public static function void(EnableCap cap) Disable;
    public static function void(EnableCap array) DisableClientState;
    public static function void(uint32 vaobj, uint32 index) DisableVertexArrayAttrib;
    public static function void(uint32 index) DisableVertexAttribArray;
    public static function void(EnableCap target, uint32 index) Disablei;
    public static function void(uint32 num_groups_x, uint32 num_groups_y, uint32 num_groups_z) DispatchCompute;
    public static function void(int32 indirect) DispatchComputeIndirect;
    public static function void(PrimitiveType mode, int32 first, int32 count) DrawArrays;
    public static function void(PrimitiveType mode, void* indirect) DrawArraysIndirect;
    public static function void(PrimitiveType mode, int32 first, int32 count, int32 instancecount) DrawArraysInstanced;
    public static function void(PrimitiveType mode, int32 first, int32 count, int32 instancecount, uint32 baseinstance) DrawArraysInstancedBaseInstance;
    public static function void(DrawBufferMode buf) DrawBuffer;
    public static function void(int32 n, DrawBufferMode* bufs) DrawBuffers;
    public static function void(PrimitiveType mode, int32 count, DrawElementsType type, void* indices) DrawElements;
    public static function void(PrimitiveType mode, int32 count, DrawElementsType type, void* indices, int32 basevertex) DrawElementsBaseVertex;
    public static function void(PrimitiveType mode, DrawElementsType type, void* indirect) DrawElementsIndirect;
    public static function void(PrimitiveType mode, int32 count, DrawElementsType type, void* indices, int32 instancecount) DrawElementsInstanced;
    public static function void(PrimitiveType mode, int32 count, PrimitiveType type, void* indices, int32 instancecount, uint32 baseinstance) DrawElementsInstancedBaseInstance;
    public static function void(PrimitiveType mode, int32 count, DrawElementsType type, void* indices, int32 instancecount, int32 basevertex) DrawElementsInstancedBaseVertex;
    public static function void(PrimitiveType mode, int32 count, DrawElementsType type, void* indices, int32 instancecount, int32 basevertex, uint32 baseinstance) DrawElementsInstancedBaseVertexBaseInstance;
    public static function void(int32 width, int32 height, PixelFormat format, PixelType type, void* pixels) DrawPixels;
    public static function void(PrimitiveType mode, uint32 start, uint32 end, int32 count, DrawElementsType type, void* indices) DrawRangeElements;
    public static function void(PrimitiveType mode, uint32 start, uint32 end, int32 count, DrawElementsType type, void* indices, int32 basevertex) DrawRangeElementsBaseVertex;
    public static function void(PrimitiveType mode, uint32 id) DrawTransformFeedback;
    public static function void(PrimitiveType mode, uint32 id, int32 instancecount) DrawTransformFeedbackInstanced;
    public static function void(PrimitiveType mode, uint32 id, uint32 stream) DrawTransformFeedbackStream;
    public static function void(PrimitiveType mode, uint32 id, uint32 stream, int32 instancecount) DrawTransformFeedbackStreamInstanced;
    public static function void(Boolean flag) EdgeFlag;
    public static function void(int32 stride, void* pointer) EdgeFlagPointer;
    public static function void(Boolean* flag) EdgeFlagv;
    public static function void(EnableCap cap) Enable;
    public static function void(EnableCap array) EnableClientState;
    public static function void(uint32 vaobj, uint32 index) EnableVertexArrayAttrib;
    public static function void(uint32 index) EnableVertexAttribArray;
    public static function void(EnableCap target, uint32 index) Enablei;
    public static function void() End;
    public static function void() EndConditionalRender;
    public static function void() EndList;
    public static function void(QueryTarget target) EndQuery;
    public static function void(QueryTarget target, uint32 index) EndQueryIndexed;
    public static function void() EndTransformFeedback;
    public static function void(double u) EvalCoord1d;
    public static function void(double* u) EvalCoord1dv;
    public static function void(float u) EvalCoord1f;
    public static function void(float* u) EvalCoord1fv;
    public static function void(double u, double v) EvalCoord2d;
    public static function void(double* u) EvalCoord2dv;
    public static function void(float u, float v) EvalCoord2f;
    public static function void(float* u) EvalCoord2fv;
    public static function void(MeshMode1 mode, int32 i1, int32 i2) EvalMesh1;
    public static function void(MeshMode2 mode, int32 i1, int32 i2, int32 j1, int32 j2) EvalMesh2;
    public static function void(int32 i) EvalPoint1;
    public static function void(int32 i, int32 j) EvalPoint2;
    public static function void(int32 size, FeedbackType type, float* buffer) FeedbackBuffer;
    public static function void*(SyncCondition condition, SyncBehaviorFlags flags) FenceSync;
    public static function void() Finish;
    public static function void() Flush;
    public static function void(BufferTargetARB target, int32 offset, int32 length) FlushMappedBufferRange;
    public static function void(uint32 buffer, int32 offset, int32 length) FlushMappedNamedBufferRange;
    public static function void(FogPointerTypeEXT type, int32 stride, void* pointer) FogCoordPointer;
    public static function void(double coord) FogCoordd;
    public static function void(double* coord) FogCoorddv;
    public static function void(float coord) FogCoordf;
    public static function void(float* coord) FogCoordfv;
    public static function void(FogParameter pname, float param) Fogf;
    public static function void(FogParameter pname, float* parameters) Fogfv;
    public static function void(FogParameter pname, int32 param) Fogi;
    public static function void(FogParameter pname, int32* parameters) Fogiv;
    public static function void(FramebufferTarget target, FramebufferParameterName pname, int32 param) FramebufferParameteri;
    public static function void(FramebufferTarget target, FramebufferAttachment attachment, RenderbufferTarget renderbuffertarget, uint32 renderbuffer) FramebufferRenderbuffer;
    public static function void(FramebufferTarget target, FramebufferAttachment attachment, uint32 texture, int32 level) FramebufferTexture;
    public static function void(FramebufferTarget target, FramebufferAttachment attachment, TextureTarget textarget, uint32 texture, int32 level) FramebufferTexture1D;
    public static function void(FramebufferTarget target, FramebufferAttachment attachment, TextureTarget textarget, uint32 texture, int32 level) FramebufferTexture2D;
    public static function void(FramebufferTarget target, FramebufferAttachment attachment, TextureTarget textarget, uint32 texture, int32 level, int32 zoffset) FramebufferTexture3D;
    public static function void(FramebufferTarget target, FramebufferAttachment attachment, uint32 texture, int32 level, int32 layer) FramebufferTextureLayer;
    public static function void(FrontFaceDirection mode) FrontFace;
    public static function void(double left, double right, double bottom, double top, double zNear, double zFar) Frustum;
    public static function void(int32 n, uint32* buffers) GenBuffers;
    public static function void(int32 n, uint32* framebuffers) GenFramebuffers;
    public static function uint32(int32 range) GenLists;
    public static function void(int32 n, uint32* pipelines) GenProgramPipelines;
    public static function void(int32 n, uint32* ids) GenQueries;
    public static function void(int32 n, uint32* renderbuffers) GenRenderbuffers;
    public static function void(int32 count, uint32* samplers) GenSamplers;
    public static function void(int32 n, uint32* textures) GenTextures;
    public static function void(int32 n, uint32* ids) GenTransformFeedbacks;
    public static function void(int32 n, uint32* arrays) GenVertexArrays;
    public static function void(TextureTarget target) GenerateMipmap;
    public static function void(uint32 texture) GenerateTextureMipmap;
    public static function void(uint32 program, uint32 bufferIndex, AtomicCounterBufferPName pname, int32* parameters) GetActiveAtomicCounterBufferiv;
    public static function void(uint32 program, uint32 index, int32 bufSize, int32* length, int32* size, AttributeType* type, char8* name) GetActiveAttrib;
    public static function void(uint32 program, ShaderType shadertype, uint32 index, int32 bufSize, int32* length, char8* name) GetActiveSubroutineName;
    public static function void(uint32 program, ShaderType shadertype, uint32 index, int32 bufSize, int32* length, char8* name) GetActiveSubroutineUniformName;
    public static function void(uint32 program, ShaderType shadertype, uint32 index, SubroutineParameterName pname, int32* values) GetActiveSubroutineUniformiv;
    public static function void(uint32 program, uint32 index, int32 bufSize, int32* length, int32* size, UniformType* type, char8* name) GetActiveUniform;
    public static function void(uint32 program, uint32 uniformBlockIndex, int32 bufSize, int32* length, char8* uniformBlockName) GetActiveUniformBlockName;
    public static function void(uint32 program, uint32 uniformBlockIndex, UniformBlockPName pname, int32* parameters) GetActiveUniformBlockiv;
    public static function void(uint32 program, uint32 uniformIndex, int32 bufSize, int32* length, char8* uniformName) GetActiveUniformName;
    public static function void(uint32 program, int32 uniformCount, uint32* uniformIndices, UniformPName pname, int32* parameters) GetActiveUniformsiv;
    public static function void(uint32 program, int32 maxCount, int32* count, uint32* shaders) GetAttachedShaders;
    public static function int32(uint32 program, char8* name) GetAttribLocation;
    public static function void(BufferTargetARB target, uint32 index, Boolean* data) GetBooleani_v;
    public static function void(GetPName pname, Boolean* data) GetBooleanv;
    public static function void(BufferTargetARB target, BufferPNameARB pname, int64* parameters) GetBufferParameteri64v;
    public static function void(BufferTargetARB target, BufferPNameARB pname, int32* parameters) GetBufferParameteriv;
    public static function void(BufferTargetARB target, BufferPointerNameARB pname, void** parameters) GetBufferPointerv;
    public static function void(BufferTargetARB target, int32 offset, int32 size, void* data) GetBufferSubData;
    public static function void(ClipPlaneName plane, double* equation) GetClipPlane;
    public static function void(TextureTarget target, int32 level, void* img) GetCompressedTexImage;
    public static function void(uint32 texture, int32 level, int32 bufSize, void* pixels) GetCompressedTextureImage;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth, int32 bufSize, void* pixels) GetCompressedTextureSubImage;
    public static function uint32(uint32 count, int32 bufSize, DebugSource* sources, DebugType* types, uint32* ids, DebugSeverity* severities, int32* lengths, char8* messageLog) GetDebugMessageLog;
    public static function void(GetPName target, uint32 index, double* data) GetDoublei_v;
    public static function void(GetPName pname, double* data) GetDoublev;
    public static function ErrorCode() GetError;
    public static function void(GetPName target, uint32 index, float* data) GetFloati_v;
    public static function void(GetPName pname, float* data) GetFloatv;
    public static function int32(uint32 program, char8* name) GetFragDataIndex;
    public static function int32(uint32 program, char8* name) GetFragDataLocation;
    public static function void(FramebufferTarget target, FramebufferAttachment attachment, FramebufferAttachmentParameterName pname, int32* parameters) GetFramebufferAttachmentParameteriv;
    public static function void(FramebufferTarget target, FramebufferAttachmentParameterName pname, int32* parameters) GetFramebufferParameteriv;
    public static function GraphicsResetStatus() GetGraphicsResetStatus;
    public static function void(GetPName target, uint32 index, int64* data) GetInteger64i_v;
    public static function void(GetPName pname, int64* data) GetInteger64v;
    public static function void(GetPName target, uint32 index, int32* data) GetIntegeri_v;
    public static function void(GetPName pname, int32* data) GetIntegerv;
    public static function void(TextureTarget target, InternalFormat internalformat, InternalFormatPName pname, int32 count, int64* parameters) GetInternalformati64v;
    public static function void(TextureTarget target, InternalFormat internalformat, InternalFormatPName pname, int32 count, int32* parameters) GetInternalformativ;
    public static function void(LightName light, LightParameter pname, float* parameters) GetLightfv;
    public static function void(LightName light, LightParameter pname, int32* parameters) GetLightiv;
    public static function void(MapTarget target, GetMapQuery query, double* v) GetMapdv;
    public static function void(MapTarget target, GetMapQuery query, float* v) GetMapfv;
    public static function void(MapTarget target, GetMapQuery query, int32* v) GetMapiv;
    public static function void(MaterialFace face, MaterialParameter pname, float* parameters) GetMaterialfv;
    public static function void(MaterialFace face, MaterialParameter pname, int32* parameters) GetMaterialiv;
    public static function void(GetMultisamplePNameNV pname, uint32 index, float* val) GetMultisamplefv;
    public static function void(uint32 buffer, BufferPNameARB pname, int64* parameters) GetNamedBufferParameteri64v;
    public static function void(uint32 buffer, BufferPNameARB pname, int32* parameters) GetNamedBufferParameteriv;
    public static function void(uint32 buffer, BufferPointerNameARB pname, void** parameters) GetNamedBufferPointerv;
    public static function void(uint32 buffer, int32 offset, int32 size, void* data) GetNamedBufferSubData;
    public static function void(uint32 framebuffer, FramebufferAttachment attachment, FramebufferAttachmentParameterName pname, int32* parameters) GetNamedFramebufferAttachmentParameteriv;
    public static function void(uint32 framebuffer, GetFramebufferParameter pname, int32* param) GetNamedFramebufferParameteriv;
    public static function void(uint32 renderbuffer, RenderbufferParameterName pname, int32* parameters) GetNamedRenderbufferParameteriv;
    public static function void(ObjectIdentifier identifier, uint32 name, int32 bufSize, int32* length, char8* label) GetObjectLabel;
    public static function void(void* ptr, int32 bufSize, int32* length, char8* label) GetObjectPtrLabel;
    public static function void(PixelMap map, float* values) GetPixelMapfv;
    public static function void(PixelMap map, uint32* values) GetPixelMapuiv;
    public static function void(PixelMap map, uint16* values) GetPixelMapusv;
    public static function void(GetPointervPName pname, void** parameters) GetPointerv;
    public static function void(uint8* mask) GetPolygonStipple;
    public static function void(uint32 program, int32 bufSize, int32* length, uint32* binaryFormat, void* binary) GetProgramBinary;
    public static function void(uint32 program, int32 bufSize, int32* length, char8* infoLog) GetProgramInfoLog;
    public static function void(uint32 program, ProgramInterface programInterface, ProgramInterfacePName pname, int32* parameters) GetProgramInterfaceiv;
    public static function void(uint32 pipeline, int32 bufSize, int32* length, char8* infoLog) GetProgramPipelineInfoLog;
    public static function void(uint32 pipeline, PipelineParameterName pname, int32* parameters) GetProgramPipelineiv;
    public static function uint32(uint32 program, ProgramInterface programInterface, char8* name) GetProgramResourceIndex;
    public static function int32(uint32 program, ProgramInterface programInterface, char8* name) GetProgramResourceLocation;
    public static function int32(uint32 program, ProgramInterface programInterface, char8* name) GetProgramResourceLocationIndex;
    public static function void(uint32 program, ProgramInterface programInterface, uint32 index, int32 bufSize, int32* length, char8* name) GetProgramResourceName;
    public static function void(uint32 program, ProgramInterface programInterface, uint32 index, int32 propCount, ProgramResourceProperty* props, int32 count, int32* length, int32* parameters) GetProgramResourceiv;
    public static function void(uint32 program, ShaderType shadertype, ProgramStagePName pname, int32* values) GetProgramStageiv;
    public static function void(uint32 program, ProgramPropertyARB pname, int32* parameters) GetProgramiv;
    public static function void(uint32 id, uint32 buffer, QueryObjectParameterName pname, int32 offset) GetQueryBufferObjecti64v;
    public static function void(uint32 id, uint32 buffer, QueryObjectParameterName pname, int32 offset) GetQueryBufferObjectiv;
    public static function void(uint32 id, uint32 buffer, QueryObjectParameterName pname, int32 offset) GetQueryBufferObjectui64v;
    public static function void(uint32 id, uint32 buffer, QueryObjectParameterName pname, int32 offset) GetQueryBufferObjectuiv;
    public static function void(QueryTarget target, uint32 index, QueryParameterName pname, int32* parameters) GetQueryIndexediv;
    public static function void(uint32 id, QueryObjectParameterName pname, int64* parameters) GetQueryObjecti64v;
    public static function void(uint32 id, QueryObjectParameterName pname, int32* parameters) GetQueryObjectiv;
    public static function void(uint32 id, QueryObjectParameterName pname, uint64* parameters) GetQueryObjectui64v;
    public static function void(uint32 id, QueryObjectParameterName pname, uint32* parameters) GetQueryObjectuiv;
    public static function void(QueryTarget target, QueryParameterName pname, int32* parameters) GetQueryiv;
    public static function void(RenderbufferTarget target, RenderbufferParameterName pname, int32* parameters) GetRenderbufferParameteriv;
    public static function void(uint32 sampler, SamplerParameterI pname, int32* parameters) GetSamplerParameterIiv;
    public static function void(uint32 sampler, SamplerParameterI pname, uint32* parameters) GetSamplerParameterIuiv;
    public static function void(uint32 sampler, SamplerParameterF pname, float* parameters) GetSamplerParameterfv;
    public static function void(uint32 sampler, SamplerParameterI pname, int32* parameters) GetSamplerParameteriv;
    public static function void(uint32 shader, int32 bufSize, int32* length, char8* infoLog) GetShaderInfoLog;
    public static function void(ShaderType shadertype, PrecisionType precisiontype, int32* range, int32* precision) GetShaderPrecisionFormat;
    public static function void(uint32 shader, int32 bufSize, int32* length, char8* source) GetShaderSource;
    public static function void(uint32 shader, ShaderParameterName pname, int32* parameters) GetShaderiv;
    public static function char8*(StringName name) GetString;
    public static function char8*(StringName name, uint32 index) GetStringi;
    public static function uint32(uint32 program, ShaderType shadertype, char8* name) GetSubroutineIndex;
    public static function int32(uint32 program, ShaderType shadertype, char8* name) GetSubroutineUniformLocation;
    public static function void(void* sync, SyncParameterName pname, int32 count, int32* length, int32* values) GetSynciv;
    public static function void(TextureEnvTarget target, TextureEnvParameter pname, float* parameters) GetTexEnvfv;
    public static function void(TextureEnvTarget target, TextureEnvParameter pname, int32* parameters) GetTexEnviv;
    public static function void(TextureCoordName coord, TextureGenParameter pname, double* parameters) GetTexGendv;
    public static function void(TextureCoordName coord, TextureGenParameter pname, float* parameters) GetTexGenfv;
    public static function void(TextureCoordName coord, TextureGenParameter pname, int32* parameters) GetTexGeniv;
    public static function void(TextureTarget target, int32 level, PixelFormat format, PixelType type, void* pixels) GetTexImage;
    public static function void(TextureTarget target, int32 level, GetTextureParameter pname, float* parameters) GetTexLevelParameterfv;
    public static function void(TextureTarget target, int32 level, GetTextureParameter pname, int32* parameters) GetTexLevelParameteriv;
    public static function void(TextureTarget target, GetTextureParameter pname, int32* parameters) GetTexParameterIiv;
    public static function void(TextureTarget target, GetTextureParameter pname, uint32* parameters) GetTexParameterIuiv;
    public static function void(TextureTarget target, GetTextureParameter pname, float* parameters) GetTexParameterfv;
    public static function void(TextureTarget target, GetTextureParameter pname, int32* parameters) GetTexParameteriv;
    public static function void(uint32 texture, int32 level, PixelFormat format, PixelType type, int32 bufSize, void* pixels) GetTextureImage;
    public static function void(uint32 texture, int32 level, GetTextureParameter pname, float* parameters) GetTextureLevelParameterfv;
    public static function void(uint32 texture, int32 level, GetTextureParameter pname, int32* parameters) GetTextureLevelParameteriv;
    public static function void(uint32 texture, GetTextureParameter pname, int32* parameters) GetTextureParameterIiv;
    public static function void(uint32 texture, GetTextureParameter pname, uint32* parameters) GetTextureParameterIuiv;
    public static function void(uint32 texture, GetTextureParameter pname, float* parameters) GetTextureParameterfv;
    public static function void(uint32 texture, GetTextureParameter pname, int32* parameters) GetTextureParameteriv;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth, PixelFormat format, PixelType type, int32 bufSize, void* pixels) GetTextureSubImage;
    public static function void(uint32 program, uint32 index, int32 bufSize, int32* length, int32* size, AttributeType* type, char8* name) GetTransformFeedbackVarying;
    public static function void(uint32 xfb, TransformFeedbackPName pname, uint32 index, int64* param) GetTransformFeedbacki64_v;
    public static function void(uint32 xfb, TransformFeedbackPName pname, uint32 index, int32* param) GetTransformFeedbacki_v;
    public static function void(uint32 xfb, TransformFeedbackPName pname, int32* param) GetTransformFeedbackiv;
    public static function uint32(uint32 program, char8* uniformBlockName) GetUniformBlockIndex;
    public static function void(uint32 program, int32 uniformCount, char8** uniformNames, uint32* uniformIndices) GetUniformIndices;
    public static function int32(uint32 program, char8* name) GetUniformLocation;
    public static function void(ShaderType shadertype, int32 location, uint32* parameters) GetUniformSubroutineuiv;
    public static function void(uint32 program, int32 location, double* parameters) GetUniformdv;
    public static function void(uint32 program, int32 location, float* parameters) GetUniformfv;
    public static function void(uint32 program, int32 location, int32* parameters) GetUniformiv;
    public static function void(uint32 program, int32 location, uint32* parameters) GetUniformuiv;
    public static function void(uint32 vaobj, uint32 index, VertexArrayPName pname, int64* param) GetVertexArrayIndexed64iv;
    public static function void(uint32 vaobj, uint32 index, VertexArrayPName pname, int32* param) GetVertexArrayIndexediv;
    public static function void(uint32 vaobj, VertexArrayPName pname, int32* param) GetVertexArrayiv;
    public static function void(uint32 index, VertexAttribEnum pname, int32* parameters) GetVertexAttribIiv;
    public static function void(uint32 index, VertexAttribEnum pname, uint32* parameters) GetVertexAttribIuiv;
    public static function void(uint32 index, VertexAttribEnum pname, double* parameters) GetVertexAttribLdv;
    public static function void(uint32 index, VertexAttribPointerPropertyARB pname, void** pointer) GetVertexAttribPointerv;
    public static function void(uint32 index, VertexAttribPropertyARB pname, double* parameters) GetVertexAttribdv;
    public static function void(uint32 index, VertexAttribPropertyARB pname, float* parameters) GetVertexAttribfv;
    public static function void(uint32 index, VertexAttribPropertyARB pname, int32* parameters) GetVertexAttribiv;
    public static function void(ColorTableTarget target, PixelFormat format, PixelType type, int32 bufSize, void* table) GetnColorTable;
    public static function void(TextureTarget target, int32 lod, int32 bufSize, void* pixels) GetnCompressedTexImage;
    public static function void(ConvolutionTarget target, PixelFormat format, PixelType type, int32 bufSize, void* image) GetnConvolutionFilter;
    public static function void(HistogramTarget target, Boolean reset, PixelFormat format, PixelType type, int32 bufSize, void* values) GetnHistogram;
    public static function void(MapTarget target, MapQuery query, int32 bufSize, double* v) GetnMapdv;
    public static function void(MapTarget target, MapQuery query, int32 bufSize, float* v) GetnMapfv;
    public static function void(MapTarget target, MapQuery query, int32 bufSize, int32* v) GetnMapiv;
    public static function void(MinmaxTarget target, Boolean reset, PixelFormat format, PixelType type, int32 bufSize, void* values) GetnMinmax;
    public static function void(PixelMap map, int32 bufSize, float* values) GetnPixelMapfv;
    public static function void(PixelMap map, int32 bufSize, uint32* values) GetnPixelMapuiv;
    public static function void(PixelMap map, int32 bufSize, uint16* values) GetnPixelMapusv;
    public static function void(int32 bufSize, uint8* pattern) GetnPolygonStipple;
    public static function void(SeparableTarget target, PixelFormat format, PixelType type, int32 rowBufSize, void* row, int32 columnBufSize, void* column, void* span) GetnSeparableFilter;
    public static function void(TextureTarget target, int32 level, PixelFormat format, PixelType type, int32 bufSize, void* pixels) GetnTexImage;
    public static function void(uint32 program, int32 location, int32 bufSize, double* parameters) GetnUniformdv;
    public static function void(uint32 program, int32 location, int32 bufSize, float* parameters) GetnUniformfv;
    public static function void(uint32 program, int32 location, int32 bufSize, int32* parameters) GetnUniformiv;
    public static function void(uint32 program, int32 location, int32 bufSize, uint32* parameters) GetnUniformuiv;
    public static function void(HintTarget target, HintMode mode) Hint;
    public static function void(uint32 mask) IndexMask;
    public static function void(IndexPointerType type, int32 stride, void* pointer) IndexPointer;
    public static function void(double c) Indexd;
    public static function void(double* c) Indexdv;
    public static function void(float c) Indexf;
    public static function void(float* c) Indexfv;
    public static function void(int32 c) Indexi;
    public static function void(int32* c) Indexiv;
    public static function void(int16 c) Indexs;
    public static function void(int16* c) Indexsv;
    public static function void(uint8 c) Indexub;
    public static function void(uint8* c) Indexubv;
    public static function void() InitNames;
    public static function void(InterleavedArrayFormat format, int32 stride, void* pointer) InterleavedArrays;
    public static function void(uint32 buffer) InvalidateBufferData;
    public static function void(uint32 buffer, int32 offset, int32 length) InvalidateBufferSubData;
    public static function void(FramebufferTarget target, int32 numAttachments, InvalidateFramebufferAttachment* attachments) InvalidateFramebuffer;
    public static function void(uint32 framebuffer, int32 numAttachments, FramebufferAttachment* attachments) InvalidateNamedFramebufferData;
    public static function void(uint32 framebuffer, int32 numAttachments, FramebufferAttachment* attachments, int32 x, int32 y, int32 width, int32 height) InvalidateNamedFramebufferSubData;
    public static function void(FramebufferTarget target, int32 numAttachments, InvalidateFramebufferAttachment* attachments, int32 x, int32 y, int32 width, int32 height) InvalidateSubFramebuffer;
    public static function void(uint32 texture, int32 level) InvalidateTexImage;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth) InvalidateTexSubImage;
    public static function bool(uint32 buffer) IsBuffer;
    public static function bool(EnableCap cap) IsEnabled;
    public static function bool(EnableCap target, uint32 index) IsEnabledi;
    public static function bool(uint32 framebuffer) IsFramebuffer;
    public static function bool(uint32 list) IsList;
    public static function bool(uint32 program) IsProgram;
    public static function bool(uint32 pipeline) IsProgramPipeline;
    public static function bool(uint32 id) IsQuery;
    public static function bool(uint32 renderbuffer) IsRenderbuffer;
    public static function bool(uint32 sampler) IsSampler;
    public static function bool(uint32 shader) IsShader;
    public static function bool(void* sync) IsSync;
    public static function bool(uint32 texture) IsTexture;
    public static function bool(uint32 id) IsTransformFeedback;
    public static function bool(uint32 array) IsVertexArray;
    public static function void(LightModelParameter pname, float param) LightModelf;
    public static function void(LightModelParameter pname, float* parameters) LightModelfv;
    public static function void(LightModelParameter pname, int32 param) LightModeli;
    public static function void(LightModelParameter pname, int32* parameters) LightModeliv;
    public static function void(LightName light, LightParameter pname, float param) Lightf;
    public static function void(LightName light, LightParameter pname, float* parameters) Lightfv;
    public static function void(LightName light, LightParameter pname, int32 param) Lighti;
    public static function void(LightName light, LightParameter pname, int32* parameters) Lightiv;
    public static function void(int32 factor, uint16 pattern) LineStipple;
    public static function void(float width) LineWidth;
    public static function void(uint32 program) LinkProgram;
    public static function void(uint32 glbase) ListBase;
    public static function void() LoadIdentity;
    public static function void(double* m) LoadMatrixd;
    public static function void(float* m) LoadMatrixf;
    public static function void(uint32 name) LoadName;
    public static function void(double* m) LoadTransposeMatrixd;
    public static function void(float* m) LoadTransposeMatrixf;
    public static function void(LogicOp opcode) LogicOp;
    public static function void(MapTarget target, double u1, double u2, int32 stride, int32 order, double* points) Map1d;
    public static function void(MapTarget target, float u1, float u2, int32 stride, int32 order, float* points) Map1f;
    public static function void(MapTarget target, double u1, double u2, int32 ustride, int32 uorder, double v1, double v2, int32 vstride, int32 vorder, double* points) Map2d;
    public static function void(MapTarget target, float u1, float u2, int32 ustride, int32 uorder, float v1, float v2, int32 vstride, int32 vorder, float* points) Map2f;
    public static function void*(BufferTargetARB target, BufferAccessARB access) MapBuffer;
    public static function void*(BufferTargetARB target, int32 offset, int32 length, MapBufferAccessMask access) MapBufferRange;
    public static function void(int32 un, double u1, double u2) MapGrid1d;
    public static function void(int32 un, float u1, float u2) MapGrid1f;
    public static function void(int32 un, double u1, double u2, int32 vn, double v1, double v2) MapGrid2d;
    public static function void(int32 un, float u1, float u2, int32 vn, float v1, float v2) MapGrid2f;
    public static function void*(uint32 buffer, BufferAccessARB access) MapNamedBuffer;
    public static function void*(uint32 buffer, int32 offset, int32 length, MapBufferAccessMask access) MapNamedBufferRange;
    public static function void(MaterialFace face, MaterialParameter pname, float param) Materialf;
    public static function void(MaterialFace face, MaterialParameter pname, float* parameters) Materialfv;
    public static function void(MaterialFace face, MaterialParameter pname, int32 param) Materiali;
    public static function void(MaterialFace face, MaterialParameter pname, int32* parameters) Materialiv;
    public static function void(MatrixMode mode) MatrixMode;
    public static function void(MemoryBarrierMask barriers) MemoryBarrier;
    public static function void(MemoryBarrierMask barriers) MemoryBarrierByRegion;
    public static function void(float value) MinSampleShading;
    public static function void(double* m) MultMatrixd;
    public static function void(float* m) MultMatrixf;
    public static function void(double* m) MultTransposeMatrixd;
    public static function void(float* m) MultTransposeMatrixf;
    public static function void(PrimitiveType mode, int32* first, int32* count, int32 drawcount) MultiDrawArrays;
    public static function void(PrimitiveType mode, void* indirect, int32 drawcount, int32 stride) MultiDrawArraysIndirect;
    public static function void(PrimitiveType mode, void* indirect, int32 drawcount, int32 maxdrawcount, int32 stride) MultiDrawArraysIndirectCount;
    public static function void(PrimitiveType mode, int32* count, DrawElementsType type, void** indices, int32 drawcount) MultiDrawElements;
    public static function void(PrimitiveType mode, int32* count, DrawElementsType type, void** indices, int32 drawcount, int32* basevertex) MultiDrawElementsBaseVertex;
    public static function void(PrimitiveType mode, DrawElementsType type, void* indirect, int32 drawcount, int32 stride) MultiDrawElementsIndirect;
    public static function void(PrimitiveType mode, DrawElementsType type, void* indirect, int32 drawcount, int32 maxdrawcount, int32 stride) MultiDrawElementsIndirectCount;
    public static function void(TextureUnit target, double s) MultiTexCoord1d;
    public static function void(TextureUnit target, double* v) MultiTexCoord1dv;
    public static function void(TextureUnit target, float s) MultiTexCoord1f;
    public static function void(TextureUnit target, float* v) MultiTexCoord1fv;
    public static function void(TextureUnit target, int32 s) MultiTexCoord1i;
    public static function void(TextureUnit target, int32* v) MultiTexCoord1iv;
    public static function void(TextureUnit target, int16 s) MultiTexCoord1s;
    public static function void(TextureUnit target, int16* v) MultiTexCoord1sv;
    public static function void(TextureUnit target, double s, double t) MultiTexCoord2d;
    public static function void(TextureUnit target, double* v) MultiTexCoord2dv;
    public static function void(TextureUnit target, float s, float t) MultiTexCoord2f;
    public static function void(TextureUnit target, float* v) MultiTexCoord2fv;
    public static function void(TextureUnit target, int32 s, int32 t) MultiTexCoord2i;
    public static function void(TextureUnit target, int32* v) MultiTexCoord2iv;
    public static function void(TextureUnit target, int16 s, int16 t) MultiTexCoord2s;
    public static function void(TextureUnit target, int16* v) MultiTexCoord2sv;
    public static function void(TextureUnit target, double s, double t, double r) MultiTexCoord3d;
    public static function void(TextureUnit target, double* v) MultiTexCoord3dv;
    public static function void(TextureUnit target, float s, float t, float r) MultiTexCoord3f;
    public static function void(TextureUnit target, float* v) MultiTexCoord3fv;
    public static function void(TextureUnit target, int32 s, int32 t, int32 r) MultiTexCoord3i;
    public static function void(TextureUnit target, int32* v) MultiTexCoord3iv;
    public static function void(TextureUnit target, int16 s, int16 t, int16 r) MultiTexCoord3s;
    public static function void(TextureUnit target, int16* v) MultiTexCoord3sv;
    public static function void(TextureUnit target, double s, double t, double r, double q) MultiTexCoord4d;
    public static function void(TextureUnit target, double* v) MultiTexCoord4dv;
    public static function void(TextureUnit target, float s, float t, float r, float q) MultiTexCoord4f;
    public static function void(TextureUnit target, float* v) MultiTexCoord4fv;
    public static function void(TextureUnit target, int32 s, int32 t, int32 r, int32 q) MultiTexCoord4i;
    public static function void(TextureUnit target, int32* v) MultiTexCoord4iv;
    public static function void(TextureUnit target, int16 s, int16 t, int16 r, int16 q) MultiTexCoord4s;
    public static function void(TextureUnit target, int16* v) MultiTexCoord4sv;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32 coords) MultiTexCoordP1ui;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32* coords) MultiTexCoordP1uiv;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32 coords) MultiTexCoordP2ui;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32* coords) MultiTexCoordP2uiv;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32 coords) MultiTexCoordP3ui;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32* coords) MultiTexCoordP3uiv;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32 coords) MultiTexCoordP4ui;
    public static function void(TextureUnit texture, TexCoordPointerType type, uint32* coords) MultiTexCoordP4uiv;
    public static function void(uint32 buffer, int32 size, void* data, VertexBufferObjectUsage usage) NamedBufferData;
    public static function void(uint32 buffer, int32 size, void* data, BufferStorageMask flags) NamedBufferStorage;
    public static function void(uint32 buffer, int32 offset, int32 size, void* data) NamedBufferSubData;
    public static function void(uint32 framebuffer, ColorBuffer buf) NamedFramebufferDrawBuffer;
    public static function void(uint32 framebuffer, int32 n, ColorBuffer* bufs) NamedFramebufferDrawBuffers;
    public static function void(uint32 framebuffer, FramebufferParameterName pname, int32 param) NamedFramebufferParameteri;
    public static function void(uint32 framebuffer, ColorBuffer src) NamedFramebufferReadBuffer;
    public static function void(uint32 framebuffer, FramebufferAttachment attachment, RenderbufferTarget renderbuffertarget, uint32 renderbuffer) NamedFramebufferRenderbuffer;
    public static function void(uint32 framebuffer, FramebufferAttachment attachment, uint32 texture, int32 level) NamedFramebufferTexture;
    public static function void(uint32 framebuffer, FramebufferAttachment attachment, uint32 texture, int32 level, int32 layer) NamedFramebufferTextureLayer;
    public static function void(uint32 renderbuffer, InternalFormat internalformat, int32 width, int32 height) NamedRenderbufferStorage;
    public static function void(uint32 renderbuffer, int32 samples, InternalFormat internalformat, int32 width, int32 height) NamedRenderbufferStorageMultisample;
    public static function void(uint32 list, ListMode mode) NewList;
    public static function void(int8 nx, int8 ny, int8 nz) Normal3b;
    public static function void(int8* v) Normal3bv;
    public static function void(double nx, double ny, double nz) Normal3d;
    public static function void(double* v) Normal3dv;
    public static function void(float nx, float ny, float nz) Normal3f;
    public static function void(float* v) Normal3fv;
    public static function void(int32 nx, int32 ny, int32 nz) Normal3i;
    public static function void(int32* v) Normal3iv;
    public static function void(int16 nx, int16 ny, int16 nz) Normal3s;
    public static function void(int16* v) Normal3sv;
    public static function void(NormalPointerType type, uint32 coords) NormalP3ui;
    public static function void(NormalPointerType type, uint32* coords) NormalP3uiv;
    public static function void(NormalPointerType type, int32 stride, void* pointer) NormalPointer;
    public static function void(ObjectIdentifier identifier, uint32 name, int32 length, char8* label) ObjectLabel;
    public static function void(void* ptr, int32 length, char8* label) ObjectPtrLabel;
    public static function void(double left, double right, double bottom, double top, double zNear, double zFar) Ortho;
    public static function void(float token) PassThrough;
    public static function void(PatchParameterName pname, float* values) PatchParameterfv;
    public static function void(PatchParameterName pname, int32 value) PatchParameteri;
    public static function void() PauseTransformFeedback;
    public static function void(PixelMap map, int32 mapsize, float* values) PixelMapfv;
    public static function void(PixelMap map, int32 mapsize, uint32* values) PixelMapuiv;
    public static function void(PixelMap map, int32 mapsize, uint16* values) PixelMapusv;
    public static function void(PixelStoreParameter pname, float param) PixelStoref;
    public static function void(PixelStoreParameter pname, int32 param) PixelStorei;
    public static function void(PixelTransferParameter pname, float param) PixelTransferf;
    public static function void(PixelTransferParameter pname, int32 param) PixelTransferi;
    public static function void(float xfactor, float yfactor) PixelZoom;
    public static function void(PointParameterNameARB pname, float param) PointParameterf;
    public static function void(PointParameterNameARB pname, float* parameters) PointParameterfv;
    public static function void(PointParameterNameARB pname, int32 param) PointParameteri;
    public static function void(PointParameterNameARB pname, int32* parameters) PointParameteriv;
    public static function void(float size) PointSize;
    public static function void(MaterialFace face, PolygonMode mode) PolygonMode_;
    public static function void(float factor, float units) PolygonOffset;
    public static function void(float factor, float units, float clamp) PolygonOffsetClamp;
    public static function void(uint8* mask) PolygonStipple;
    public static function void() PopAttrib;
    public static function void() PopClientAttrib;
    public static function void() PopDebugGroup;
    public static function void() PopMatrix;
    public static function void() PopName;
    public static function void(uint32 index) PrimitiveRestartIndex;
    public static function void(int32 n, uint32* textures, float* priorities) PrioritizeTextures;
    public static function void(uint32 program, uint32 binaryFormat, void* binary, int32 length) ProgramBinary;
    public static function void(uint32 program, ProgramParameterPName pname, int32 value) ProgramParameteri;
    public static function void(uint32 program, int32 location, double v0) ProgramUniform1d;
    public static function void(uint32 program, int32 location, int32 count, double* value) ProgramUniform1dv;
    public static function void(uint32 program, int32 location, float v0) ProgramUniform1f;
    public static function void(uint32 program, int32 location, int32 count, float* value) ProgramUniform1fv;
    public static function void(uint32 program, int32 location, int32 v0) ProgramUniform1i;
    public static function void(uint32 program, int32 location, int32 count, int32* value) ProgramUniform1iv;
    public static function void(uint32 program, int32 location, uint32 v0) ProgramUniform1ui;
    public static function void(uint32 program, int32 location, int32 count, uint32* value) ProgramUniform1uiv;
    public static function void(uint32 program, int32 location, double v0, double v1) ProgramUniform2d;
    public static function void(uint32 program, int32 location, int32 count, double* value) ProgramUniform2dv;
    public static function void(uint32 program, int32 location, float v0, float v1) ProgramUniform2f;
    public static function void(uint32 program, int32 location, int32 count, float* value) ProgramUniform2fv;
    public static function void(uint32 program, int32 location, int32 v0, int32 v1) ProgramUniform2i;
    public static function void(uint32 program, int32 location, int32 count, int32* value) ProgramUniform2iv;
    public static function void(uint32 program, int32 location, uint32 v0, uint32 v1) ProgramUniform2ui;
    public static function void(uint32 program, int32 location, int32 count, uint32* value) ProgramUniform2uiv;
    public static function void(uint32 program, int32 location, double v0, double v1, double v2) ProgramUniform3d;
    public static function void(uint32 program, int32 location, int32 count, double* value) ProgramUniform3dv;
    public static function void(uint32 program, int32 location, float v0, float v1, float v2) ProgramUniform3f;
    public static function void(uint32 program, int32 location, int32 count, float* value) ProgramUniform3fv;
    public static function void(uint32 program, int32 location, int32 v0, int32 v1, int32 v2) ProgramUniform3i;
    public static function void(uint32 program, int32 location, int32 count, int32* value) ProgramUniform3iv;
    public static function void(uint32 program, int32 location, uint32 v0, uint32 v1, uint32 v2) ProgramUniform3ui;
    public static function void(uint32 program, int32 location, int32 count, uint32* value) ProgramUniform3uiv;
    public static function void(uint32 program, int32 location, double v0, double v1, double v2, double v3) ProgramUniform4d;
    public static function void(uint32 program, int32 location, int32 count, double* value) ProgramUniform4dv;
    public static function void(uint32 program, int32 location, float v0, float v1, float v2, float v3) ProgramUniform4f;
    public static function void(uint32 program, int32 location, int32 count, float* value) ProgramUniform4fv;
    public static function void(uint32 program, int32 location, int32 v0, int32 v1, int32 v2, int32 v3) ProgramUniform4i;
    public static function void(uint32 program, int32 location, int32 count, int32* value) ProgramUniform4iv;
    public static function void(uint32 program, int32 location, uint32 v0, uint32 v1, uint32 v2, uint32 v3) ProgramUniform4ui;
    public static function void(uint32 program, int32 location, int32 count, uint32* value) ProgramUniform4uiv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix2dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix2fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix2x3dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix2x3fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix2x4dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix2x4fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix3dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix3fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix3x2dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix3x2fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix3x4dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix3x4fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix4dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix4fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix4x2dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix4x2fv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, double* value) ProgramUniformMatrix4x3dv;
    public static function void(uint32 program, int32 location, int32 count, Boolean transpose, float* value) ProgramUniformMatrix4x3fv;
    public static function void(VertexProvokingMode mode) ProvokingVertex;
    public static function void(AttribMask mask) PushAttrib;
    public static function void(ClientAttribMask mask) PushClientAttrib;
    public static function void(DebugSource source, uint32 id, int32 length, char8* message) PushDebugGroup;
    public static function void() PushMatrix;
    public static function void(uint32 name) PushName;
    public static function void(uint32 id, QueryCounterTarget target) QueryCounter;
    public static function void(double x, double y) RasterPos2d;
    public static function void(double* v) RasterPos2dv;
    public static function void(float x, float y) RasterPos2f;
    public static function void(float* v) RasterPos2fv;
    public static function void(int32 x, int32 y) RasterPos2i;
    public static function void(int32* v) RasterPos2iv;
    public static function void(int16 x, int16 y) RasterPos2s;
    public static function void(int16* v) RasterPos2sv;
    public static function void(double x, double y, double z) RasterPos3d;
    public static function void(double* v) RasterPos3dv;
    public static function void(float x, float y, float z) RasterPos3f;
    public static function void(float* v) RasterPos3fv;
    public static function void(int32 x, int32 y, int32 z) RasterPos3i;
    public static function void(int32* v) RasterPos3iv;
    public static function void(int16 x, int16 y, int16 z) RasterPos3s;
    public static function void(int16* v) RasterPos3sv;
    public static function void(double x, double y, double z, double w) RasterPos4d;
    public static function void(double* v) RasterPos4dv;
    public static function void(float x, float y, float z, float w) RasterPos4f;
    public static function void(float* v) RasterPos4fv;
    public static function void(int32 x, int32 y, int32 z, int32 w) RasterPos4i;
    public static function void(int32* v) RasterPos4iv;
    public static function void(int16 x, int16 y, int16 z, int16 w) RasterPos4s;
    public static function void(int16* v) RasterPos4sv;
    public static function void(ReadBufferMode src) ReadBuffer;
    public static function void(int32 x, int32 y, int32 width, int32 height, PixelFormat format, PixelType type, void* pixels) ReadPixels;
    public static function void(int32 x, int32 y, int32 width, int32 height, PixelFormat format, PixelType type, int32 bufSize, void* data) ReadnPixels;
    public static function void(double x1, double y1, double x2, double y2) Rectd;
    public static function void(double* v1, double* v2) Rectdv;
    public static function void(float x1, float y1, float x2, float y2) Rectf;
    public static function void(float* v1, float* v2) Rectfv;
    public static function void(int32 x1, int32 y1, int32 x2, int32 y2) Recti;
    public static function void(int32* v1, int32* v2) Rectiv;
    public static function void(int16 x1, int16 y1, int16 x2, int16 y2) Rects;
    public static function void(int16* v1, int16* v2) Rectsv;
    public static function void() ReleaseShaderCompiler;
    public static function int32(RenderingMode mode) RenderMode;
    public static function void(RenderbufferTarget target, InternalFormat internalformat, int32 width, int32 height) RenderbufferStorage;
    public static function void(RenderbufferTarget target, int32 samples, InternalFormat internalformat, int32 width, int32 height) RenderbufferStorageMultisample;
    public static function void() ResumeTransformFeedback;
    public static function void(double angle, double x, double y, double z) Rotated;
    public static function void(float angle, float x, float y, float z) Rotatef;
    public static function void(float value, Boolean invert) SampleCoverage;
    public static function void(uint32 maskNumber, uint32 mask) SampleMaski;
    public static function void(uint32 sampler, SamplerParameterI pname, int32* param) SamplerParameterIiv;
    public static function void(uint32 sampler, SamplerParameterI pname, uint32* param) SamplerParameterIuiv;
    public static function void(uint32 sampler, SamplerParameterF pname, float param) SamplerParameterf;
    public static function void(uint32 sampler, SamplerParameterF pname, float* param) SamplerParameterfv;
    public static function void(uint32 sampler, SamplerParameterI pname, int32 param) SamplerParameteri;
    public static function void(uint32 sampler, SamplerParameterI pname, int32* param) SamplerParameteriv;
    public static function void(double x, double y, double z) Scaled;
    public static function void(float x, float y, float z) Scalef;
    public static function void(int32 x, int32 y, int32 width, int32 height) Scissor;
    public static function void(uint32 first, int32 count, int32* v) ScissorArrayv;
    public static function void(uint32 index, int32 left, int32 bottom, int32 width, int32 height) ScissorIndexed;
    public static function void(uint32 index, int32* v) ScissorIndexedv;
    public static function void(int8 red, int8 green, int8 blue) SecondaryColor3b;
    public static function void(int8* v) SecondaryColor3bv;
    public static function void(double red, double green, double blue) SecondaryColor3d;
    public static function void(double* v) SecondaryColor3dv;
    public static function void(float red, float green, float blue) SecondaryColor3f;
    public static function void(float* v) SecondaryColor3fv;
    public static function void(int32 red, int32 green, int32 blue) SecondaryColor3i;
    public static function void(int32* v) SecondaryColor3iv;
    public static function void(int16 red, int16 green, int16 blue) SecondaryColor3s;
    public static function void(int16* v) SecondaryColor3sv;
    public static function void(uint8 red, uint8 green, uint8 blue) SecondaryColor3ub;
    public static function void(uint8* v) SecondaryColor3ubv;
    public static function void(uint32 red, uint32 green, uint32 blue) SecondaryColor3ui;
    public static function void(uint32* v) SecondaryColor3uiv;
    public static function void(uint16 red, uint16 green, uint16 blue) SecondaryColor3us;
    public static function void(uint16* v) SecondaryColor3usv;
    public static function void(ColorPointerType type, uint32 color) SecondaryColorP3ui;
    public static function void(ColorPointerType type, uint32* color) SecondaryColorP3uiv;
    public static function void(int32 size, ColorPointerType type, int32 stride, void* pointer) SecondaryColorPointer;
    public static function void(int32 size, uint32* buffer) SelectBuffer;
    public static function void(ShadingModel mode) ShadeModel;
    public static function void(int32 count, uint32* shaders, ShaderBinaryFormat binaryFormat, void* binary, int32 length) ShaderBinary;
    public static function void(uint32 shader, int32 count, char8** string, int32* length) ShaderSource;
    public static function void(uint32 program, uint32 storageBlockIndex, uint32 storageBlockBinding) ShaderStorageBlockBinding;
    public static function void(uint32 shader, char8* pEntryPoint, uint32 numSpecializationConstants, uint32* pConstantIndex, uint32* pConstantValue) SpecializeShader;
    public static function void(StencilFunction func, int32 reference, uint32 mask) StencilFunc;
    public static function void(StencilFaceDirection face, StencilFunction func, int32 reference, uint32 mask) StencilFuncSeparate;
    public static function void(uint32 mask) StencilMask;
    public static function void(StencilFaceDirection face, uint32 mask) StencilMaskSeparate;
    public static function void(StencilOp fail, StencilOp zfail, StencilOp zpass) StencilOp;
    public static function void(StencilFaceDirection face, StencilOp sfail, StencilOp dpfail, StencilOp dppass) StencilOpSeparate;
    public static function void(TextureTarget target, SizedInternalFormat internalformat, uint32 buffer) TexBuffer;
    public static function void(TextureTarget target, SizedInternalFormat internalformat, uint32 buffer, int32 offset, int32 size) TexBufferRange;
    public static function void(double s) TexCoord1d;
    public static function void(double* v) TexCoord1dv;
    public static function void(float s) TexCoord1f;
    public static function void(float* v) TexCoord1fv;
    public static function void(int32 s) TexCoord1i;
    public static function void(int32* v) TexCoord1iv;
    public static function void(int16 s) TexCoord1s;
    public static function void(int16* v) TexCoord1sv;
    public static function void(double s, double t) TexCoord2d;
    public static function void(double* v) TexCoord2dv;
    public static function void(float s, float t) TexCoord2f;
    public static function void(float* v) TexCoord2fv;
    public static function void(int32 s, int32 t) TexCoord2i;
    public static function void(int32* v) TexCoord2iv;
    public static function void(int16 s, int16 t) TexCoord2s;
    public static function void(int16* v) TexCoord2sv;
    public static function void(double s, double t, double r) TexCoord3d;
    public static function void(double* v) TexCoord3dv;
    public static function void(float s, float t, float r) TexCoord3f;
    public static function void(float* v) TexCoord3fv;
    public static function void(int32 s, int32 t, int32 r) TexCoord3i;
    public static function void(int32* v) TexCoord3iv;
    public static function void(int16 s, int16 t, int16 r) TexCoord3s;
    public static function void(int16* v) TexCoord3sv;
    public static function void(double s, double t, double r, double q) TexCoord4d;
    public static function void(double* v) TexCoord4dv;
    public static function void(float s, float t, float r, float q) TexCoord4f;
    public static function void(float* v) TexCoord4fv;
    public static function void(int32 s, int32 t, int32 r, int32 q) TexCoord4i;
    public static function void(int32* v) TexCoord4iv;
    public static function void(int16 s, int16 t, int16 r, int16 q) TexCoord4s;
    public static function void(int16* v) TexCoord4sv;
    public static function void(TexCoordPointerType type, uint32 coords) TexCoordP1ui;
    public static function void(TexCoordPointerType type, uint32* coords) TexCoordP1uiv;
    public static function void(TexCoordPointerType type, uint32 coords) TexCoordP2ui;
    public static function void(TexCoordPointerType type, uint32* coords) TexCoordP2uiv;
    public static function void(TexCoordPointerType type, uint32 coords) TexCoordP3ui;
    public static function void(TexCoordPointerType type, uint32* coords) TexCoordP3uiv;
    public static function void(TexCoordPointerType type, uint32 coords) TexCoordP4ui;
    public static function void(TexCoordPointerType type, uint32* coords) TexCoordP4uiv;
    public static function void(int32 size, TexCoordPointerType type, int32 stride, void* pointer) TexCoordPointer;
    public static function void(TextureEnvTarget target, TextureEnvParameter pname, float param) TexEnvf;
    public static function void(TextureEnvTarget target, TextureEnvParameter pname, float* parameters) TexEnvfv;
    public static function void(TextureEnvTarget target, TextureEnvParameter pname, int32 param) TexEnvi;
    public static function void(TextureEnvTarget target, TextureEnvParameter pname, int32* parameters) TexEnviv;
    public static function void(TextureCoordName coord, TextureGenParameter pname, double param) TexGend;
    public static function void(TextureCoordName coord, TextureGenParameter pname, double* parameters) TexGendv;
    public static function void(TextureCoordName coord, TextureGenParameter pname, float param) TexGenf;
    public static function void(TextureCoordName coord, TextureGenParameter pname, float* parameters) TexGenfv;
    public static function void(TextureCoordName coord, TextureGenParameter pname, int32 param) TexGeni;
    public static function void(TextureCoordName coord, TextureGenParameter pname, int32* parameters) TexGeniv;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 width, int32 border, PixelFormat format, PixelType type, void* pixels) TexImage1D;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 width, int32 height, int32 border, PixelFormat format, PixelType type, void* pixels) TexImage2D;
    public static function void(TextureTarget target, int32 samples, InternalFormat internalformat, int32 width, int32 height, Boolean fixedsamplelocations) TexImage2DMultisample;
    public static function void(TextureTarget target, int32 level, InternalFormat internalformat, int32 width, int32 height, int32 depth, int32 border, PixelFormat format, PixelType type, void* pixels) TexImage3D;
    public static function void(TextureTarget target, int32 samples, InternalFormat internalformat, int32 width, int32 height, int32 depth, Boolean fixedsamplelocations) TexImage3DMultisample;
    public static function void(TextureTarget target, TextureParameterName pname, int32* parameters) TexParameterIiv;
    public static function void(TextureTarget target, TextureParameterName pname, uint32* parameters) TexParameterIuiv;
    public static function void(TextureTarget target, TextureParameterName pname, float param) TexParameterf;
    public static function void(TextureTarget target, TextureParameterName pname, float* parameters) TexParameterfv;


	static function void(TextureTarget target, TextureParameterName pname, int32 param) _TexParameteri;

	public static void TexParameteri(TextureTarget target, TextureParameterName pname, int32 param) => _TexParameteri(target, pname, param);
	public static void TexParameteri(TextureTarget target, TextureParameterName pname, TextureWrapMode param) => _TexParameteri(target, pname, (.)param);
	public static void TexParameteri(TextureTarget target, TextureParameterName pname, TextureMinFilter param) => _TexParameteri(target, pname, (.)param);
    //public static void TexParameteri(TextureTarget target, TextureParameterName pname, TextureMagFilter param) => _TexParameteri(target, pname, (.)param);

    public static function void(TextureTarget target, TextureParameterName pname, int32* parameters) TexParameteriv;
    public static function void(TextureTarget target, int32 levels, SizedInternalFormat internalformat, int32 width) TexStorage1D;
    public static function void(TextureTarget target, int32 levels, SizedInternalFormat internalformat, int32 width, int32 height) TexStorage2D;
    public static function void(TextureTarget target, int32 samples, SizedInternalFormat internalformat, int32 width, int32 height, Boolean fixedsamplelocations) TexStorage2DMultisample;
    public static function void(TextureTarget target, int32 levels, SizedInternalFormat internalformat, int32 width, int32 height, int32 depth) TexStorage3D;
    public static function void(TextureTarget target, int32 samples, SizedInternalFormat internalformat, int32 width, int32 height, int32 depth, Boolean fixedsamplelocations) TexStorage3DMultisample;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 width, PixelFormat format, PixelType type, void* pixels) TexSubImage1D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, PixelFormat format, PixelType type, void* pixels) TexSubImage2D;
    public static function void(TextureTarget target, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth, PixelFormat format, PixelType type, void* pixels) TexSubImage3D;
    public static function void() TextureBarrier;
    public static function void(uint32 texture, SizedInternalFormat internalformat, uint32 buffer) TextureBuffer;
    public static function void(uint32 texture, SizedInternalFormat internalformat, uint32 buffer, int32 offset, int32 size) TextureBufferRange;
    public static function void(uint32 texture, TextureParameterName pname, int32* parameters) TextureParameterIiv;
    public static function void(uint32 texture, TextureParameterName pname, uint32* parameters) TextureParameterIuiv;
    public static function void(uint32 texture, TextureParameterName pname, float param) TextureParameterf;
    public static function void(uint32 texture, TextureParameterName pname, float* param) TextureParameterfv;
    public static function void(uint32 texture, TextureParameterName pname, int32 param) TextureParameteri;
    public static function void(uint32 texture, TextureParameterName pname, int32* param) TextureParameteriv;
    public static function void(uint32 texture, int32 levels, SizedInternalFormat internalformat, int32 width) TextureStorage1D;
    public static function void(uint32 texture, int32 levels, SizedInternalFormat internalformat, int32 width, int32 height) TextureStorage2D;
    public static function void(uint32 texture, int32 samples, SizedInternalFormat internalformat, int32 width, int32 height, Boolean fixedsamplelocations) TextureStorage2DMultisample;
    public static function void(uint32 texture, int32 levels, SizedInternalFormat internalformat, int32 width, int32 height, int32 depth) TextureStorage3D;
    public static function void(uint32 texture, int32 samples, SizedInternalFormat internalformat, int32 width, int32 height, int32 depth, Boolean fixedsamplelocations) TextureStorage3DMultisample;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 width, PixelFormat format, PixelType type, void* pixels) TextureSubImage1D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 width, int32 height, PixelFormat format, PixelType type, void* pixels) TextureSubImage2D;
    public static function void(uint32 texture, int32 level, int32 xoffset, int32 yoffset, int32 zoffset, int32 width, int32 height, int32 depth, PixelFormat format, PixelType type, void* pixels) TextureSubImage3D;
    public static function void(uint32 texture, TextureTarget target, uint32 origtexture, SizedInternalFormat internalformat, uint32 minlevel, uint32 numlevels, uint32 minlayer, uint32 numlayers) TextureView;
    public static function void(uint32 xfb, uint32 index, uint32 buffer) TransformFeedbackBufferBase;
    public static function void(uint32 xfb, uint32 index, uint32 buffer, int32 offset, int32 size) TransformFeedbackBufferRange;
    public static function void(uint32 program, int32 count, char8** varyings, TransformFeedbackBufferMode bufferMode) TransformFeedbackVaryings;
    public static function void(double x, double y, double z) Translated;
    public static function void(float x, float y, float z) Translatef;
    public static function void(int32 location, double x) Uniform1d;
    public static function void(int32 location, int32 count, double* value) Uniform1dv;
    public static function void(int32 location, float v0) Uniform1f;
    public static function void(int32 location, int32 count, float* value) Uniform1fv;
    public static function void(int32 location, int32 v0) Uniform1i;
    public static function void(int32 location, int32 count, int32* value) Uniform1iv;
    public static function void(int32 location, uint32 v0) Uniform1ui;
    public static function void(int32 location, int32 count, uint32* value) Uniform1uiv;
    public static function void(int32 location, double x, double y) Uniform2d;
    public static function void(int32 location, int32 count, double* value) Uniform2dv;
    public static function void(int32 location, float v0, float v1) Uniform2f;
    public static function void(int32 location, int32 count, float* value) Uniform2fv;
    public static function void(int32 location, int32 v0, int32 v1) Uniform2i;
    public static function void(int32 location, int32 count, int32* value) Uniform2iv;
    public static function void(int32 location, uint32 v0, uint32 v1) Uniform2ui;
    public static function void(int32 location, int32 count, uint32* value) Uniform2uiv;
    public static function void(int32 location, double x, double y, double z) Uniform3d;
    public static function void(int32 location, int32 count, double* value) Uniform3dv;
    public static function void(int32 location, float v0, float v1, float v2) Uniform3f;
    public static function void(int32 location, int32 count, float* value) Uniform3fv;
    public static function void(int32 location, int32 v0, int32 v1, int32 v2) Uniform3i;
    public static function void(int32 location, int32 count, int32* value) Uniform3iv;
    public static function void(int32 location, uint32 v0, uint32 v1, uint32 v2) Uniform3ui;
    public static function void(int32 location, int32 count, uint32* value) Uniform3uiv;
    public static function void(int32 location, double x, double y, double z, double w) Uniform4d;
    public static function void(int32 location, int32 count, double* value) Uniform4dv;
    public static function void(int32 location, float v0, float v1, float v2, float v3) Uniform4f;
    public static function void(int32 location, int32 count, float* value) Uniform4fv;
    public static function void(int32 location, int32 v0, int32 v1, int32 v2, int32 v3) Uniform4i;
    public static function void(int32 location, int32 count, int32* value) Uniform4iv;
    public static function void(int32 location, uint32 v0, uint32 v1, uint32 v2, uint32 v3) Uniform4ui;
    public static function void(int32 location, int32 count, uint32* value) Uniform4uiv;
    public static function void(uint32 program, uint32 uniformBlockIndex, uint32 uniformBlockBinding) UniformBlockBinding;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix2dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix2fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix2x3dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix2x3fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix2x4dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix2x4fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix3dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix3fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix3x2dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix3x2fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix3x4dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix3x4fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix4dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix4fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix4x2dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix4x2fv;
    public static function void(int32 location, int32 count, Boolean transpose, double* value) UniformMatrix4x3dv;
    public static function void(int32 location, int32 count, Boolean transpose, float* value) UniformMatrix4x3fv;
    public static function void(ShaderType shadertype, int32 count, uint32* indices) UniformSubroutinesuiv;
    public static function bool(BufferTargetARB target) UnmapBuffer;
    public static function bool(uint32 buffer) UnmapNamedBuffer;
    public static function void(uint32 program) UseProgram;
    public static function void(uint32 pipeline, UseProgramStageMask stages, uint32 program) UseProgramStages;
    public static function void(uint32 program) ValidateProgram;
    public static function void(uint32 pipeline) ValidateProgramPipeline;
    public static function void(double x, double y) Vertex2d;
    public static function void(double* v) Vertex2dv;
    public static function void(float x, float y) Vertex2f;
    public static function void(float* v) Vertex2fv;
    public static function void(int32 x, int32 y) Vertex2i;
    public static function void(int32* v) Vertex2iv;
    public static function void(int16 x, int16 y) Vertex2s;
    public static function void(int16* v) Vertex2sv;
    public static function void(double x, double y, double z) Vertex3d;
    public static function void(double* v) Vertex3dv;
    public static function void(float x, float y, float z) Vertex3f;
    public static function void(float* v) Vertex3fv;
    public static function void(int32 x, int32 y, int32 z) Vertex3i;
    public static function void(int32* v) Vertex3iv;
    public static function void(int16 x, int16 y, int16 z) Vertex3s;
    public static function void(int16* v) Vertex3sv;
    public static function void(double x, double y, double z, double w) Vertex4d;
    public static function void(double* v) Vertex4dv;
    public static function void(float x, float y, float z, float w) Vertex4f;
    public static function void(float* v) Vertex4fv;
    public static function void(int32 x, int32 y, int32 z, int32 w) Vertex4i;
    public static function void(int32* v) Vertex4iv;
    public static function void(int16 x, int16 y, int16 z, int16 w) Vertex4s;
    public static function void(int16* v) Vertex4sv;
    public static function void(uint32 vaobj, uint32 attribindex, uint32 bindingindex) VertexArrayAttribBinding;
    public static function void(uint32 vaobj, uint32 attribindex, int32 size, VertexAttribType type, Boolean normalized, uint32 relativeoffset) VertexArrayAttribFormat;
    public static function void(uint32 vaobj, uint32 attribindex, int32 size, VertexAttribIType type, uint32 relativeoffset) VertexArrayAttribIFormat;
    public static function void(uint32 vaobj, uint32 attribindex, int32 size, VertexAttribLType type, uint32 relativeoffset) VertexArrayAttribLFormat;
    public static function void(uint32 vaobj, uint32 bindingindex, uint32 divisor) VertexArrayBindingDivisor;
    public static function void(uint32 vaobj, uint32 buffer) VertexArrayElementBuffer;
    public static function void(uint32 vaobj, uint32 bindingindex, uint32 buffer, int32 offset, int32 stride) VertexArrayVertexBuffer;
    public static function void(uint32 vaobj, uint32 first, int32 count, uint32* buffers, int32* offsets, int32* strides) VertexArrayVertexBuffers;
    public static function void(uint32 index, double x) VertexAttrib1d;
    public static function void(uint32 index, double* v) VertexAttrib1dv;
    public static function void(uint32 index, float x) VertexAttrib1f;
    public static function void(uint32 index, float* v) VertexAttrib1fv;
    public static function void(uint32 index, int16 x) VertexAttrib1s;
    public static function void(uint32 index, int16* v) VertexAttrib1sv;
    public static function void(uint32 index, double x, double y) VertexAttrib2d;
    public static function void(uint32 index, double* v) VertexAttrib2dv;
    public static function void(uint32 index, float x, float y) VertexAttrib2f;
    public static function void(uint32 index, float* v) VertexAttrib2fv;
    public static function void(uint32 index, int16 x, int16 y) VertexAttrib2s;
    public static function void(uint32 index, int16* v) VertexAttrib2sv;
    public static function void(uint32 index, double x, double y, double z) VertexAttrib3d;
    public static function void(uint32 index, double* v) VertexAttrib3dv;
    public static function void(uint32 index, float x, float y, float z) VertexAttrib3f;
    public static function void(uint32 index, float* v) VertexAttrib3fv;
    public static function void(uint32 index, int16 x, int16 y, int16 z) VertexAttrib3s;
    public static function void(uint32 index, int16* v) VertexAttrib3sv;
    public static function void(uint32 index, int8* v) VertexAttrib4Nbv;
    public static function void(uint32 index, int32* v) VertexAttrib4Niv;
    public static function void(uint32 index, int16* v) VertexAttrib4Nsv;
    public static function void(uint32 index, uint8 x, uint8 y, uint8 z, uint8 w) VertexAttrib4Nub;
    public static function void(uint32 index, uint8* v) VertexAttrib4Nubv;
    public static function void(uint32 index, uint32* v) VertexAttrib4Nuiv;
    public static function void(uint32 index, uint16* v) VertexAttrib4Nusv;
    public static function void(uint32 index, int8* v) VertexAttrib4bv;
    public static function void(uint32 index, double x, double y, double z, double w) VertexAttrib4d;
    public static function void(uint32 index, double* v) VertexAttrib4dv;
    public static function void(uint32 index, float x, float y, float z, float w) VertexAttrib4f;
    public static function void(uint32 index, float* v) VertexAttrib4fv;
    public static function void(uint32 index, int32* v) VertexAttrib4iv;
    public static function void(uint32 index, int16 x, int16 y, int16 z, int16 w) VertexAttrib4s;
    public static function void(uint32 index, int16* v) VertexAttrib4sv;
    public static function void(uint32 index, uint8* v) VertexAttrib4ubv;
    public static function void(uint32 index, uint32* v) VertexAttrib4uiv;
    public static function void(uint32 index, uint16* v) VertexAttrib4usv;
    public static function void(uint32 attribindex, uint32 bindingindex) VertexAttribBinding;
    public static function void(uint32 index, uint32 divisor) VertexAttribDivisor;
    public static function void(uint32 attribindex, int32 size, VertexAttribType type, Boolean normalized, uint32 relativeoffset) VertexAttribFormat;
    public static function void(uint32 index, int32 x) VertexAttribI1i;
    public static function void(uint32 index, int32* v) VertexAttribI1iv;
    public static function void(uint32 index, uint32 x) VertexAttribI1ui;
    public static function void(uint32 index, uint32* v) VertexAttribI1uiv;
    public static function void(uint32 index, int32 x, int32 y) VertexAttribI2i;
    public static function void(uint32 index, int32* v) VertexAttribI2iv;
    public static function void(uint32 index, uint32 x, uint32 y) VertexAttribI2ui;
    public static function void(uint32 index, uint32* v) VertexAttribI2uiv;
    public static function void(uint32 index, int32 x, int32 y, int32 z) VertexAttribI3i;
    public static function void(uint32 index, int32* v) VertexAttribI3iv;
    public static function void(uint32 index, uint32 x, uint32 y, uint32 z) VertexAttribI3ui;
    public static function void(uint32 index, uint32* v) VertexAttribI3uiv;
    public static function void(uint32 index, int8* v) VertexAttribI4bv;
    public static function void(uint32 index, int32 x, int32 y, int32 z, int32 w) VertexAttribI4i;
    public static function void(uint32 index, int32* v) VertexAttribI4iv;
    public static function void(uint32 index, int16* v) VertexAttribI4sv;
    public static function void(uint32 index, uint8* v) VertexAttribI4ubv;
    public static function void(uint32 index, uint32 x, uint32 y, uint32 z, uint32 w) VertexAttribI4ui;
    public static function void(uint32 index, uint32* v) VertexAttribI4uiv;
    public static function void(uint32 index, uint16* v) VertexAttribI4usv;
    public static function void(uint32 attribindex, int32 size, VertexAttribIType type, uint32 relativeoffset) VertexAttribIFormat;
    public static function void(uint32 index, int32 size, VertexAttribIType type, int32 stride, void* pointer) VertexAttribIPointer;
    public static function void(uint32 index, double x) VertexAttribL1d;
    public static function void(uint32 index, double* v) VertexAttribL1dv;
    public static function void(uint32 index, double x, double y) VertexAttribL2d;
    public static function void(uint32 index, double* v) VertexAttribL2dv;
    public static function void(uint32 index, double x, double y, double z) VertexAttribL3d;
    public static function void(uint32 index, double* v) VertexAttribL3dv;
    public static function void(uint32 index, double x, double y, double z, double w) VertexAttribL4d;
    public static function void(uint32 index, double* v) VertexAttribL4dv;
    public static function void(uint32 attribindex, int32 size, VertexAttribLType type, uint32 relativeoffset) VertexAttribLFormat;
    public static function void(uint32 index, int32 size, VertexAttribLType type, int32 stride, void* pointer) VertexAttribLPointer;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32 value) VertexAttribP1ui;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32* value) VertexAttribP1uiv;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32 value) VertexAttribP2ui;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32* value) VertexAttribP2uiv;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32 value) VertexAttribP3ui;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32* value) VertexAttribP3uiv;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32 value) VertexAttribP4ui;
    public static function void(uint32 index, VertexAttribPointerType type, Boolean normalized, uint32* value) VertexAttribP4uiv;
    public static function void(uint32 index, int32 size, VertexAttribPointerType type, Boolean normalized, int32 stride, void* pointer) VertexAttribPointer;
    public static function void(uint32 bindingindex, uint32 divisor) VertexBindingDivisor;
    public static function void(VertexPointerType type, uint32 value) VertexP2ui;
    public static function void(VertexPointerType type, uint32* value) VertexP2uiv;
    public static function void(VertexPointerType type, uint32 value) VertexP3ui;
    public static function void(VertexPointerType type, uint32* value) VertexP3uiv;
    public static function void(VertexPointerType type, uint32 value) VertexP4ui;
    public static function void(VertexPointerType type, uint32* value) VertexP4uiv;
    public static function void(int32 size, VertexPointerType type, int32 stride, void* pointer) VertexPointer;
    public static function void(int32 x, int32 y, int32 width, int32 height) Viewport;
    public static function void(uint32 first, int32 count, float* v) ViewportArrayv;
    public static function void(uint32 index, float x, float y, float w, float h) ViewportIndexedf;
    public static function void(uint32 index, float* v) ViewportIndexedfv;
    public static function void(void* sync, SyncBehaviorFlags flags, uint64 timeout) WaitSync;
    public static function void(double x, double y) WindowPos2d;
    public static function void(double* v) WindowPos2dv;
    public static function void(float x, float y) WindowPos2f;
    public static function void(float* v) WindowPos2fv;
    public static function void(int32 x, int32 y) WindowPos2i;
    public static function void(int32* v) WindowPos2iv;
    public static function void(int16 x, int16 y) WindowPos2s;
    public static function void(int16* v) WindowPos2sv;
    public static function void(double x, double y, double z) WindowPos3d;
    public static function void(double* v) WindowPos3dv;
    public static function void(float x, float y, float z) WindowPos3f;
    public static function void(float* v) WindowPos3fv;
    public static function void(int32 x, int32 y, int32 z) WindowPos3i;
    public static function void(int32* v) WindowPos3iv;
    public static function void(int16 x, int16 y, int16 z) WindowPos3s;
    public static function void(int16* v) WindowPos3sv;

    public static void Init(function void*(char8*/*StringView*/ procname) func) {
        TexGendv = (.)func("glTexGendv");
        PointParameteriv = (.)func("glPointParameteriv");
        VertexP2ui = (.)func("glVertexP2ui");
        VertexAttribI4uiv = (.)func("glVertexAttribI4uiv");
        NamedFramebufferParameteri = (.)func("glNamedFramebufferParameteri");
        RasterPos4dv = (.)func("glRasterPos4dv");
        Uniform1iv = (.)func("glUniform1iv");
        NamedBufferData = (.)func("glNamedBufferData");
        PushDebugGroup = (.)func("glPushDebugGroup");
        FogCoorddv = (.)func("glFogCoorddv");
        LineWidth = (.)func("glLineWidth");
        BindRenderbuffer = (.)func("glBindRenderbuffer");
        ProgramUniform3uiv = (.)func("glProgramUniform3uiv");
        InvalidateNamedFramebufferData = (.)func("glInvalidateNamedFramebufferData");
        VertexAttrib3sv = (.)func("glVertexAttrib3sv");
        UseProgramStages = (.)func("glUseProgramStages");
        VertexAttribPointer = (.)func("glVertexAttribPointer");
        GetQueryBufferObjectiv = (.)func("glGetQueryBufferObjectiv");
        TexGenfv = (.)func("glTexGenfv");
        ClampColor = (.)func("glClampColor");
        PopAttrib = (.)func("glPopAttrib");
        Accum = (.)func("glAccum");
        Uniform4uiv = (.)func("glUniform4uiv");
        ShadeModel = (.)func("glShadeModel");
        NormalP3uiv = (.)func("glNormalP3uiv");
        ProgramUniform1iv = (.)func("glProgramUniform1iv");
        DrawElements = (.)func("glDrawElements");
        End = (.)func("glEnd");
        GetStringi = (.)func("glGetStringi");
        Vertex3dv = (.)func("glVertex3dv");
        ClearNamedBufferData = (.)func("glClearNamedBufferData");
        PointParameterfv = (.)func("glPointParameterfv");
        TextureParameterIiv = (.)func("glTextureParameterIiv");
        GetPolygonStipple = (.)func("glGetPolygonStipple");
        BindImageTextures = (.)func("glBindImageTextures");
        Fogiv = (.)func("glFogiv");
        BlendFunc = (.)func("glBlendFunc");
        Recti = (.)func("glRecti");
        Color3ubv = (.)func("glColor3ubv");
        TexCoord4s = (.)func("glTexCoord4s");
        CreateFramebuffers = (.)func("glCreateFramebuffers");
        Uniform3iv = (.)func("glUniform3iv");
        Rects = (.)func("glRects");
        GetnMapfv = (.)func("glGetnMapfv");
        RasterPos2dv = (.)func("glRasterPos2dv");
        TexCoord4f = (.)func("glTexCoord4f");
        TexCoord4d = (.)func("glTexCoord4d");
        GenVertexArrays = (.)func("glGenVertexArrays");
        ClearBufferSubData = (.)func("glClearBufferSubData");
        TexGeniv = (.)func("glTexGeniv");
        Rectfv = (.)func("glRectfv");
        BindSampler = (.)func("glBindSampler");
        TexCoord4i = (.)func("glTexCoord4i");
        GetCompressedTextureSubImage = (.)func("glGetCompressedTextureSubImage");
        ProvokingVertex = (.)func("glProvokingVertex");
        EnableVertexArrayAttrib = (.)func("glEnableVertexArrayAttrib");
        LoadTransposeMatrixd = (.)func("glLoadTransposeMatrixd");
        LoadTransposeMatrixf = (.)func("glLoadTransposeMatrixf");
        DeleteProgram = (.)func("glDeleteProgram");
        Vertex3fv = (.)func("glVertex3fv");
        GenFramebuffers = (.)func("glGenFramebuffers");
        Materialfv = (.)func("glMaterialfv");
        BindTextureUnit = (.)func("glBindTextureUnit");
        RasterPos4iv = (.)func("glRasterPos4iv");
        Uniform1dv = (.)func("glUniform1dv");
        InterleavedArrays = (.)func("glInterleavedArrays");
        GetIntegerv = (.)func("glGetIntegerv");
        Ortho = (.)func("glOrtho");
        GetProgramResourceiv = (.)func("glGetProgramResourceiv");
        PixelMapuiv = (.)func("glPixelMapuiv");
        Rectd = (.)func("glRectd");
        MatrixMode = (.)func("glMatrixMode");
        Rectf = (.)func("glRectf");
        VertexAttribP3uiv = (.)func("glVertexAttribP3uiv");
        GetTextureParameterIiv = (.)func("glGetTextureParameterIiv");
        ClientActiveTexture = (.)func("glClientActiveTexture");
        EnableClientState = (.)func("glEnableClientState");
        TexCoord4sv = (.)func("glTexCoord4sv");
        GetFragDataLocation = (.)func("glGetFragDataLocation");
        AreTexturesResident = (.)func("glAreTexturesResident");
        RasterPos4fv = (.)func("glRasterPos4fv");
        Fogfv = (.)func("glFogfv");
        GetnMapdv = (.)func("glGetnMapdv");
        ReleaseShaderCompiler = (.)func("glReleaseShaderCompiler");
        DrawTransformFeedbackInstanced = (.)func("glDrawTransformFeedbackInstanced");
        PushName = (.)func("glPushName");
        GetTexEnviv = (.)func("glGetTexEnviv");
        GetTextureLevelParameterfv = (.)func("glGetTextureLevelParameterfv");
        DeleteVertexArrays = (.)func("glDeleteVertexArrays");
        GetUniformSubroutineuiv = (.)func("glGetUniformSubroutineuiv");
        GetVertexAttribIuiv = (.)func("glGetVertexAttribIuiv");
        Hint = (.)func("glHint");
        Rectdv = (.)func("glRectdv");
        TexParameterfv = (.)func("glTexParameterfv");
        FogCoordfv = (.)func("glFogCoordfv");
        UniformBlockBinding = (.)func("glUniformBlockBinding");
        DeleteFramebuffers = (.)func("glDeleteFramebuffers");
        Uniform1fv = (.)func("glUniform1fv");
        GetLightiv = (.)func("glGetLightiv");
        CheckFramebufferStatus = (.)func("glCheckFramebufferStatus");
        SamplerParameterIiv = (.)func("glSamplerParameterIiv");
        GetShaderiv = (.)func("glGetShaderiv");
        LoadIdentity = (.)func("glLoadIdentity");
        GetActiveUniformName = (.)func("glGetActiveUniformName");
        BindFragDataLocation = (.)func("glBindFragDataLocation");
        DrawElementsInstanced = (.)func("glDrawElementsInstanced");
        Vertex3iv = (.)func("glVertex3iv");
        MultiTexCoord2f = (.)func("glMultiTexCoord2f");
        GetActiveUniform = (.)func("glGetActiveUniform");
        ResumeTransformFeedback = (.)func("glResumeTransformFeedback");
        EdgeFlagv = (.)func("glEdgeFlagv");
        MultiTexCoord2d = (.)func("glMultiTexCoord2d");
        MultiTexCoord2i = (.)func("glMultiTexCoord2i");
        ColorMask = (.)func("glColorMask");
        MultiDrawElementsIndirect = (.)func("glMultiDrawElementsIndirect");
        TexCoord4iv = (.)func("glTexCoord4iv");
        Materialiv = (.)func("glMaterialiv");
        VertexAttribP3ui = (.)func("glVertexAttribP3ui");
        VertexAttribI3iv = (.)func("glVertexAttribI3iv");
        Color4fv = (.)func("glColor4fv");
        MapGrid2d = (.)func("glMapGrid2d");
        TexEnviv = (.)func("glTexEnviv");
        MapGrid2f = (.)func("glMapGrid2f");
        MultiTexCoordP3ui = (.)func("glMultiTexCoordP3ui");
        UniformMatrix4x3dv = (.)func("glUniformMatrix4x3dv");
        BindFramebuffer = (.)func("glBindFramebuffer");
        GetCompressedTexImage = (.)func("glGetCompressedTexImage");
        MultiTexCoord1s = (.)func("glMultiTexCoord1s");
        DeleteQueries = (.)func("glDeleteQueries");
        GetObjectPtrLabel = (.)func("glGetObjectPtrLabel");
        Uniform2uiv = (.)func("glUniform2uiv");
        MultiTexCoord3sv = (.)func("glMultiTexCoord3sv");
        VertexAttrib1fv = (.)func("glVertexAttrib1fv");
        GetUniformiv = (.)func("glGetUniformiv");
        TexCoord1s = (.)func("glTexCoord1s");
        GetTexGenfv = (.)func("glGetTexGenfv");
        Bitmap = (.)func("glBitmap");
        IsShader = (.)func("glIsShader");
        BindVertexArray = (.)func("glBindVertexArray");
        MultiTexCoord1f = (.)func("glMultiTexCoord1f");
        BlendFunci = (.)func("glBlendFunci");
        MultiTexCoord1d = (.)func("glMultiTexCoord1d");
        BeginQuery = (.)func("glBeginQuery");
        GetFloati_v = (.)func("glGetFloati_v");
        MultiTexCoord1i = (.)func("glMultiTexCoord1i");
        BindTexture = (.)func("glBindTexture");
        RasterPos2iv = (.)func("glRasterPos2iv");
        Uniform3dv = (.)func("glUniform3dv");
        PolygonOffset = (.)func("glPolygonOffset");
        TexCoord1d = (.)func("glTexCoord1d");
        GetShaderInfoLog = (.)func("glGetShaderInfoLog");
        Rectiv = (.)func("glRectiv");
        TexCoord2dv = (.)func("glTexCoord2dv");
        VertexAttribI4usv = (.)func("glVertexAttribI4usv");
        IndexMask = (.)func("glIndexMask");
        IsEnabledi = (.)func("glIsEnabledi");
        ClearAccum = (.)func("glClearAccum");
        TexCoord1i = (.)func("glTexCoord1i");
        GetDebugMessageLog = (.)func("glGetDebugMessageLog");
        TexCoord1f = (.)func("glTexCoord1f");
        TexCoordP3uiv = (.)func("glTexCoordP3uiv");
        GetInternalformati64v = (.)func("glGetInternalformati64v");
        GetNamedBufferParameteriv = (.)func("glGetNamedBufferParameteriv");
        VertexAttrib1dv = (.)func("glVertexAttrib1dv");
        BindImageTexture = (.)func("glBindImageTexture");
        Color4dv = (.)func("glColor4dv");
        TexCoord2s = (.)func("glTexCoord2s");
        FramebufferTexture = (.)func("glFramebufferTexture");
        DepthFunc = (.)func("glDepthFunc");
        SecondaryColor3uiv = (.)func("glSecondaryColor3uiv");
        GetLightfv = (.)func("glGetLightfv");
        Indexiv = (.)func("glIndexiv");
        CompressedTextureSubImage3D = (.)func("glCompressedTextureSubImage3D");
        GetTexGeniv = (.)func("glGetTexGeniv");
        UniformMatrix4x3fv = (.)func("glUniformMatrix4x3fv");
        TexCoord2f = (.)func("glTexCoord2f");
        WaitSync = (.)func("glWaitSync");
        TexCoord2d = (.)func("glTexCoord2d");
        RasterPos2fv = (.)func("glRasterPos2fv");
        EdgeFlagPointer = (.)func("glEdgeFlagPointer");
        CheckNamedFramebufferStatus = (.)func("glCheckNamedFramebufferStatus");
        ProgramUniform3ui = (.)func("glProgramUniform3ui");
        TextureBuffer = (.)func("glTextureBuffer");
        TexCoord2i = (.)func("glTexCoord2i");
        VertexBindingDivisor = (.)func("glVertexBindingDivisor");
        VertexArrayAttribFormat = (.)func("glVertexArrayAttribFormat");
        TexCoord3s = (.)func("glTexCoord3s");
        VertexArrayAttribIFormat = (.)func("glVertexArrayAttribIFormat");
        Uniform3fv = (.)func("glUniform3fv");
        ProgramUniform1uiv = (.)func("glProgramUniform1uiv");
        GetnMapiv = (.)func("glGetnMapiv");
        MapGrid1d = (.)func("glMapGrid1d");
        TexCoord3f = (.)func("glTexCoord3f");
        TexEnvfv = (.)func("glTexEnvfv");
        MapGrid1f = (.)func("glMapGrid1f");
        VertexArrayVertexBuffers = (.)func("glVertexArrayVertexBuffers");
        TexCoord3d = (.)func("glTexCoord3d");
        TexCoord4fv = (.)func("glTexCoord4fv");
        GenTransformFeedbacks = (.)func("glGenTransformFeedbacks");
        MultiTexCoordP1uiv = (.)func("glMultiTexCoordP1uiv");
        UniformMatrix3dv = (.)func("glUniformMatrix3dv");
        TextureView = (.)func("glTextureView");
        TexCoord3i = (.)func("glTexCoord3i");
        StencilMask = (.)func("glStencilMask");
        CopyTexImage1D = (.)func("glCopyTexImage1D");
        VertexAttrib3fv = (.)func("glVertexAttrib3fv");
        Color4bv = (.)func("glColor4bv");
        GetUniformdv = (.)func("glGetUniformdv");
        BlendEquationSeparate = (.)func("glBlendEquationSeparate");
        GetVertexAttribPointerv = (.)func("glGetVertexAttribPointerv");
        TransformFeedbackBufferRange = (.)func("glTransformFeedbackBufferRange");
        ViewportIndexedf = (.)func("glViewportIndexedf");
        VertexAttribI1iv = (.)func("glVertexAttribI1iv");
        CompressedTextureSubImage1D = (.)func("glCompressedTextureSubImage1D");
        TexCoord2iv = (.)func("glTexCoord2iv");
        VertexAttribP1ui = (.)func("glVertexAttribP1ui");
        PauseTransformFeedback = (.)func("glPauseTransformFeedback");
        NamedFramebufferRenderbuffer = (.)func("glNamedFramebufferRenderbuffer");
        DisableVertexArrayAttrib = (.)func("glDisableVertexArrayAttrib");
        GetUniformuiv = (.)func("glGetUniformuiv");
        SecondaryColorP3uiv = (.)func("glSecondaryColorP3uiv");
        MultiTexCoord1sv = (.)func("glMultiTexCoord1sv");
        TexStorage1D = (.)func("glTexStorage1D");
        DrawArraysIndirect = (.)func("glDrawArraysIndirect");
        GetPointerv = (.)func("glGetPointerv");
        MultiTexCoordP1ui = (.)func("glMultiTexCoordP1ui");
        SecondaryColor3ubv = (.)func("glSecondaryColor3ubv");
        CopyTexImage2D = (.)func("glCopyTexImage2D");
        CreateVertexArrays = (.)func("glCreateVertexArrays");
        EndTransformFeedback = (.)func("glEndTransformFeedback");
        ProgramUniformMatrix4x3fv = (.)func("glProgramUniformMatrix4x3fv");
        Indexdv = (.)func("glIndexdv");
        GetBufferSubData = (.)func("glGetBufferSubData");
        CompressedTextureSubImage2D = (.)func("glCompressedTextureSubImage2D");
        ClearDepth = (.)func("glClearDepth");
        DeleteTextures = (.)func("glDeleteTextures");
        ActiveShaderProgram = (.)func("glActiveShaderProgram");
        UniformMatrix3fv = (.)func("glUniformMatrix3fv");
        MultiTexCoord4s = (.)func("glMultiTexCoord4s");
        Color3uiv = (.)func("glColor3uiv");
        NamedFramebufferDrawBuffers = (.)func("glNamedFramebufferDrawBuffers");
        TexStorage2D = (.)func("glTexStorage2D");
        GetUniformIndices = (.)func("glGetUniformIndices");
        MultiTexCoord4d = (.)func("glMultiTexCoord4d");
        GetnPixelMapusv = (.)func("glGetnPixelMapusv");
        GetUniformfv = (.)func("glGetUniformfv");
        VertexAttrib3dv = (.)func("glVertexAttrib3dv");
        TextureParameteriv = (.)func("glTextureParameteriv");
        MultiTexCoord4i = (.)func("glMultiTexCoord4i");
        IsTransformFeedback = (.)func("glIsTransformFeedback");
        MultiTexCoord4f = (.)func("glMultiTexCoord4f");
        DrawElementsBaseVertex = (.)func("glDrawElementsBaseVertex");
        VertexAttribL4dv = (.)func("glVertexAttribL4dv");
        GetSubroutineIndex = (.)func("glGetSubroutineIndex");
        MultiTexCoord3s = (.)func("glMultiTexCoord3s");
        GetnPixelMapfv = (.)func("glGetnPixelMapfv");
        DrawRangeElements = (.)func("glDrawRangeElements");
        VertexAttribL4d = (.)func("glVertexAttribL4d");
        DrawTransformFeedbackStreamInstanced = (.)func("glDrawTransformFeedbackStreamInstanced");
        TexStorage3D = (.)func("glTexStorage3D");
        ProgramUniform1ui = (.)func("glProgramUniform1ui");
        MultiTexCoord3d = (.)func("glMultiTexCoord3d");
        WindowPos3sv = (.)func("glWindowPos3sv");
        GenQueries = (.)func("glGenQueries");
        PopName = (.)func("glPopName");
        GetTexGendv = (.)func("glGetTexGendv");
        VertexP2uiv = (.)func("glVertexP2uiv");
        Flush = (.)func("glFlush");
        MultiTexCoord3f = (.)func("glMultiTexCoord3f");
        ProgramUniformMatrix4x3dv = (.)func("glProgramUniformMatrix4x3dv");
        Indexfv = (.)func("glIndexfv");
        IsList = (.)func("glIsList");
        GetActiveSubroutineUniformiv = (.)func("glGetActiveSubroutineUniformiv");
        UniformMatrix2x4fv = (.)func("glUniformMatrix2x4fv");
        MultiTexCoord3i = (.)func("glMultiTexCoord3i");
        TexCoord2fv = (.)func("glTexCoord2fv");
        MultiTexCoord2s = (.)func("glMultiTexCoord2s");
        GetQueryBufferObjectui64v = (.)func("glGetQueryBufferObjectui64v");
        GetString = (.)func("glGetString");
        GetTransformFeedbacki64_v = (.)func("glGetTransformFeedbacki64_v");
        UniformMatrix3x2fv = (.)func("glUniformMatrix3x2fv");
        MultiDrawElementsBaseVertex = (.)func("glMultiDrawElementsBaseVertex");
        VertexAttrib4dv = (.)func("glVertexAttrib4dv");
        FlushMappedNamedBufferRange = (.)func("glFlushMappedNamedBufferRange");
        InvalidateFramebuffer = (.)func("glInvalidateFramebuffer");
        RenderbufferStorage = (.)func("glRenderbufferStorage");
        TexCoordP4ui = (.)func("glTexCoordP4ui");
        PixelZoom = (.)func("glPixelZoom");
        GetSubroutineUniformLocation = (.)func("glGetSubroutineUniformLocation");
        GetMaterialfv = (.)func("glGetMaterialfv");
        TexGenf = (.)func("glTexGenf");
        TexGeni = (.)func("glTexGeni");
        MultiTexCoord2iv = (.)func("glMultiTexCoord2iv");
        GetActiveUniformBlockiv = (.)func("glGetActiveUniformBlockiv");
        Frustum = (.)func("glFrustum");
        ProgramUniformMatrix2fv = (.)func("glProgramUniformMatrix2fv");
        BlitNamedFramebuffer = (.)func("glBlitNamedFramebuffer");
        Normal3fv = (.)func("glNormal3fv");
        TexGend = (.)func("glTexGend");
        GetBooleani_v = (.)func("glGetBooleani_v");
        GetQueryiv = (.)func("glGetQueryiv");
        RasterPos3sv = (.)func("glRasterPos3sv");
        GetMapdv = (.)func("glGetMapdv");
        TextureParameterIuiv = (.)func("glTextureParameterIuiv");
        GetnColorTable = (.)func("glGetnColorTable");
        GetInteger64v = (.)func("glGetInteger64v");
        GetPixelMapuiv = (.)func("glGetPixelMapuiv");
        TexParameterf = (.)func("glTexParameterf");
        WindowPos2fv = (.)func("glWindowPos2fv");
        VertexAttrib4Nbv = (.)func("glVertexAttrib4Nbv");
        GetSynciv = (.)func("glGetSynciv");
        GetnHistogram = (.)func("glGetnHistogram");
        IsBuffer = (.)func("glIsBuffer");
        GetActiveAtomicCounterBufferiv = (.)func("glGetActiveAtomicCounterBufferiv");
        VertexAttrib4bv = (.)func("glVertexAttrib4bv");
        PrioritizeTextures = (.)func("glPrioritizeTextures");
        VertexAttribL2dv = (.)func("glVertexAttribL2dv");
        BufferStorage = (.)func("glBufferStorage");
        MinSampleShading = (.)func("glMinSampleShading");
        ProgramUniformMatrix2dv = (.)func("glProgramUniformMatrix2dv");
        Vertex3sv = (.)func("glVertex3sv");
        ValidateProgram = (.)func("glValidateProgram");
        GetMapfv = (.)func("glGetMapfv");
        GenBuffers = (.)func("glGenBuffers");
        NamedFramebufferDrawBuffer = (.)func("glNamedFramebufferDrawBuffer");
        LoadMatrixd = (.)func("glLoadMatrixd");
        LoadMatrixf = (.)func("glLoadMatrixf");
        EvalMesh1 = (.)func("glEvalMesh1");
        WindowPos2dv = (.)func("glWindowPos2dv");
        EvalMesh2 = (.)func("glEvalMesh2");
        FramebufferParameteri = (.)func("glFramebufferParameteri");
        ViewportArrayv = (.)func("glViewportArrayv");
        NamedFramebufferTextureLayer = (.)func("glNamedFramebufferTextureLayer");
        Normal3iv = (.)func("glNormal3iv");
        ProgramUniformMatrix2x3fv = (.)func("glProgramUniformMatrix2x3fv");
        DepthRange = (.)func("glDepthRange");
        TexCoordP2ui = (.)func("glTexCoordP2ui");
        GetnPixelMapuiv = (.)func("glGetnPixelMapuiv");
        Normal3bv = (.)func("glNormal3bv");
        IndexPointer = (.)func("glIndexPointer");
        CreateShaderProgramv = (.)func("glCreateShaderProgramv");
        ClearTexSubImage = (.)func("glClearTexSubImage");
        EndList = (.)func("glEndList");
        ProgramUniformMatrix4fv = (.)func("glProgramUniformMatrix4fv");
        FramebufferTextureLayer = (.)func("glFramebufferTextureLayer");
        GetTransformFeedbackVarying = (.)func("glGetTransformFeedbackVarying");
        GetVertexAttribLdv = (.)func("glGetVertexAttribLdv");
        VertexP4uiv = (.)func("glVertexP4uiv");
        VertexAttrib4Nusv = (.)func("glVertexAttrib4Nusv");
        ProgramParameteri = (.)func("glProgramParameteri");
        VertexAttribLFormat = (.)func("glVertexAttribLFormat");
        Uniform1ui = (.)func("glUniform1ui");
        ColorPointer = (.)func("glColorPointer");
        ColorP3ui = (.)func("glColorP3ui");
        MapBuffer = (.)func("glMapBuffer");
        MultiTexCoordP3uiv = (.)func("glMultiTexCoordP3uiv");
        ClearBufferuiv = (.)func("glClearBufferuiv");
        GetSamplerParameterIiv = (.)func("glGetSamplerParameterIiv");
        GenerateTextureMipmap = (.)func("glGenerateTextureMipmap");
        ProgramUniformMatrix4dv = (.)func("glProgramUniformMatrix4dv");
        _TexParameteri = (.)func("glTexParameteri");
        GetMapiv = (.)func("glGetMapiv");
        NamedFramebufferReadBuffer = (.)func("glNamedFramebufferReadBuffer");
        ClipControl = (.)func("glClipControl");
        ProgramUniformMatrix2x3dv = (.)func("glProgramUniformMatrix2x3dv");
        Normal3dv = (.)func("glNormal3dv");
        BindBufferBase = (.)func("glBindBufferBase");
        WindowPos2iv = (.)func("glWindowPos2iv");
        GetDoublev = (.)func("glGetDoublev");
        VertexArrayAttribLFormat = (.)func("glVertexArrayAttribLFormat");
        PolygonOffsetClamp = (.)func("glPolygonOffsetClamp");
        MultiTexCoord4sv = (.)func("glMultiTexCoord4sv");
        VertexAttrib4Niv = (.)func("glVertexAttrib4Niv");
        VertexArrayVertexBuffer = (.)func("glVertexArrayVertexBuffer");
        GetMaterialiv = (.)func("glGetMaterialiv");
        ListBase = (.)func("glListBase");
        Color4iv = (.)func("glColor4iv");
        CreateProgram = (.)func("glCreateProgram");
        GetBufferPointerv = (.)func("glGetBufferPointerv");
        FeedbackBuffer = (.)func("glFeedbackBuffer");
        VertexAttribI3ui = (.)func("glVertexAttribI3ui");
        VertexArrayBindingDivisor = (.)func("glVertexArrayBindingDivisor");
        GetCompressedTextureImage = (.)func("glGetCompressedTextureImage");
        GetError = (.)func("glGetError");
        ProgramUniform3fv = (.)func("glProgramUniform3fv");
        PatchParameteri = (.)func("glPatchParameteri");
        CullFace = (.)func("glCullFace");
        GetGraphicsResetStatus = (.)func("glGetGraphicsResetStatus");
        MultMatrixd = (.)func("glMultMatrixd");
        MultiTexCoord4dv = (.)func("glMultiTexCoord4dv");
        BindBufferRange = (.)func("glBindBufferRange");
        MultMatrixf = (.)func("glMultMatrixf");
        DepthRangef = (.)func("glDepthRangef");
        Disable = (.)func("glDisable");
        LogicOp = (.)func("glLogicOp");
        Uniform3ui = (.)func("glUniform3ui");
        CopyTextureSubImage3D = (.)func("glCopyTextureSubImage3D");
        Scissor = (.)func("glScissor");
        ProgramUniform1d = (.)func("glProgramUniform1d");
        UnmapNamedBuffer = (.)func("glUnmapNamedBuffer");
        ProgramUniform1f = (.)func("glProgramUniform1f");
        ProgramUniform1i = (.)func("glProgramUniform1i");
        Lightf = (.)func("glLightf");
        Lighti = (.)func("glLighti");
        TexCoord2sv = (.)func("glTexCoord2sv");
        GetTextureImage = (.)func("glGetTextureImage");
        Color4ui = (.)func("glColor4ui");
        Uniform4f = (.)func("glUniform4f");
        Color4ub = (.)func("glColor4ub");
        CopyTextureSubImage2D = (.)func("glCopyTextureSubImage2D");
        MultiTexCoord4fv = (.)func("glMultiTexCoord4fv");
        Uniform4i = (.)func("glUniform4i");
        GetBufferParameteri64v = (.)func("glGetBufferParameteri64v");
        GetFragDataIndex = (.)func("glGetFragDataIndex");
        EvalCoord2dv = (.)func("glEvalCoord2dv");
        ColorP3uiv = (.)func("glColorP3uiv");
        ClientWaitSync = (.)func("glClientWaitSync");
        DebugMessageInsert = (.)func("glDebugMessageInsert");
        Color4us = (.)func("glColor4us");
        ProgramUniform3dv = (.)func("glProgramUniform3dv");
        PopClientAttrib = (.)func("glPopClientAttrib");
        ViewportIndexedfv = (.)func("glViewportIndexedfv");
        MultiDrawArraysIndirectCount = (.)func("glMultiDrawArraysIndirectCount");
        BlendEquationSeparatei = (.)func("glBlendEquationSeparatei");
        GetNamedBufferSubData = (.)func("glGetNamedBufferSubData");
        DeleteRenderbuffers = (.)func("glDeleteRenderbuffers");
        VertexAttribI1ui = (.)func("glVertexAttribI1ui");
        CopyTextureSubImage1D = (.)func("glCopyTextureSubImage1D");
        VertexAttribI1uiv = (.)func("glVertexAttribI1uiv");
        PushClientAttrib = (.)func("glPushClientAttrib");
        Color3usv = (.)func("glColor3usv");
        GetTexEnvfv = (.)func("glGetTexEnvfv");
        VertexAttrib4Nuiv = (.)func("glVertexAttrib4Nuiv");
        GetPixelMapusv = (.)func("glGetPixelMapusv");
        GetProgramiv = (.)func("glGetProgramiv");
        PixelMapusv = (.)func("glPixelMapusv");
        GetRenderbufferParameteriv = (.)func("glGetRenderbufferParameteriv");
        ProgramUniform1fv = (.)func("glProgramUniform1fv");
        Indexsv = (.)func("glIndexsv");
        ClipPlane = (.)func("glClipPlane");
        ProgramUniform4uiv = (.)func("glProgramUniform4uiv");
        MultiTexCoord2dv = (.)func("glMultiTexCoord2dv");
        EvalCoord2fv = (.)func("glEvalCoord2fv");
        GenTextures = (.)func("glGenTextures");
        Color4sv = (.)func("glColor4sv");
        GetShaderPrecisionFormat = (.)func("glGetShaderPrecisionFormat");
        Map1d = (.)func("glMap1d");
        Map1f = (.)func("glMap1f");
        MultiTexCoord4iv = (.)func("glMultiTexCoord4iv");
        AttachShader = (.)func("glAttachShader");
        LineStipple = (.)func("glLineStipple");
        PopDebugGroup = (.)func("glPopDebugGroup");
        GetProgramStageiv = (.)func("glGetProgramStageiv");
        PatchParameterfv = (.)func("glPatchParameterfv");
        MemoryBarrierByRegion = (.)func("glMemoryBarrierByRegion");
        TextureSubImage3D = (.)func("glTextureSubImage3D");
        ClearIndex = (.)func("glClearIndex");
        VertexAttribI3uiv = (.)func("glVertexAttribI3uiv");
        Indexub = (.)func("glIndexub");
        ClearTexImage = (.)func("glClearTexImage");
        EdgeFlag = (.)func("glEdgeFlag");
        Materialf = (.)func("glMaterialf");
        Map2d = (.)func("glMap2d");
        VertexAttrib1sv = (.)func("glVertexAttrib1sv");
        VertexP4ui = (.)func("glVertexP4ui");
        Map2f = (.)func("glMap2f");
        Materiali = (.)func("glMateriali");
        GetProgramResourceLocation = (.)func("glGetProgramResourceLocation");
        TexCoordPointer = (.)func("glTexCoordPointer");
        GetnUniformiv = (.)func("glGetnUniformiv");
        GetQueryObjectui64v = (.)func("glGetQueryObjectui64v");
        NamedRenderbufferStorage = (.)func("glNamedRenderbufferStorage");
        ProgramUniform1dv = (.)func("glProgramUniform1dv");
        TextureSubImage2D = (.)func("glTextureSubImage2D");
        MultiTexCoord2fv = (.)func("glMultiTexCoord2fv");
        DebugMessageControl = (.)func("glDebugMessageControl");
        GetFramebufferParameteriv = (.)func("glGetFramebufferParameteriv");
        DeleteProgramPipelines = (.)func("glDeleteProgramPipelines");
        GetActiveUniformBlockName = (.)func("glGetActiveUniformBlockName");
        SpecializeShader = (.)func("glSpecializeShader");
        CallList = (.)func("glCallList");
        GetClipPlane = (.)func("glGetClipPlane");
        DrawRangeElementsBaseVertex = (.)func("glDrawRangeElementsBaseVertex");
        ProgramUniform3iv = (.)func("glProgramUniform3iv");
        IsProgram = (.)func("glIsProgram");
        BeginTransformFeedback = (.)func("glBeginTransformFeedback");
        ObjectPtrLabel = (.)func("glObjectPtrLabel");
        GetQueryBufferObjectuiv = (.)func("glGetQueryBufferObjectuiv");
        TexBufferRange = (.)func("glTexBufferRange");
        InvalidateTexSubImage = (.)func("glInvalidateTexSubImage");
        TextureSubImage1D = (.)func("glTextureSubImage1D");
        GetProgramPipelineInfoLog = (.)func("glGetProgramPipelineInfoLog");
        Lightiv = (.)func("glLightiv");
        GetTexParameterIiv = (.)func("glGetTexParameterIiv");
        DrawArraysInstancedBaseInstance = (.)func("glDrawArraysInstancedBaseInstance");
        VertexAttrib4Nub = (.)func("glVertexAttrib4Nub");
        SecondaryColor3iv = (.)func("glSecondaryColor3iv");
        IsQuery = (.)func("glIsQuery");
        IsVertexArray = (.)func("glIsVertexArray");
        TexEnvf = (.)func("glTexEnvf");
        TexEnvi = (.)func("glTexEnvi");
        SelectBuffer = (.)func("glSelectBuffer");
        GetnUniformfv = (.)func("glGetnUniformfv");
        GetNamedFramebufferAttachmentParameteriv = (.)func("glGetNamedFramebufferAttachmentParameteriv");
        GetTextureSubImage = (.)func("glGetTextureSubImage");
        Fogi = (.)func("glFogi");
        GetnMinmax = (.)func("glGetnMinmax");
        ClearBufferfv = (.)func("glClearBufferfv");
        FenceSync = (.)func("glFenceSync");
        GetSamplerParameterfv = (.)func("glGetSamplerParameterfv");
        BindAttribLocation = (.)func("glBindAttribLocation");
        Normal3b = (.)func("glNormal3b");
        Lightfv = (.)func("glLightfv");
        VertexAttrib4Nsv = (.)func("glVertexAttrib4Nsv");
        Normal3d = (.)func("glNormal3d");
        Normal3f = (.)func("glNormal3f");
        Vertex4dv = (.)func("glVertex4dv");
        InvalidateNamedFramebufferSubData = (.)func("glInvalidateNamedFramebufferSubData");
        ClearBufferfi = (.)func("glClearBufferfi");
        Fogf = (.)func("glFogf");
        LightModeli = (.)func("glLightModeli");
        GetTexLevelParameterfv = (.)func("glGetTexLevelParameterfv");
        GetTransformFeedbacki_v = (.)func("glGetTransformFeedbacki_v");
        TexCoord1iv = (.)func("glTexCoord1iv");
        GetVertexArrayiv = (.)func("glGetVertexArrayiv");
        ClearBufferiv = (.)func("glClearBufferiv");
        ScissorArrayv = (.)func("glScissorArrayv");
        CopyNamedBufferSubData = (.)func("glCopyNamedBufferSubData");
        VertexAttrib4Nubv = (.)func("glVertexAttrib4Nubv");
        Normal3i = (.)func("glNormal3i");
        DeleteTransformFeedbacks = (.)func("glDeleteTransformFeedbacks");
        VertexAttrib4ubv = (.)func("glVertexAttrib4ubv");
        MultiDrawElementsIndirectCount = (.)func("glMultiDrawElementsIndirectCount");
        GetProgramResourceIndex = (.)func("glGetProgramResourceIndex");
        PolygonMode_ = (.)func("glPolygonMode");
        Normal3s = (.)func("glNormal3s");
        LightModelf = (.)func("glLightModelf");
        CompressedTexSubImage2D = (.)func("glCompressedTexSubImage2D");
        SampleMaski = (.)func("glSampleMaski");
        VertexAttribP4uiv = (.)func("glVertexAttribP4uiv");
        Vertex4fv = (.)func("glVertex4fv");
        LightModeliv = (.)func("glLightModeliv");
        GetTextureParameterIuiv = (.)func("glGetTextureParameterIuiv");
        GetUniformLocation = (.)func("glGetUniformLocation");
        GetTextureParameterfv = (.)func("glGetTextureParameterfv");
        InvalidateSubFramebuffer = (.)func("glInvalidateSubFramebuffer");
        VertexP3ui = (.)func("glVertexP3ui");
        VertexAttrib4sv = (.)func("glVertexAttrib4sv");
        GetTexParameteriv = (.)func("glGetTexParameteriv");
        BindVertexBuffers = (.)func("glBindVertexBuffers");
        VertexAttribI4bv = (.)func("glVertexAttribI4bv");
        GetSamplerParameteriv = (.)func("glGetSamplerParameteriv");
        CompressedTexSubImage1D = (.)func("glCompressedTexSubImage1D");
        TexCoord3sv = (.)func("glTexCoord3sv");
        LightModelfv = (.)func("glLightModelfv");
        BindProgramPipeline = (.)func("glBindProgramPipeline");
        VertexAttribIFormat = (.)func("glVertexAttribIFormat");
        Uniform2d = (.)func("glUniform2d");
        Uniform2f = (.)func("glUniform2f");
        DrawElementsInstancedBaseVertex = (.)func("glDrawElementsInstancedBaseVertex");
        GetMultisamplefv = (.)func("glGetMultisamplefv");
        GetInternalformativ = (.)func("glGetInternalformativ");
        Uniform2i = (.)func("glUniform2i");
        BufferSubData = (.)func("glBufferSubData");
        CreateQueries = (.)func("glCreateQueries");
        Indexf = (.)func("glIndexf");
        RasterPos3fv = (.)func("glRasterPos3fv");
        ProgramUniform4i = (.)func("glProgramUniform4i");
        Indexi = (.)func("glIndexi");
        CreateTransformFeedbacks = (.)func("glCreateTransformFeedbacks");
        ProgramUniform4d = (.)func("glProgramUniform4d");
        ProgramUniform4ui = (.)func("glProgramUniform4ui");
        ProgramUniform4f = (.)func("glProgramUniform4f");
        Indexd = (.)func("glIndexd");
        IsEnabled = (.)func("glIsEnabled");
        Normal3sv = (.)func("glNormal3sv");
        EnableVertexAttribArray = (.)func("glEnableVertexAttribArray");
        VertexAttribP2uiv = (.)func("glVertexAttribP2uiv");
        Uniform3d = (.)func("glUniform3d");
        Vertex2dv = (.)func("glVertex2dv");
        Uniform3f = (.)func("glUniform3f");
        Uniform2fv = (.)func("glUniform2fv");
        Uniform3i = (.)func("glUniform3i");
        Indexs = (.)func("glIndexs");
        SecondaryColor3fv = (.)func("glSecondaryColor3fv");
        ClearDepthf = (.)func("glClearDepthf");
        ClearBufferData = (.)func("glClearBufferData");
        DisableVertexAttribArray = (.)func("glDisableVertexAttribArray");
        Uniform4d = (.)func("glUniform4d");
        Clear = (.)func("glClear");
        TextureBarrier = (.)func("glTextureBarrier");
        CompressedTexSubImage3D = (.)func("glCompressedTexSubImage3D");
        GetQueryIndexediv = (.)func("glGetQueryIndexediv");
        GetActiveSubroutineUniformName = (.)func("glGetActiveSubroutineUniformName");
        CopyBufferSubData = (.)func("glCopyBufferSubData");
        ReadBuffer = (.)func("glReadBuffer");
        GetFramebufferAttachmentParameteriv = (.)func("glGetFramebufferAttachmentParameteriv");
        Uniform2iv = (.)func("glUniform2iv");
        Vertex4iv = (.)func("glVertex4iv");
        ProgramUniform2uiv = (.)func("glProgramUniform2uiv");
        BindFragDataLocationIndexed = (.)func("glBindFragDataLocationIndexed");
        DispatchComputeIndirect = (.)func("glDispatchComputeIndirect");
        RasterPos3dv = (.)func("glRasterPos3dv");
        ProgramUniform2f = (.)func("glProgramUniform2f");
        GetQueryBufferObjecti64v = (.)func("glGetQueryBufferObjecti64v");
        LoadName = (.)func("glLoadName");
        MultiTexCoordP4ui = (.)func("glMultiTexCoordP4ui");
        GetTextureParameteriv = (.)func("glGetTextureParameteriv");
        GetnUniformdv = (.)func("glGetnUniformdv");
        ProgramUniform2i = (.)func("glProgramUniform2i");
        GetTexParameterfv = (.)func("glGetTexParameterfv");
        DrawArraysInstanced = (.)func("glDrawArraysInstanced");
        InvalidateTexImage = (.)func("glInvalidateTexImage");
        ProgramUniform2d = (.)func("glProgramUniform2d");
        GetBooleanv = (.)func("glGetBooleanv");
        DrawBuffer = (.)func("glDrawBuffer");
        GetQueryObjectuiv = (.)func("glGetQueryObjectuiv");
        GetTexLevelParameteriv = (.)func("glGetTexLevelParameteriv");
        BindTextures = (.)func("glBindTextures");
        EndQuery = (.)func("glEndQuery");
        Uniform1d = (.)func("glUniform1d");
        Vertex2fv = (.)func("glVertex2fv");
        TextureParameteri = (.)func("glTextureParameteri");
        Uniform1f = (.)func("glUniform1f");
        Disablei = (.)func("glDisablei");
        BlitFramebuffer = (.)func("glBlitFramebuffer");
        TextureParameterf = (.)func("glTextureParameterf");
        Uniform1i = (.)func("glUniform1i");
        ProgramUniform3f = (.)func("glProgramUniform3f");
        UniformSubroutinesuiv = (.)func("glUniformSubroutinesuiv");
        ProgramUniform3i = (.)func("glProgramUniform3i");
        BindBuffersBase = (.)func("glBindBuffersBase");
        GenRenderbuffers = (.)func("glGenRenderbuffers");
        ProgramUniform3d = (.)func("glProgramUniform3d");
        CompileShader = (.)func("glCompileShader");
        Color3dv = (.)func("glColor3dv");
        ScissorIndexedv = (.)func("glScissorIndexedv");
        GetnConvolutionFilter = (.)func("glGetnConvolutionFilter");
        MultiTexCoordP2uiv = (.)func("glMultiTexCoordP2uiv");
        IsRenderbuffer = (.)func("glIsRenderbuffer");
        VertexAttribI4i = (.)func("glVertexAttribI4i");
        TextureStorage3DMultisample = (.)func("glTextureStorage3DMultisample");
        ProgramUniform2ui = (.)func("glProgramUniform2ui");
        TextureStorage2DMultisample = (.)func("glTextureStorage2DMultisample");
        MapNamedBuffer = (.)func("glMapNamedBuffer");
        Color4ubv = (.)func("glColor4ubv");
        GetProgramResourceName = (.)func("glGetProgramResourceName");
        PushAttrib = (.)func("glPushAttrib");
        Uniform4fv = (.)func("glUniform4fv");
        GetObjectLabel = (.)func("glGetObjectLabel");
        Viewport = (.)func("glViewport");
        TexCoord3fv = (.)func("glTexCoord3fv");
        SecondaryColor3bv = (.)func("glSecondaryColor3bv");
        UniformMatrix4dv = (.)func("glUniformMatrix4dv");
        BindBuffersRange = (.)func("glBindBuffersRange");
        Color3bv = (.)func("glColor3bv");
        ShaderStorageBlockBinding = (.)func("glShaderStorageBlockBinding");
        BeginConditionalRender = (.)func("glBeginConditionalRender");
        Vertex2iv = (.)func("glVertex2iv");
        BlendEquation = (.)func("glBlendEquation");
        Uniform1uiv = (.)func("glUniform1uiv");
        GenerateMipmap = (.)func("glGenerateMipmap");
        MemoryBarrier = (.)func("glMemoryBarrier");
        CreateBuffers = (.)func("glCreateBuffers");
        VertexAttribDivisor = (.)func("glVertexAttribDivisor");
        BeginQueryIndexed = (.)func("glBeginQueryIndexed");
        TexStorage2DMultisample = (.)func("glTexStorage2DMultisample");
        Uniform4iv = (.)func("glUniform4iv");
        GetVertexArrayIndexediv = (.)func("glGetVertexArrayIndexediv");
        GetnPolygonStipple = (.)func("glGetnPolygonStipple");
        VertexAttribP4ui = (.)func("glVertexAttribP4ui");
        VertexAttribI4iv = (.)func("glVertexAttribI4iv");
        MultiTexCoordP2ui = (.)func("glMultiTexCoordP2ui");
        UniformMatrix4x2dv = (.)func("glUniformMatrix4x2dv");
        ClearColor = (.)func("glClearColor");
        SamplerParameterIuiv = (.)func("glSamplerParameterIuiv");
        MultiTexCoord2sv = (.)func("glMultiTexCoord2sv");
        StencilFunc = (.)func("glStencilFunc");
        VertexAttribI2i = (.)func("glVertexAttribI2i");
        TexCoordP2uiv = (.)func("glTexCoordP2uiv");
        VertexAttrib2fv = (.)func("glVertexAttrib2fv");
        DeleteSync = (.)func("glDeleteSync");
        ClearNamedFramebufferuiv = (.)func("glClearNamedFramebufferuiv");
        DepthMask = (.)func("glDepthMask");
        RasterPos3iv = (.)func("glRasterPos3iv");
        Uniform2dv = (.)func("glUniform2dv");
        TexCoord3dv = (.)func("glTexCoord3dv");
        SecondaryColor3dv = (.)func("glSecondaryColor3dv");
        UseProgram = (.)func("glUseProgram");
        GetProgramInterfaceiv = (.)func("glGetProgramInterfaceiv");
        UniformMatrix4fv = (.)func("glUniformMatrix4fv");
        ColorP4ui = (.)func("glColorP4ui");
        VertexAttrib4uiv = (.)func("glVertexAttrib4uiv");
        VertexAttribI3i = (.)func("glVertexAttribI3i");
        VertexAttrib2dv = (.)func("glVertexAttrib2dv");
        Rotated = (.)func("glRotated");
        Rotatef = (.)func("glRotatef");
        Indexubv = (.)func("glIndexubv");
        TexSubImage1D = (.)func("glTexSubImage1D");
        VertexAttribL3dv = (.)func("glVertexAttribL3dv");
        CreateSamplers = (.)func("glCreateSamplers");
        UniformMatrix4x2fv = (.)func("glUniformMatrix4x2fv");
        PushMatrix = (.)func("glPushMatrix");
        DeleteSamplers = (.)func("glDeleteSamplers");
        MultiDrawArrays = (.)func("glMultiDrawArrays");
        TexCoordP4uiv = (.)func("glTexCoordP4uiv");
        ProgramUniformMatrix3x4dv = (.)func("glProgramUniformMatrix3x4dv");
        GetAttribLocation = (.)func("glGetAttribLocation");
        WindowPos2sv = (.)func("glWindowPos2sv");
        CreateShader = (.)func("glCreateShader");
        SampleCoverage = (.)func("glSampleCoverage");
        UniformMatrix2x3fv = (.)func("glUniformMatrix2x3fv");
        ProgramUniformMatrix4x2dv = (.)func("glProgramUniformMatrix4x2dv");
        TexCoord1fv = (.)func("glTexCoord1fv");
        MultiDrawArraysIndirect = (.)func("glMultiDrawArraysIndirect");
        VertexAttribLPointer = (.)func("glVertexAttribLPointer");
        TexSubImage2D = (.)func("glTexSubImage2D");
        UniformMatrix2dv = (.)func("glUniformMatrix2dv");
        DeleteShader = (.)func("glDeleteShader");
        Uniform3uiv = (.)func("glUniform3uiv");
        VertexAttrib4iv = (.)func("glVertexAttrib4iv");
        VertexAttribI1i = (.)func("glVertexAttribI1i");
        VertexAttrib4fv = (.)func("glVertexAttrib4fv");
        GetNamedBufferPointerv = (.)func("glGetNamedBufferPointerv");
        WindowPos2i = (.)func("glWindowPos2i");
        ProgramBinary = (.)func("glProgramBinary");
        DrawArrays = (.)func("glDrawArrays");
        WindowPos2f = (.)func("glWindowPos2f");
        VertexAttribI2iv = (.)func("glVertexAttribI2iv");
        VertexAttribP2ui = (.)func("glVertexAttribP2ui");
        TexCoord3iv = (.)func("glTexCoord3iv");
        WindowPos2d = (.)func("glWindowPos2d");
        ScissorIndexed = (.)func("glScissorIndexed");
        GetNamedFramebufferParameteriv = (.)func("glGetNamedFramebufferParameteriv");
        TexSubImage3D = (.)func("glTexSubImage3D");
        CreateTextures = (.)func("glCreateTextures");
        SamplerParameteri = (.)func("glSamplerParameteri");
        WindowPos3s = (.)func("glWindowPos3s");
        SamplerParameterf = (.)func("glSamplerParameterf");
        GetActiveAttrib = (.)func("glGetActiveAttrib");
        WindowPos3i = (.)func("glWindowPos3i");
        UniformMatrix2x3dv = (.)func("glUniformMatrix2x3dv");
        WindowPos3f = (.)func("glWindowPos3f");
        RenderMode = (.)func("glRenderMode");
        WindowPos3d = (.)func("glWindowPos3d");
        DrawTransformFeedbackStream = (.)func("glDrawTransformFeedbackStream");
        Uniform4dv = (.)func("glUniform4dv");
        UniformMatrix2fv = (.)func("glUniformMatrix2fv");
        DrawElementsIndirect = (.)func("glDrawElementsIndirect");
        TexCoord1dv = (.)func("glTexCoord1dv");
        QueryCounter = (.)func("glQueryCounter");
        EndQueryIndexed = (.)func("glEndQueryIndexed");
        GetVertexAttribIiv = (.)func("glGetVertexAttribIiv");
        PointSize = (.)func("glPointSize");
        WindowPos2s = (.)func("glWindowPos2s");
        ShaderSource = (.)func("glShaderSource");
        NewList = (.)func("glNewList");
        VertexAttribI4sv = (.)func("glVertexAttribI4sv");
        ClearNamedFramebufferfv = (.)func("glClearNamedFramebufferfv");
        GetNamedRenderbufferParameteriv = (.)func("glGetNamedRenderbufferParameteriv");
        TextureStorage2D = (.)func("glTextureStorage2D");
        GetTexImage = (.)func("glGetTexImage");
        ProgramUniformMatrix2x4dv = (.)func("glProgramUniformMatrix2x4dv");
        VertexAttribL1dv = (.)func("glVertexAttribL1dv");
        BlendFuncSeparatei = (.)func("glBlendFuncSeparatei");
        FramebufferTexture1D = (.)func("glFramebufferTexture1D");
        CreateProgramPipelines = (.)func("glCreateProgramPipelines");
        PassThrough = (.)func("glPassThrough");
        WindowPos3iv = (.)func("glWindowPos3iv");
        TexImage2DMultisample = (.)func("glTexImage2DMultisample");
        PixelMapfv = (.)func("glPixelMapfv");
        TexImage3DMultisample = (.)func("glTexImage3DMultisample");
        VertexAttribL2d = (.)func("glVertexAttribL2d");
        Vertex4sv = (.)func("glVertex4sv");
        ProgramUniformMatrix3x2dv = (.)func("glProgramUniformMatrix3x2dv");
        VertexAttrib4f = (.)func("glVertexAttrib4f");
        VertexAttrib4d = (.)func("glVertexAttrib4d");
        TextureStorage1D = (.)func("glTextureStorage1D");
        GetVertexAttribdv = (.)func("glGetVertexAttribdv");
        UniformMatrix2x4dv = (.)func("glUniformMatrix2x4dv");
        VertexAttrib4s = (.)func("glVertexAttrib4s");
        VertexAttribI4ui = (.)func("glVertexAttribI4ui");
        VertexAttribL3d = (.)func("glVertexAttribL3d");
        FlushMappedBufferRange = (.)func("glFlushMappedBufferRange");
        UniformMatrix3x2dv = (.)func("glUniformMatrix3x2dv");
        StencilOp = (.)func("glStencilOp");
        VertexP3uiv = (.)func("glVertexP3uiv");
        BindBuffer = (.)func("glBindBuffer");
        TexCoordP3ui = (.)func("glTexCoordP3ui");
        ArrayElement = (.)func("glArrayElement");
        TransformFeedbackVaryings = (.)func("glTransformFeedbackVaryings");
        IsTexture = (.)func("glIsTexture");
        VertexAttrib4usv = (.)func("glVertexAttrib4usv");
        MultiTexCoord1iv = (.)func("glMultiTexCoord1iv");
        FramebufferTexture3D = (.)func("glFramebufferTexture3D");
        MultiTexCoordP4uiv = (.)func("glMultiTexCoordP4uiv");
        BlendColor = (.)func("glBlendColor");
        ProgramUniformMatrix3fv = (.)func("glProgramUniformMatrix3fv");
        Color4uiv = (.)func("glColor4uiv");
        Scalef = (.)func("glScalef");
        NormalPointer = (.)func("glNormalPointer");
        ProgramUniformMatrix3x4fv = (.)func("glProgramUniformMatrix3x4fv");
        TextureParameterfv = (.)func("glTextureParameterfv");
        Scaled = (.)func("glScaled");
        VertexArrayElementBuffer = (.)func("glVertexArrayElementBuffer");
        RasterPos4sv = (.)func("glRasterPos4sv");
        GetUniformBlockIndex = (.)func("glGetUniformBlockIndex");
        InvalidateBufferData = (.)func("glInvalidateBufferData");
        TextureStorage3D = (.)func("glTextureStorage3D");
        ProgramUniformMatrix4x2fv = (.)func("glProgramUniformMatrix4x2fv");
        TransformFeedbackBufferBase = (.)func("glTransformFeedbackBufferBase");
        GetNamedBufferParameteri64v = (.)func("glGetNamedBufferParameteri64v");
        MapNamedBufferRange = (.)func("glMapNamedBufferRange");
        VertexArrayAttribBinding = (.)func("glVertexArrayAttribBinding");
        WindowPos3fv = (.)func("glWindowPos3fv");
        ClearNamedFramebufferfi = (.)func("glClearNamedFramebufferfi");
        NamedRenderbufferStorageMultisample = (.)func("glNamedRenderbufferStorageMultisample");
        FramebufferTexture2D = (.)func("glFramebufferTexture2D");
        Begin = (.)func("glBegin");
        GetVertexAttribfv = (.)func("glGetVertexAttribfv");
        Enable = (.)func("glEnable");
        TexParameterIuiv = (.)func("glTexParameterIuiv");
        VertexAttribL1d = (.)func("glVertexAttribL1d");
        UniformMatrix3x4fv = (.)func("glUniformMatrix3x4fv");
        CompressedTexImage3D = (.)func("glCompressedTexImage3D");
        UnmapBuffer = (.)func("glUnmapBuffer");
        TextureBufferRange = (.)func("glTextureBufferRange");
        PointParameteri = (.)func("glPointParameteri");
        PointParameterf = (.)func("glPointParameterf");
        DepthRangeArrayv = (.)func("glDepthRangeArrayv");
        FogCoordf = (.)func("glFogCoordf");
        GetFloatv = (.)func("glGetFloatv");
        ReadPixels = (.)func("glReadPixels");
        FogCoordd = (.)func("glFogCoordd");
        GetnTexImage = (.)func("glGetnTexImage");
        ProgramUniformMatrix3dv = (.)func("glProgramUniformMatrix3dv");
        Vertex2sv = (.)func("glVertex2sv");
        ProgramUniform4dv = (.)func("glProgramUniform4dv");
        UniformMatrix3x4dv = (.)func("glUniformMatrix3x4dv");
        Color3iv = (.)func("glColor3iv");
        InitNames = (.)func("glInitNames");
        TexCoord4dv = (.)func("glTexCoord4dv");
        GetnCompressedTexImage = (.)func("glGetnCompressedTexImage");
        VertexAttribI2ui = (.)func("glVertexAttribI2ui");
        PrimitiveRestartIndex = (.)func("glPrimitiveRestartIndex");
        DrawElementsInstancedBaseInstance = (.)func("glDrawElementsInstancedBaseInstance");
        Translatef = (.)func("glTranslatef");
        PolygonStipple = (.)func("glPolygonStipple");
        PopMatrix = (.)func("glPopMatrix");
        GetActiveSubroutineName = (.)func("glGetActiveSubroutineName");
        Translated = (.)func("glTranslated");
        MapBufferRange = (.)func("glMapBufferRange");
        IsFramebuffer = (.)func("glIsFramebuffer");
        Color3s = (.)func("glColor3s");
        Color3f = (.)func("glColor3f");
        FrontFace = (.)func("glFrontFace");
        TexCoordP1ui = (.)func("glTexCoordP1ui");
        Color3fv = (.)func("glColor3fv");
        Color3i = (.)func("glColor3i");
        CompressedTexImage1D = (.)func("glCompressedTexImage1D");
        DispatchCompute = (.)func("glDispatchCompute");
        GetShaderSource = (.)func("glGetShaderSource");
        ProgramUniformMatrix2x4fv = (.)func("glProgramUniformMatrix2x4fv");
        ProgramUniformMatrix3x2fv = (.)func("glProgramUniformMatrix3x2fv");
        Color3b = (.)func("glColor3b");
        AlphaFunc = (.)func("glAlphaFunc");
        Color3d = (.)func("glColor3d");
        GetVertexAttribiv = (.)func("glGetVertexAttribiv");
        StencilOpSeparate = (.)func("glStencilOpSeparate");
        RasterPos2sv = (.)func("glRasterPos2sv");
        ClearNamedBufferSubData = (.)func("glClearNamedBufferSubData");
        GenLists = (.)func("glGenLists");
        ClearNamedFramebufferiv = (.)func("glClearNamedFramebufferiv");
        Color4s = (.)func("glColor4s");
        GetProgramBinary = (.)func("glGetProgramBinary");
        Color4f = (.)func("glColor4f");
        Rectsv = (.)func("glRectsv");
        Color4i = (.)func("glColor4i");
        CompressedTexImage2D = (.)func("glCompressedTexImage2D");
        GetQueryObjectiv = (.)func("glGetQueryObjectiv");
        DepthRangeIndexed = (.)func("glDepthRangeIndexed");
        BindVertexBuffer = (.)func("glBindVertexBuffer");
        Color4b = (.)func("glColor4b");
        CopyPixels = (.)func("glCopyPixels");
        ColorP4uiv = (.)func("glColorP4uiv");
        GetTexParameterIuiv = (.)func("glGetTexParameterIuiv");
        VertexAttribBinding = (.)func("glVertexAttribBinding");
        Color4d = (.)func("glColor4d");
        BindTransformFeedback = (.)func("glBindTransformFeedback");
        DeleteBuffers = (.)func("glDeleteBuffers");
        SamplerParameterfv = (.)func("glSamplerParameterfv");
        TexCoordP1uiv = (.)func("glTexCoordP1uiv");
        SecondaryColorP3ui = (.)func("glSecondaryColorP3ui");
        GenProgramPipelines = (.)func("glGenProgramPipelines");
        Color3ui = (.)func("glColor3ui");
        ProgramUniform2dv = (.)func("glProgramUniform2dv");
        TexCoord1sv = (.)func("glTexCoord1sv");
        VertexAttribP1uiv = (.)func("glVertexAttribP1uiv");
        CopyTexSubImage3D = (.)func("glCopyTexSubImage3D");
        NormalP3ui = (.)func("glNormalP3ui");
        GetnSeparableFilter = (.)func("glGetnSeparableFilter");
        TexParameterIiv = (.)func("glTexParameterIiv");
        Color3ub = (.)func("glColor3ub");
        RenderbufferStorageMultisample = (.)func("glRenderbufferStorageMultisample");
        ObjectLabel = (.)func("glObjectLabel");
        RasterPos4s = (.)func("glRasterPos4s");
        IsSampler = (.)func("glIsSampler");
        Color4usv = (.)func("glColor4usv");
        GetQueryObjecti64v = (.)func("glGetQueryObjecti64v");
        RasterPos4i = (.)func("glRasterPos4i");
        SamplerParameteriv = (.)func("glSamplerParameteriv");
        Color3us = (.)func("glColor3us");
        RasterPos4f = (.)func("glRasterPos4f");
        Vertex2d = (.)func("glVertex2d");
        DrawElementsInstancedBaseVertexBaseInstance = (.)func("glDrawElementsInstancedBaseVertexBaseInstance");
        RasterPos4d = (.)func("glRasterPos4d");
        Vertex2f = (.)func("glVertex2f");
        DrawPixels = (.)func("glDrawPixels");
        GetTransformFeedbackiv = (.)func("glGetTransformFeedbackiv");
        Vertex2i = (.)func("glVertex2i");
        SecondaryColor3d = (.)func("glSecondaryColor3d");
        VertexAttribI4ubv = (.)func("glVertexAttribI4ubv");
        ProgramUniform4iv = (.)func("glProgramUniform4iv");
        PixelStoref = (.)func("glPixelStoref");
        SecondaryColor3f = (.)func("glSecondaryColor3f");
        SecondaryColor3b = (.)func("glSecondaryColor3b");
        Vertex2s = (.)func("glVertex2s");
        StencilFuncSeparate = (.)func("glStencilFuncSeparate");
        PixelStorei = (.)func("glPixelStorei");
        RasterPos3s = (.)func("glRasterPos3s");
        GetAttachedShaders = (.)func("glGetAttachedShaders");
        GetInteger64i_v = (.)func("glGetInteger64i_v");
        SecondaryColor3i = (.)func("glSecondaryColor3i");
        GetProgramResourceLocationIndex = (.)func("glGetProgramResourceLocationIndex");
        ClearStencil = (.)func("glClearStencil");
        SecondaryColor3s = (.)func("glSecondaryColor3s");
        GetTextureLevelParameteriv = (.)func("glGetTextureLevelParameteriv");
        RasterPos3i = (.)func("glRasterPos3i");
        GetActiveUniformsiv = (.)func("glGetActiveUniformsiv");
        NamedFramebufferTexture = (.)func("glNamedFramebufferTexture");
        NamedBufferSubData = (.)func("glNamedBufferSubData");
        Vertex3d = (.)func("glVertex3d");
        RasterPos3f = (.)func("glRasterPos3f");
        TexParameteriv = (.)func("glTexParameteriv");
        Vertex3f = (.)func("glVertex3f");
        RasterPos3d = (.)func("glRasterPos3d");
        Vertex3i = (.)func("glVertex3i");
        ShaderBinary = (.)func("glShaderBinary");
        ProgramUniform4fv = (.)func("glProgramUniform4fv");
        TexImage2D = (.)func("glTexImage2D");
        SecondaryColor3sv = (.)func("glSecondaryColor3sv");
        CopyTexSubImage1D = (.)func("glCopyTexSubImage1D");
        Vertex3s = (.)func("glVertex3s");
        MultiTexCoord3dv = (.)func("glMultiTexCoord3dv");
        BindSamplers = (.)func("glBindSamplers");
        RasterPos2s = (.)func("glRasterPos2s");
        TexStorage3DMultisample = (.)func("glTexStorage3DMultisample");
        Color3sv = (.)func("glColor3sv");
        GetPixelMapfv = (.)func("glGetPixelMapfv");
        RasterPos2i = (.)func("glRasterPos2i");
        RasterPos2f = (.)func("glRasterPos2f");
        Vertex4d = (.)func("glVertex4d");
        RasterPos2d = (.)func("glRasterPos2d");
        Vertex4f = (.)func("glVertex4f");
        Vertex4i = (.)func("glVertex4i");
        ColorMaterial = (.)func("glColorMaterial");
        MultiDrawElements = (.)func("glMultiDrawElements");
        ValidateProgramPipeline = (.)func("glValidateProgramPipeline");
        TexImage3D = (.)func("glTexImage3D");
        GetProgramPipelineiv = (.)func("glGetProgramPipelineiv");
        CopyTexSubImage2D = (.)func("glCopyTexSubImage2D");
        Vertex4s = (.)func("glVertex4s");
        CreateRenderbuffers = (.)func("glCreateRenderbuffers");
        SecondaryColor3ub = (.)func("glSecondaryColor3ub");
        Enablei = (.)func("glEnablei");
        Uniform2ui = (.)func("glUniform2ui");
        GetSamplerParameterIuiv = (.)func("glGetSamplerParameterIuiv");
        SecondaryColor3ui = (.)func("glSecondaryColor3ui");
        CallLists = (.)func("glCallLists");
        ReadnPixels = (.)func("glReadnPixels");
        BlendEquationi = (.)func("glBlendEquationi");
        SecondaryColor3us = (.)func("glSecondaryColor3us");
        IsProgramPipeline = (.)func("glIsProgramPipeline");
        ColorMaski = (.)func("glColorMaski");
        VertexAttrib1d = (.)func("glVertexAttrib1d");
        NamedBufferStorage = (.)func("glNamedBufferStorage");
        MultiTexCoord3fv = (.)func("glMultiTexCoord3fv");
        BlendFuncSeparate = (.)func("glBlendFuncSeparate");
        EvalCoord1dv = (.)func("glEvalCoord1dv");
        VertexAttrib1f = (.)func("glVertexAttrib1f");
        BufferData = (.)func("glBufferData");
        VertexAttrib1s = (.)func("glVertexAttrib1s");
        EndConditionalRender = (.)func("glEndConditionalRender");
        DetachShader = (.)func("glDetachShader");
        TexBuffer = (.)func("glTexBuffer");
        GetnUniformuiv = (.)func("glGetnUniformuiv");
        GetIntegeri_v = (.)func("glGetIntegeri_v");
        DeleteLists = (.)func("glDeleteLists");
        ProgramUniform2iv = (.)func("glProgramUniform2iv");
        TexImage1D = (.)func("glTexImage1D");
        GenSamplers = (.)func("glGenSamplers");
        GetBufferParameteriv = (.)func("glGetBufferParameteriv");
        EvalPoint2 = (.)func("glEvalPoint2");
        DrawBuffers = (.)func("glDrawBuffers");
        EvalPoint1 = (.)func("glEvalPoint1");
        WindowPos3dv = (.)func("glWindowPos3dv");
        InvalidateBufferSubData = (.)func("glInvalidateBufferSubData");
        SecondaryColor3usv = (.)func("glSecondaryColor3usv");
        GetProgramInfoLog = (.)func("glGetProgramInfoLog");
        EvalCoord1d = (.)func("glEvalCoord1d");
        DebugMessageCallback = (.)func("glDebugMessageCallback");
        EvalCoord1f = (.)func("glEvalCoord1f");
        SecondaryColorPointer = (.)func("glSecondaryColorPointer");
        VertexAttrib3f = (.)func("glVertexAttrib3f");
        GetVertexArrayIndexed64iv = (.)func("glGetVertexArrayIndexed64iv");
        StencilMaskSeparate = (.)func("glStencilMaskSeparate");
        PixelTransferf = (.)func("glPixelTransferf");
        VertexAttrib3d = (.)func("glVertexAttrib3d");
        ProgramUniform2fv = (.)func("glProgramUniform2fv");
        PixelTransferi = (.)func("glPixelTransferi");
        MultiTexCoord1dv = (.)func("glMultiTexCoord1dv");
        FogCoordPointer = (.)func("glFogCoordPointer");
        VertexAttribI2uiv = (.)func("glVertexAttribI2uiv");
        EvalCoord1fv = (.)func("glEvalCoord1fv");
        GetDoublei_v = (.)func("glGetDoublei_v");
        VertexAttrib3s = (.)func("glVertexAttrib3s");
        MultTransposeMatrixf = (.)func("glMultTransposeMatrixf");
        EvalCoord2d = (.)func("glEvalCoord2d");
        MultiTexCoord3iv = (.)func("glMultiTexCoord3iv");
        EvalCoord2f = (.)func("glEvalCoord2f");
        VertexAttrib2f = (.)func("glVertexAttrib2f");
        VertexAttribIPointer = (.)func("glVertexAttribIPointer");
        DrawTransformFeedback = (.)func("glDrawTransformFeedback");
        Uniform4ui = (.)func("glUniform4ui");
        VertexPointer = (.)func("glVertexPointer");
        VertexAttrib2d = (.)func("glVertexAttrib2d");
        CopyImageSubData = (.)func("glCopyImageSubData");
        MultTransposeMatrixd = (.)func("glMultTransposeMatrixd");
        IsSync = (.)func("glIsSync");
        Finish = (.)func("glFinish");
        VertexAttrib2sv = (.)func("glVertexAttrib2sv");
        VertexAttrib2s = (.)func("glVertexAttrib2s");
        FramebufferRenderbuffer = (.)func("glFramebufferRenderbuffer");
        MultiTexCoord1fv = (.)func("glMultiTexCoord1fv");
        ActiveTexture = (.)func("glActiveTexture");
        VertexAttribFormat = (.)func("glVertexAttribFormat");
        DisableClientState = (.)func("glDisableClientState");
        LinkProgram = (.)func("glLinkProgram");
    }
}
