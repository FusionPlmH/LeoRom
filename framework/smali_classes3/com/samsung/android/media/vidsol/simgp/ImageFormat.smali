.class public final Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$Usage;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$RotationType;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$HdrType;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorTransfer;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorRange;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorStandard;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorFormat;
    }
.end annotation


# static fields
.field public static final HDR_TYPE_HDR10:I = 0x0

.field public static final HDR_TYPE_HDR10_PULS:I = 0x1

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageFormat"

.field public static final USAGE_VID_DEC:I = 0x1

.field public static final USAGE_VID_ENC:I = 0x2


# instance fields
.field private mColorFormat:I

.field private mColorRange:I

.field private mColorStandard:I

.field private mColorTransfer:I

.field private mHdrType:I

.field private mHeight:I

.field private mRotation:I

.field private mUsage:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mWidth:I

    iput p2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mWidth:I

    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHeight:I

    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorFormat(I)V

    :cond_0
    const-string v0, "color-standard"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "color-standard"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "color-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "color-transfer"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "color-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "color-transfer"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(III)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public setColorFormat(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorFormat:I

    return-void
.end method

.method public setColorSpace(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(III)V

    return-void
.end method

.method public setColorSpace(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorStandard:I

    iput p2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorRange:I

    iput p3, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorTransfer:I

    return-void
.end method

.method public setHdrType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHdrType:I

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mRotation:I

    return-void
.end method

.method public setUsage(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mUsage:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "color-format"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorFormat:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "color-standard"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorStandard:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "color-range"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorRange:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "color-transfer"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorTransfer:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hdr-type"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHdrType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "rotation"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mRotation:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "usage"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mUsage:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method
