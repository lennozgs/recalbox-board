// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = _texCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = _texCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP58;
vec3 _TMP57;
vec3 _TMP56;
vec3 _TMP55;
vec4 _TMP54;
float _TMP53;
float _TMP52;
float _TMP51;
vec3 _TMP66;
vec3 _TMP50;
vec3 _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec4 _TMP40;
vec4 _TMP39;
vec4 _TMP67;
bvec4 _TMP38;
bvec4 _TMP37;
bvec4 _TMP36;
bvec4 _TMP35;
bvec4 _TMP34;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0081;
vec4 _r0125;
vec4 _r0135;
vec4 _r0145;
vec4 _r0155;
vec4 _r0165;
vec4 _r0175;
vec4 _TMP186;
vec4 _a0189;
vec4 _TMP192;
vec4 _a0195;
vec4 _TMP198;
vec4 _a0201;
vec4 _TMP204;
vec4 _a0207;
vec4 _TMP210;
vec4 _a0213;
vec4 _TMP216;
vec4 _a0219;
vec4 _TMP222;
vec4 _a0225;
vec4 _TMP228;
vec4 _a0231;
vec4 _TMP234;
vec4 _a0237;
vec4 _TMP240;
vec4 _a0243;
vec4 _TMP246;
vec4 _a0249;
vec4 _TMP252;
vec4 _a0255;
vec4 _TMP258;
vec4 _a0261;
vec4 _TMP264;
vec4 _a0267;
vec4 _TMP270;
vec4 _a0273;
vec4 _TMP276;
vec4 _a0279;
vec4 _TMP282;
vec4 _a0285;
vec4 _TMP288;
vec4 _a0291;
vec4 _x0295;
vec4 _TMP296;
vec4 _x0305;
vec4 _TMP306;
vec4 _x0315;
vec4 _TMP316;
vec4 _TMP324;
vec4 _a0327;
vec4 _TMP328;
vec4 _a0331;
vec4 _TMP332;
vec4 _a0335;
vec4 _TMP336;
vec4 _a0339;
vec4 _TMP340;
vec4 _a0343;
vec4 _TMP346;
vec4 _a0349;
vec4 _TMP350;
vec4 _a0353;
vec4 _TMP354;
vec4 _a0357;
vec4 _TMP358;
vec4 _a0361;
vec4 _TMP362;
vec4 _a0365;
vec4 _TMP366;
vec4 _a0369;
vec4 _TMP370;
vec4 _a0373;
vec4 _TMP374;
vec4 _a0377;
vec4 _TMP378;
vec4 _a0381;
vec4 _TMP382;
vec4 _a0385;
vec4 _TMP386;
vec4 _a0389;
vec3 _b0393;
vec3 _b0397;
vec3 _TMP398;
vec3 _a0399;
vec3 _b0407;
vec3 _b0411;
vec3 _TMP412;
vec3 _a0413;
vec4 _a0419;
vec4 _a0421;
vec4 _a0423;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec2 _fp;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec3 _res;
    vec3 _aa;
    vec3 _bb;
    vec3 _cc;
    vec3 _dd;
    vec3 _t;
    vec3 _m;
    vec3 _s1;
    vec3 _s0;
    float _blend;
    vec3 _pix;
    vec4 _maximo;
    _x0081 = TEX0.xy*TextureSize;
    _fp = fract(_x0081);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0125.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0125.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0125.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0125.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0135.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0135.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0135.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0135.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0145.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0145.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0145.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0145.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0155.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0155.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0155.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0155.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0165.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0165.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0165.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0165.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0175.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0175.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0175.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0175.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _a0189 = _r0145 - _r0125;
    _TMP186 = abs(_a0189);
    _TMP21 = bvec4(_TMP186.x < 2.00000000E+00, _TMP186.y < 2.00000000E+00, _TMP186.z < 2.00000000E+00, _TMP186.w < 2.00000000E+00);
    _a0195 = _r0145 - _r0125.yzwx;
    _TMP192 = abs(_a0195);
    _TMP22 = bvec4(_TMP192.x < 2.00000000E+00, _TMP192.y < 2.00000000E+00, _TMP192.z < 2.00000000E+00, _TMP192.w < 2.00000000E+00);
    _a0201 = _r0145 - _r0135.yzwx;
    _TMP198 = abs(_a0201);
    _TMP23 = bvec4(_TMP198.x < 2.00000000E+00, _TMP198.y < 2.00000000E+00, _TMP198.z < 2.00000000E+00, _TMP198.w < 2.00000000E+00);
    _a0207 = _r0125.wxyz - _r0175.yzwx;
    _TMP204 = abs(_a0207);
    _TMP24 = bvec4(_TMP204.x < 2.00000000E+00, _TMP204.y < 2.00000000E+00, _TMP204.z < 2.00000000E+00, _TMP204.w < 2.00000000E+00);
    _a0213 = _r0125.wxyz - _r0135;
    _TMP210 = abs(_a0213);
    _TMP25 = bvec4(_TMP210.x < 2.00000000E+00, _TMP210.y < 2.00000000E+00, _TMP210.z < 2.00000000E+00, _TMP210.w < 2.00000000E+00);
    _a0219 = _r0125.zwxy - _r0175;
    _TMP216 = abs(_a0219);
    _TMP26 = bvec4(_TMP216.x < 2.00000000E+00, _TMP216.y < 2.00000000E+00, _TMP216.z < 2.00000000E+00, _TMP216.w < 2.00000000E+00);
    _a0225 = _r0125.zwxy - _r0135.zwxy;
    _TMP222 = abs(_a0225);
    _TMP27 = bvec4(_TMP222.x < 2.00000000E+00, _TMP222.y < 2.00000000E+00, _TMP222.z < 2.00000000E+00, _TMP222.w < 2.00000000E+00);
    _a0231 = _r0125.wxyz - _r0125;
    _TMP228 = abs(_a0231);
    _TMP28 = bvec4(_TMP228.x < 1.50000000E+01, _TMP228.y < 1.50000000E+01, _TMP228.z < 1.50000000E+01, _TMP228.w < 1.50000000E+01);
    _a0237 = _r0125.wxyz - _r0135;
    _TMP234 = abs(_a0237);
    _TMP29 = bvec4(_TMP234.x < 1.50000000E+01, _TMP234.y < 1.50000000E+01, _TMP234.z < 1.50000000E+01, _TMP234.w < 1.50000000E+01);
    _a0243 = _r0125.zwxy - _r0125.yzwx;
    _TMP240 = abs(_a0243);
    _TMP30 = bvec4(_TMP240.x < 1.50000000E+01, _TMP240.y < 1.50000000E+01, _TMP240.z < 1.50000000E+01, _TMP240.w < 1.50000000E+01);
    _a0249 = _r0125.zwxy - _r0135.zwxy;
    _TMP246 = abs(_a0249);
    _TMP31 = bvec4(_TMP246.x < 1.50000000E+01, _TMP246.y < 1.50000000E+01, _TMP246.z < 1.50000000E+01, _TMP246.w < 1.50000000E+01);
    _a0255 = _r0145 - _r0135.wxyz;
    _TMP252 = abs(_a0255);
    _TMP32 = bvec4(_TMP252.x < 1.50000000E+01, _TMP252.y < 1.50000000E+01, _TMP252.z < 1.50000000E+01, _TMP252.w < 1.50000000E+01);
    _a0261 = _r0125.wxyz - _r0175.yzwx;
    _TMP258 = abs(_a0261);
    _TMP33 = bvec4(_TMP258.x < 1.50000000E+01, _TMP258.y < 1.50000000E+01, _TMP258.z < 1.50000000E+01, _TMP258.w < 1.50000000E+01);
    _a0267 = _r0125.wxyz - _r0155;
    _TMP264 = abs(_a0267);
    _TMP34 = bvec4(_TMP264.x < 1.50000000E+01, _TMP264.y < 1.50000000E+01, _TMP264.z < 1.50000000E+01, _TMP264.w < 1.50000000E+01);
    _a0273 = _r0125.zwxy - _r0175;
    _TMP270 = abs(_a0273);
    _TMP35 = bvec4(_TMP270.x < 1.50000000E+01, _TMP270.y < 1.50000000E+01, _TMP270.z < 1.50000000E+01, _TMP270.w < 1.50000000E+01);
    _a0279 = _r0125.zwxy - _r0165;
    _TMP276 = abs(_a0279);
    _TMP36 = bvec4(_TMP276.x < 1.50000000E+01, _TMP276.y < 1.50000000E+01, _TMP276.z < 1.50000000E+01, _TMP276.w < 1.50000000E+01);
    _a0285 = _r0145 - _r0135.zwxy;
    _TMP282 = abs(_a0285);
    _TMP37 = bvec4(_TMP282.x < 1.50000000E+01, _TMP282.y < 1.50000000E+01, _TMP282.z < 1.50000000E+01, _TMP282.w < 1.50000000E+01);
    _a0291 = _r0145 - _r0135;
    _TMP288 = abs(_a0291);
    _TMP38 = bvec4(_TMP288.x < 1.50000000E+01, _TMP288.y < 1.50000000E+01, _TMP288.z < 1.50000000E+01, _TMP288.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_r0145.x != _r0125.w && _r0145.x != _r0125.z && (_TMP21.x || _TMP22.x || !_TMP23.x) && (_TMP24.x || _TMP25.x || _TMP26.x || _TMP27.x) && (!_TMP28.x && !_TMP29.x || !_TMP30.x && !_TMP31.x || _TMP32.x && (!_TMP33.x && !_TMP34.x || !_TMP35.x && !_TMP36.x) || _TMP37.x || _TMP38.x), _r0145.y != _r0125.x && _r0145.y != _r0125.w && (_TMP21.y || _TMP22.y || !_TMP23.y) && (_TMP24.y || _TMP25.y || _TMP26.y || _TMP27.y) && (!_TMP28.y && !_TMP29.y || !_TMP30.y && !_TMP31.y || _TMP32.y && (!_TMP33.y && !_TMP34.y || !_TMP35.y && !_TMP36.y) || _TMP37.y || _TMP38.y), _r0145.z != _r0125.y && _r0145.z != _r0125.x && (_TMP21.z || _TMP22.z || !_TMP23.z) && (_TMP24.z || _TMP25.z || _TMP26.z || _TMP27.z) && (!_TMP28.z && !_TMP29.z || !_TMP30.z && !_TMP31.z || _TMP32.z && (!_TMP33.z && !_TMP34.z || !_TMP35.z && !_TMP36.z) || _TMP37.z || _TMP38.z), _r0145.w != _r0125.z && _r0145.w != _r0125.y && (_TMP21.w || _TMP22.w || !_TMP23.w) && (_TMP24.w || _TMP25.w || _TMP26.w || _TMP27.w) && (!_TMP28.w && !_TMP29.w || !_TMP30.w && !_TMP31.w || _TMP32.w && (!_TMP33.w && !_TMP34.w || !_TMP35.w && !_TMP36.w) || _TMP37.w || _TMP38.w));
    _interp_restriction_lv2_left = bvec4(_r0145.x != _r0135.z && _r0125.y != _r0135.z, _r0145.y != _r0135.w && _r0125.z != _r0135.w, _r0145.z != _r0135.x && _r0125.w != _r0135.x, _r0145.w != _r0135.y && _r0125.x != _r0135.y);
    _interp_restriction_lv2_up = bvec4(_r0145.x != _r0135.x && _r0125.x != _r0135.x, _r0145.y != _r0135.y && _r0125.y != _r0135.y, _r0145.z != _r0135.z && _r0125.z != _r0135.z, _r0145.w != _r0135.w && _r0125.w != _r0135.w);
    _x0295 = _fx - vec4( 1.00000000E+00, 0.00000000E+00, -1.00000000E+00, 0.00000000E+00);
    _TMP67 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0295);
    _TMP296 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP67);
    _fx45 = _TMP296*_TMP296*(3.00000000E+00 - 2.00000000E+00*_TMP296);
    _x0305 = _fx_left - vec4( 5.00000000E-01, 5.00000000E-01, -1.00000000E+00, -5.00000000E-01);
    _TMP67 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0305);
    _TMP306 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP67);
    _fx30 = _TMP306*_TMP306*(3.00000000E+00 - 2.00000000E+00*_TMP306);
    _x0315 = _fx_up - vec4( 1.50000000E+00, -5.00000000E-01, -1.50000000E+00, 0.00000000E+00);
    _TMP67 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0315);
    _TMP316 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP67);
    _fx60 = _TMP316*_TMP316*(3.00000000E+00 - 2.00000000E+00*_TMP316);
    _a0327 = _r0145 - _r0135;
    _TMP324 = abs(_a0327);
    _a0331 = _r0145 - _r0135.zwxy;
    _TMP328 = abs(_a0331);
    _a0335 = _r0135.wxyz - _r0175;
    _TMP332 = abs(_a0335);
    _a0339 = _r0135.wxyz - _r0175.yzwx;
    _TMP336 = abs(_a0339);
    _a0343 = _r0125.zwxy - _r0125.wxyz;
    _TMP340 = abs(_a0343);
    _TMP39 = _TMP324 + _TMP328 + _TMP332 + _TMP336 + 4.00000000E+00*_TMP340;
    _a0349 = _r0125.zwxy - _r0125.yzwx;
    _TMP346 = abs(_a0349);
    _a0353 = _r0125.zwxy - _r0165;
    _TMP350 = abs(_a0353);
    _a0357 = _r0125.wxyz - _r0155;
    _TMP354 = abs(_a0357);
    _a0361 = _r0125.wxyz - _r0125;
    _TMP358 = abs(_a0361);
    _a0365 = _r0145 - _r0135.wxyz;
    _TMP362 = abs(_a0365);
    _TMP40 = _TMP346 + _TMP350 + _TMP354 + _TMP358 + 4.00000000E+00*_TMP362;
    _edr = bvec4((_TMP39 + 3.50000000E+00).x < _TMP40.x && _interp_restriction_lv1.x, (_TMP39 + 3.50000000E+00).y < _TMP40.y && _interp_restriction_lv1.y, (_TMP39 + 3.50000000E+00).z < _TMP40.z && _interp_restriction_lv1.z, (_TMP39 + 3.50000000E+00).w < _TMP40.w && _interp_restriction_lv1.w);
    _a0369 = _r0125.wxyz - _r0135.zwxy;
    _TMP366 = abs(_a0369);
    _a0373 = _r0125.zwxy - _r0135;
    _TMP370 = abs(_a0373);
    _edr_left = bvec4((2.00000000E+00*_TMP366).x <= _TMP370.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP366).y <= _TMP370.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP366).z <= _TMP370.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP366).w <= _TMP370.w && _interp_restriction_lv2_left.w);
    _a0377 = _r0125.wxyz - _r0135.zwxy;
    _TMP374 = abs(_a0377);
    _a0381 = _r0125.zwxy - _r0135;
    _TMP378 = abs(_a0381);
    _edr_up = bvec4(_TMP374.x >= (2.00000000E+00*_TMP378).x && _interp_restriction_lv2_up.x, _TMP374.y >= (2.00000000E+00*_TMP378).y && _interp_restriction_lv2_up.y, _TMP374.z >= (2.00000000E+00*_TMP378).z && _interp_restriction_lv2_up.z, _TMP374.w >= (2.00000000E+00*_TMP378).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0385 = _r0145 - _r0125.wxyz;
    _TMP382 = abs(_a0385);
    _a0389 = _r0145 - _r0125.zwxy;
    _TMP386 = abs(_a0389);
    _px = bvec4(_TMP382.x <= _TMP386.x, _TMP382.y <= _TMP386.y, _TMP382.z <= _TMP386.z, _TMP382.w <= _TMP386.w);
    _aa = _TMP4.xyz - _TMP1.xyz;
    _bb = _TMP7.xyz - _TMP4.xyz;
    _cc = _TMP10.xyz - _TMP7.xyz;
    _dd = _TMP13.xyz - _TMP10.xyz;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_TMP7.x < 5.00000000E-01 ? (2.00000000E+00*_TMP7.xyz).x : (2.00000000E+00*(1.00000000E+00 - _TMP7.xyz)).x, _TMP7.y < 5.00000000E-01 ? (2.00000000E+00*_TMP7.xyz).y : (2.00000000E+00*(1.00000000E+00 - _TMP7.xyz)).y, _TMP7.z < 5.00000000E-01 ? (2.00000000E+00*_TMP7.xyz).z : (2.00000000E+00*(1.00000000E+00 - _TMP7.xyz)).z);
    _TMP47 = abs(_bb);
    _b0393 = 2.00000000E+00*_TMP47;
    _m = min(_m, _b0393);
    _TMP48 = abs(_cc);
    _b0397 = 2.00000000E+00*_TMP48;
    _m = min(_m, _b0397);
    _a0399 = -_m;
    _TMP66 = min(_m, _t);
    _TMP398 = max(_a0399, _TMP66);
    _s1 = (2.00000000E+00*_fp.y - 1.00000000E+00)*_TMP398 + _TMP7.xyz;
    _aa = _TMP6.xyz - _TMP16.xyz;
    _bb = _s1 - _TMP6.xyz;
    _cc = _TMP8.xyz - _s1;
    _dd = _TMP19.xyz - _TMP8.xyz;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_s1.x < 5.00000000E-01 ? (2.00000000E+00*_s1).x : (2.00000000E+00*(1.00000000E+00 - _s1)).x, _s1.y < 5.00000000E-01 ? (2.00000000E+00*_s1).y : (2.00000000E+00*(1.00000000E+00 - _s1)).y, _s1.z < 5.00000000E-01 ? (2.00000000E+00*_s1).z : (2.00000000E+00*(1.00000000E+00 - _s1)).z);
    _TMP49 = abs(_bb);
    _b0407 = 2.00000000E+00*_TMP49;
    _m = min(_m, _b0407);
    _TMP50 = abs(_cc);
    _b0411 = 2.00000000E+00*_TMP50;
    _m = min(_m, _b0411);
    _a0413 = -_m;
    _TMP66 = min(_m, _t);
    _TMP412 = max(_a0413, _TMP66);
    _s0 = (2.00000000E+00*_fp.x - 1.00000000E+00)*_TMP412 + _s1;
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _blend = 0.00000000E+00;
    _pix = _s0;
    _a0419 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w));
    _TMP51 = dot(_a0419, _fx45);
    _a0421 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w));
    _TMP52 = dot(_a0421, _fx30);
    _a0423 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w));
    _TMP53 = dot(_a0423, _fx60);
    _TMP54 = max(vec4(_TMP52, _TMP52, _TMP52, _TMP52), vec4(_TMP53, _TMP53, _TMP53, _TMP53));
    _maximo = max(_TMP54, vec4(_TMP51, _TMP51, _TMP51, _TMP51));
    if (_nc.x) { 
        if (_px.x) { 
            _TMP55 = _TMP8.xyz;
        } else {
            _TMP55 = _TMP10.xyz;
        } 
        _pix = _TMP55;
        _blend = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP56 = _TMP4.xyz;
            } else {
                _TMP56 = _TMP8.xyz;
            } 
            _pix = _TMP56;
            _blend = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP57 = _TMP6.xyz;
                } else {
                    _TMP57 = _TMP4.xyz;
                } 
                _pix = _TMP57;
                _blend = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP58 = _TMP10.xyz;
                    } else {
                        _TMP58 = _TMP6.xyz;
                    } 
                    _pix = _TMP58;
                    _blend = _maximo.w;
                } 
            } 
        } 
    } 
    _res = _s0 + _blend*(_pix - _s0);
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
