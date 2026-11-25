.class Lcom/wuyouwin/renderer/effects/FXAAEffect$1;
.super Lcom/wuyouwin/renderer/material/ScreenMaterial;
.source "FXAAEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyouwin/renderer/effects/FXAAEffect;->createMaterial()Lcom/wuyouwin/renderer/material/ScreenMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyouwin/renderer/effects/FXAAEffect;


# direct methods
.method constructor <init>(Lcom/wuyouwin/renderer/effects/FXAAEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wuyouwin/renderer/effects/FXAAEffect;

    .line 8
    iput-object p1, p0, Lcom/wuyouwin/renderer/effects/FXAAEffect$1;->this$0:Lcom/wuyouwin/renderer/effects/FXAAEffect;

    invoke-direct {p0}, Lcom/wuyouwin/renderer/material/ScreenMaterial;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .locals 3

    .line 11
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "precision highp float;"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#define FXAA_MIN_REDUCE (1.0 / 128.0)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "#define FXAA_MUL_REDUCE (1.0 / 8.0)"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "#define MAX_SPAN 8.0"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "uniform sampler2D screenTexture;"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "uniform vec2 resolution;"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "const vec3 luma = vec3(0.299, 0.587, 0.114);"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "layout(location = 0) out vec4 outFragColor;"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "void main() {"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "vec2 invResolution = 1.0 / resolution;"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "vec3 rgbNW = texture(screenTexture, (gl_FragCoord.xy + vec2(-1.0, -1.0)) * invResolution).rgb;"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "vec3 rgbNE = texture(screenTexture, (gl_FragCoord.xy + vec2( 1.0, -1.0)) * invResolution).rgb;"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "vec3 rgbSW = texture(screenTexture, (gl_FragCoord.xy + vec2(-1.0,  1.0)) * invResolution).rgb;"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "vec3 rgbSE = texture(screenTexture, (gl_FragCoord.xy + vec2( 1.0,  1.0)) * invResolution).rgb;"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "vec3 rgbM = texture(screenTexture,  gl_FragCoord.xy * invResolution).rgb;"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "float lumaNW = dot(rgbNW, luma);"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "float lumaNE = dot(rgbNE, luma);"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "float lumaSW = dot(rgbSW, luma);"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "float lumaSE = dot(rgbSE, luma);"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "float lumaM  = dot(rgbM,  luma);"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "float lumaMin = min(lumaM, min(min(lumaNW, lumaNE), min(lumaSW, lumaSE)));"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "float lumaMax = max(lumaM, max(max(lumaNW, lumaNE), max(lumaSW, lumaSE)));"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "vec2 dir;"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "dir.x = -((lumaNW + lumaNE) - (lumaSW + lumaSE));"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "dir.y =  ((lumaNW + lumaSW) - (lumaNE + lumaSE));"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "float dirReduce = max((lumaNW + lumaNE + lumaSW + lumaSE) * 0.25 * FXAA_MUL_REDUCE, FXAA_MIN_REDUCE);"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "float minDirFactor = 1.0 / (min(abs(dir.x), abs(dir.y)) + dirReduce);"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "dir = clamp(dir * minDirFactor, vec2(-MAX_SPAN), vec2(MAX_SPAN)) * invResolution;"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "vec4 rgbA = 0.5 * ("

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "texture(screenTexture, gl_FragCoord.xy * invResolution + dir * (1.0 / 3.0 - 0.5)) +"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "texture(screenTexture, gl_FragCoord.xy * invResolution + dir * (2.0 / 3.0 - 0.5)));"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "vec4 rgbB = rgbA * 0.5 + 0.25 * ("

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "texture(screenTexture, gl_FragCoord.xy * invResolution + dir * -0.5) +"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "texture(screenTexture, gl_FragCoord.xy * invResolution + dir *  0.5));"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "float lumaB = dot(rgbB, vec4(luma, 0.0));"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "outFragColor = lumaB < lumaMin || lumaB > lumaMax ? rgbA : rgbB;"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "}"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
