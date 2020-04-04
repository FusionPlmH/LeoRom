.class public Lcom/samsung/android/camera/vision/BarcodeGenerator;
.super Ljava/lang/Object;
.source "BarcodeGenerator.java"


# instance fields
.field private mBgPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "Barcode.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "saiv"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/vision/BarcodeGenerator;->init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camera/vision/BarcodeGenerator;->mBgPtr:J

    return-void
.end method

.method private native createQrImage(J[BIIZ)J
.end method

.method private native init(Ljava/lang/String;)J
.end method

.method private native release(J)V
.end method


# virtual methods
.method public createQrImage(Ljava/lang/String;Lcom/samsung/android/camera/vision/QRCodeMode;Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;Z)Lcom/samsung/android/camera/vision/Image;
    .locals 14

    const-wide/16 v0, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    move-object v12, p0

    :try_start_0
    iget-wide v6, v12, Lcom/samsung/android/camera/vision/BarcodeGenerator;->mBgPtr:J

    const-string v5, "UTF8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, p1

    :try_start_1
    invoke-virtual {v13, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/vision/QRCodeMode;->ordinal()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->ordinal()I

    move-result v10

    move-object v5, v12

    move/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/camera/vision/BarcodeGenerator;->createQrImage(J[BIIZ)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v2, v5

    nop

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/vision/Image;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/camera/vision/Image;-><init>(J)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v13, p1

    :goto_0
    return-object v4
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/camera/vision/BarcodeGenerator;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/vision/BarcodeGenerator;->mBgPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/vision/BarcodeGenerator;->release(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/vision/BarcodeGenerator;->mBgPtr:J

    return-void
.end method
