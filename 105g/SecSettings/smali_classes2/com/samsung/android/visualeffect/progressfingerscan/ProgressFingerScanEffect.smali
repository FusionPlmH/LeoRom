.class public Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;
.super Landroid/widget/FrameLayout;
.source "ProgressFingerScanEffect.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentStatus:I

.field private finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

.field private mCustomDuration:I

.field private mEnrollType:I

.field private mHeight:I

.field private mInverseFingerResID:I

.field private mPercent:F

.field private mUiVersion:I

.field private mVersion:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIIII)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FingerScanEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->ANIMATION_DELAY:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mVersion:I

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mEnrollType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mPercent:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mCustomDuration:I

    iput p12, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mVersion:I

    div-int/lit8 v0, p12, 0xa

    rem-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    rem-int/lit8 v0, p12, 0xa

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mEnrollType:I

    const-string v0, "FingerScanEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSensorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mEnrollType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | mUiVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mUiVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->initialize(Landroid/content/Context;IIIIIIIIII)V

    return-void
.end method

.method private initialize(Landroid/content/Context;IIIIIIIIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "FingerScanEffect"

    const-string v4, "ProgressFingerScanEffect : Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FingerScanEffect"

    const-string v4, "Version = 10.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FingerScanEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", fingerBgColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", progressColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", greyColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", completeColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", strokeWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->context:Landroid/content/Context;

    iput v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mWidth:I

    iput v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mHeight:I

    iget v4, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mEnrollType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->bg_finger_02:I

    iput v4, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mInverseFingerResID:I

    goto :goto_0

    :pswitch_1
    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->bg_finger_01:I

    iput v4, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mInverseFingerResID:I

    goto :goto_0

    :pswitch_2
    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->bg_finger_02:I

    iput v4, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mInverseFingerResID:I

    nop

    :goto_0
    const/16 v4, 0x285

    const/16 v14, 0x285

    iget v6, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v15, v6, 0x2

    iget v6, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mHeight:I

    sub-int/2addr v6, v14

    div-int/lit8 v13, v6, 0x2

    new-instance v12, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    iget v11, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mInverseFingerResID:I

    iget v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mVersion:I

    move-object v6, v12

    move-object v7, v3

    move v8, v4

    move v9, v14

    move/from16 v16, v10

    move/from16 v10, p4

    move/from16 v17, v11

    move/from16 v11, p6

    move-object v1, v12

    move/from16 v12, v17

    move v2, v13

    move/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;-><init>(Landroid/content/Context;IIIIII)V

    iput-object v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    iget-object v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    int-to-float v6, v15

    invoke-virtual {v1, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setX(F)V

    iget-object v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    int-to-float v6, v2

    invoke-virtual {v1, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setY(F)V

    iget v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mWidth:I

    int-to-float v1, v1

    int-to-float v6, v4

    div-float/2addr v1, v6

    iget v6, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mHeight:I

    int-to-float v6, v6

    int-to-float v7, v14

    div-float/2addr v6, v7

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v7, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setScaleX(F)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v7, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setScaleY(F)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0, v7, v4, v14}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->addView(Landroid/view/View;II)V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setLayoutDirection(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroyDrawingCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->clearAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->removeAllViews()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    return-void
.end method

.method public setCustomDuration(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mCustomDuration:I

    return-void
.end method

.method public setFingerStatus(I)V
    .locals 3

    const-string v0, "FingerScanEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWarningStatus : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mCustomDuration:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mCustomDuration:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mPercent:F

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setPercent(F)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->currentStatus:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mCustomDuration:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mPercent:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setPercent(F)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPercent(F)V
    .locals 3

    const-string v0, "FingerScanEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPercent : percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->mPercent:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setDuration(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->finger:Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setPercent(F)V

    return-void
.end method
