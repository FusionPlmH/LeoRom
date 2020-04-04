.class public final Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
.super Ljava/lang/Object;
.source "ImgConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$MetaType;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Event;,
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;
    }
.end annotation


# static fields
.field public static final INFO_NO_INPUT_DATA:I = 0x1

.field public static final META_CHANGED_FORMAT:I = 0x3

.field public static final META_COLOR_ASPECTS:I = 0x2

.field public static final META_PREFER_HW:I = 0x4

.field public static final META_SEI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImgConverter"


# instance fields
.field private mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

.field private mMetaParametertypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mNativeContext:J

.field private mNativeEventListener:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "simgp_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;

    invoke-direct {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;-><init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [B

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/media/MediaFormat;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    aput-object v1, v0, v3

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->registerMetaParameterType(I[Ljava/lang/Class;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImgConverter-event-listen"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    iget-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    new-instance v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    iget-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;-><init>(Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mNativeEventListener:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mNativeEventListener:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    invoke-virtual {p1}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSetup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs checkMetaParameters(I[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    array-length v1, p2

    array-length v2, v0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " required: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hdrToSdr(Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;I)Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->getColorSpace()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->getHeight()I

    move-result v2

    const/16 v3, 0x259

    if-eq v0, v3, :cond_1

    const/16 v3, 0x258

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "wrong color space"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    const/4 v3, 0x6

    if-eq p1, v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/16 v3, 0x190

    if-eq p1, v3, :cond_3

    const/16 v3, 0x1f4

    if-eq p1, v3, :cond_3

    const/16 v3, 0x1f6

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "support NV12, NV21, YUV420, RGB888, RGBA8888, ARGB8888"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    new-instance v3, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;

    invoke-direct {v3, v1, v2, p1}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;-><init>(III)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeHdrToSdr(Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;)I

    const-string v6, "ImgConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "***end : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width or height must be greater than 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final native nativeConvert()I
.end method

.method private final native nativeFinalize()V
.end method

.method public static native nativeHdrToSdr(Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;)I
.end method

.method private final native nativeQueryMetadata(II)Ljava/lang/String;
.end method

.method private final native nativeSendMetadata(IILjava/lang/String;)V
.end method

.method private final native nativeSendMetadataBuffer(IIJ[BJ)V
.end method

.method private final native nativeSetInputBuffer(Ljava/nio/ByteBuffer;J)V
.end method

.method private final native nativeSetOutputBuffer(Ljava/nio/ByteBuffer;J)V
.end method

.method private final native nativeSetup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native natvieGetInputSurface()Landroid/view/Surface;
.end method

.method private final native natvieSetOutputSurface(Landroid/view/Surface;)V
.end method

.method private varargs registerMetaParameterType(I[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mMetaParametertypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public convert()I
    .locals 2

    const-string v0, "ImgConverter"

    const-string v1, "convert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeConvert()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "ImgConverter"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->release()V

    :cond_0
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->natvieGetInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public preferHw(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(I[Ljava/lang/Object;)V

    return-void
.end method

.method public queryMetadata(I)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeQueryMetadata(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "color-standard"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "color-range"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "color-transfer"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    nop

    :goto_0
    return-object v1
.end method

.method public release()V
    .locals 2

    const-string v0, "ImgConverter"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mNativeEventListener:Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->release()V

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    iput-object v1, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeFinalize()V

    return-void
.end method

.method public varargs sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->checkMetaParameters(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v2, p3

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSendMetadata(IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    aget-object v0, p3, v0

    check-cast v0, Landroid/media/MediaFormat;

    invoke-direct {v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    move-object v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSendMetadata(IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aget-object v0, p3, v1

    check-cast v0, [B

    invoke-virtual {p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->ordinal()I

    move-result v4

    array-length v1, v0

    int-to-long v8, v1

    move-object v2, p0

    move v3, p1

    move-wide v5, v10

    move-object v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSendMetadataBuffer(IIJ[BJ)V

    nop

    :goto_1
    return-void
.end method

.method public varargs sendMetadata(I[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->UNKNOWN:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    return-void
.end method

.method public setEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->setOnEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V

    return-void
.end method

.method public setInputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSetInputBuffer(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method public setOutputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->nativeSetOutputBuffer(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->natvieSetOutputSurface(Landroid/view/Surface;)V

    return-void
.end method
