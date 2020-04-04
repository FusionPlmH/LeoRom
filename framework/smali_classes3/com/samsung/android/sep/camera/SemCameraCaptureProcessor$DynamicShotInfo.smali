.class public Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicShotInfo"
.end annotation


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mDynamicShotCondition:I

.field private mDynamicShotExtraInfo:I

.field private mProcessingMode:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mProcessingMode:I

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotCondition:I

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotExtraInfo:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mProcessingMode:I

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotCondition:I

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotExtraInfo:I

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    :cond_1
    ushr-int/lit8 v4, v3, 0x10

    iput v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mProcessingMode:I

    iput v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotCondition:I

    iput v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotExtraInfo:I

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DynamicShotInfo: mDynamicShotCondition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotCondition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  mDynamicShotExtraInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotExtraInfo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shotMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mProcessingMode:I

    return v0
.end method


# virtual methods
.method getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method public getDynamicShotCondition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotCondition:I

    return v0
.end method

.method public getDynamicShotExtraInfo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mDynamicShotExtraInfo:I

    return v0
.end method

.method public getProcessingMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->mProcessingMode:I

    return v0
.end method
