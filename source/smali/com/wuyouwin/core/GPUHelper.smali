.class public abstract Lcom/wuyouwin/core/GPUHelper;
.super Ljava/lang/Object;
.source "GPUHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wuyouwin/core/GPUHelper$VkPresentMode;
    }
.end annotation


# static fields
.field public static VK_API_VERSION_1_3:I


# direct methods
.method public static synthetic $r8$lambda$aBRQubSAzGbJbseQpQoLThvxjgY(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/wuyouwin/core/GPUHelper;->lambda$loadGPUInformation$0(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/wuyouwin/core/GPUHelper;->vkMakeVersion(III)I

    move-result v0

    sput v0, Lcom/wuyouwin/core/GPUHelper;->VK_API_VERSION_1_3:I

    .line 34
    const-string v0, "winlator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static native createOffscreenEGLContext(Z)J
.end method

.method public static native destroyOffscreenEGLContext(J)V
.end method

.method public static getAdrenoModelId(Landroid/content/Context;)S
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    const-string v0, "adreno[^678]*([678][0-9]{2})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0}, Lcom/wuyouwin/core/GPUHelper;->glGetRenderer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 128
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-short v1, v1

    return v1
.end method

.method public static glGetRenderer(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "gpu_renderer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/wuyouwin/core/GPUHelper;->loadGPUInformation(Landroid/content/Context;)Landroidx/collection/ArrayMap;

    move-result-object v2

    .line 105
    .local v2, "gpuInfo":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "renderer"

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method private static synthetic lambda$loadGPUInformation$0(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V
    .locals 15
    .param p0, "gpuInfo"    # Landroidx/collection/ArrayMap;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Ljava/lang/Thread;

    .line 45
    move-object v1, p0

    const/4 v0, 0x0

    const/16 v2, 0x3038

    const/4 v3, 0x1

    const/16 v4, 0xd

    new-array v7, v4, [I

    fill-array-data v7, :array_0

    .line 54
    .local v7, "attribList":[I
    new-array v4, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 55
    .local v4, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v3, v3, [I

    .line 57
    .local v3, "configCounts":[I
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljavax/microedition/khronos/egl/EGL10;

    .line 58
    .local v11, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v11, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v12

    .line 60
    .local v12, "eglDisplay":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v13, 0x2

    new-array v14, v13, [I

    .line 61
    .local v14, "version":[I
    invoke-interface {v11, v12, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 62
    const/4 v9, 0x1

    move-object v5, v11

    move-object v6, v12

    move-object v8, v4

    move-object v10, v3

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 64
    const/16 v5, 0x3098

    filled-new-array {v5, v13, v2}, [I

    move-result-object v2

    .line 65
    .end local v7    # "attribList":[I
    .local v2, "attribList":[I
    aget-object v0, v4, v0

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v11, v12, v0, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    .line 67
    .local v5, "eglContext":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v11, v12, v0, v6, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 69
    invoke-virtual {v5}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    .line 70
    .local v6, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/16 v0, 0x1f01

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-static {v0, v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "gpuRenderer":Ljava/lang/String;
    const/16 v0, 0x1f00

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-static {v0, v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "gpuVendor":Ljava/lang/String;
    const/16 v0, 0x1f02

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-static {v0, v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "gpuVersion":Ljava/lang/String;
    const-string v0, "renderer"

    invoke-virtual {p0, v0, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "vendor"

    invoke-virtual {p0, v0, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "version"

    invoke-virtual {p0, v0, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static/range {p1 .. p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 79
    .local v10, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v13, "gpu_renderer"

    .line 80
    invoke-interface {v0, v13, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v13, "gpu_vendor"

    .line 81
    invoke-interface {v0, v13, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v13, "gpu_version"

    .line 82
    invoke-interface {v0, v13, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    monitor-enter p2

    .line 86
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notify()V

    .line 87
    monitor-exit p2

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 4
        0x3033
        0x1
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3038
    .end array-data
.end method

.method private static loadGPUInformation(Landroid/content/Context;)Landroidx/collection/ArrayMap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 39
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 40
    .local v1, "gpuInfo":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "renderer"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "vendor"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v2, "version"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/wuyouwin/core/GPUHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0, v0}, Lcom/wuyouwin/core/GPUHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/collection/ArrayMap;Landroid/content/Context;Ljava/lang/Thread;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 90
    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 94
    :catch_0
    move-exception v2

    goto :goto_0

    .line 95
    :goto_1
    :try_start_1
    monitor-exit v0

    .line 96
    return-object v1

    .line 95
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static native setGlobalEGLContext()V
.end method

.method public static native vkGetApiVersion()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native vkGetDeviceExtensions()[Ljava/lang/String;
.end method

.method public static vkMakeVersion(III)I
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "patch"    # I

    .line 150
    shl-int/lit8 v0, p0, 0x16

    shl-int/lit8 v1, p1, 0xc

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static vkMakeVersion(Ljava/lang/String;)I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .line 132
    const-string v0, "([0-9]+)\\.([0-9]+)\\.?([0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 133
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 134
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 136
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    goto :goto_3

    .line 136
    :cond_0
    move v4, v3

    .line 137
    .local v4, "major":I
    :goto_0
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    .line 138
    .local v5, "minor":I
    :goto_1
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    .line 139
    .local v6, "patch":I
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    if-nez v6, :cond_3

    move v6, v5

    .line 140
    :cond_3
    invoke-static {v4, v5, v6}, Lcom/wuyouwin/core/GPUHelper;->vkMakeVersion(III)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 142
    .end local v4    # "major":I
    .end local v5    # "minor":I
    .end local v6    # "patch":I
    :goto_3
    nop

    .line 143
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v3

    .line 146
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    return v3
.end method

.method public static vkVersionMajor(I)I
    .locals 1
    .param p0, "version"    # I

    .line 154
    shr-int/lit8 v0, p0, 0x16

    return v0
.end method

.method public static vkVersionMinor(I)I
    .locals 1
    .param p0, "version"    # I

    .line 158
    shr-int/lit8 v0, p0, 0xc

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method
