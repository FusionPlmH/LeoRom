.class public Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;
.super Ljava/lang/Object;
.source "HeifCaptureJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeifCaptureJNI"


# instance fields
.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "heifcapture_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeSetup()V

    const-string v0, "HeifCaptureJNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->mNativeHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeSetup()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/HeifCaptureJNI;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native nativeStart(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I
.end method

.method public native nativeStop()I
.end method

.method public native nativeStore(Lcom/samsung/android/media/heif/jni/AMessageJNI;)I
.end method
