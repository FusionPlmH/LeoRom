.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;
.super Ljava/lang/Object;
.source "OffscreenRenderer.java"


# static fields
.field private static LSI_BOARD_HERO:Ljava/lang/String;

.field private static fboId:[I

.field private static mBoardType:Ljava/lang/String;

.field private static mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private static mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private static mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

.field private static renderBuffId:[I

.field private static surfaceHeight:I

.field private static surfaceWidth:I

.field private static textureId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [I

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    const-string/jumbo v0, "samsungexynos8890"

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static offscreenFinalize()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_1
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_2
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public static offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V
    .locals 23

    move/from16 v15, p7

    move/from16 v14, p8

    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    const/4 v13, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move v9, v15

    move v10, v14

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;-><init>(Landroid/content/Context;IIIIIIIIIIZZ)V

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sput v15, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    move/from16 v10, p8

    sput v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x2

    new-array v11, v0, [I

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v1, 0x1

    new-array v12, v1, [I

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v13, 0x0

    invoke-interface {v2, v3, v4, v13, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v2, v12, v13

    new-array v14, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v2

    sget-object v16, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v17, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v20, 0x1

    move-object/from16 v19, v14

    move-object/from16 v21, v12

    invoke-interface/range {v16 .. v21}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Could not find config for GLES2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    :cond_0
    sput-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-nez v3, :cond_1

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    nop

    nop

    nop

    nop

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "offscreenInitialize: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-array v3, v6, [I

    const/16 v6, 0x3057

    aput v6, v3, v13

    sget v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    aput v6, v3, v1

    const/16 v6, 0x3056

    aput v6, v3, v0

    sget v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    aput v0, v3, v5

    const/4 v0, 0x4

    const/16 v6, 0x3038

    aput v6, v3, v0

    move-object v0, v3

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "offscreenInitialize: LSI_BOARD_HERO"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v6, v14, v13

    invoke-interface {v2, v3, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4

    const/16 v0, 0x3098

    const/16 v16, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    nop

    nop

    move-object v9, v2

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, v14, v13

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v5, v6, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v2, v3, v15, v10}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    invoke-static {v1, v2, v13}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    invoke-static {v1, v2, v13}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    invoke-static {v1, v2, v13}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    aget v1, v1, v13

    const/16 v8, 0xde1

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    invoke-static {v8, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v17, 0x1401

    const/16 v19, 0x0

    move v4, v15

    move v5, v10

    move/from16 v8, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v19

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    aget v1, v1, v13

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    invoke-static {v2, v1, v15, v10}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    aget v1, v1, v13

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    aget v4, v4, v13

    const/16 v5, 0xde1

    invoke-static {v3, v1, v5, v4, v13}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v1, 0x8d00

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    aget v4, v4, v13

    invoke-static {v3, v1, v2, v4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-ne v1, v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "--fbo pass"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "FBO not complete."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v17, v9

    :goto_1
    return-void

    :cond_4
    sput-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to create surface"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0xa
        0x3056
        0xa
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static offscreenTransformFrame([B[B[F)V
    .locals 11

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->setImage([B[F)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    sget v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move-object v10, v0

    invoke-interface/range {v3 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
