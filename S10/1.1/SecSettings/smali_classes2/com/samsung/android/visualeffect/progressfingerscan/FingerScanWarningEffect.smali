.class public Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;
.super Landroid/widget/FrameLayout;
.source "FingerScanWarningEffect.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHeight:I

.field private mIsMoveLeftRight:Z

.field private mIsSetSize:Z

.field private mUiVersion:I

.field private mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FingerScanWarningEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsSetSize:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FingerScanWarningEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsSetSize:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsSetSize:Z

    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iput-boolean p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWidth:I

    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mHeight:I

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "FingerScanWarningEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsSetSize:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "FingerScanWarningEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsSetSize:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "FingerScanWarningEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsSetSize:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private disableWarnView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    :cond_0
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const-string v1, "FingerScanWarningEffect : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const-string v1, "Version = 3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->disableWarnView()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->startAnimation()V

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsSetSize:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_width_se10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_height_se10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v3, p2, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p3, v2

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->setX(F)V

    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->setY(F)V

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWidth:I

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mHeight:I

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v7, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->setScaleX(F)V

    iget-object v7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v7, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->setScaleY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setWarningStatus(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWarningStatus : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_width_se10:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_height_se10:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v2, v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iget-boolean v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;-><init>(Landroid/content/Context;IZ)V

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v2, v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v2, v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v2, v2, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    iget-boolean v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    invoke-direct {v2, v4, v5, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;-><init>(Landroid/content/Context;IZ)V

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mUiVersion:I

    if-gt v5, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_alert_vertical_gap:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mIsMoveLeftRight:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_alert_vertical_gap:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->se10_move_bracket:I

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->se10_fingerprint_error:I

    invoke-virtual {v2, v4, v5, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setImageResources(III)V

    :goto_1
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    invoke-direct {p0, v2, v0, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->disableWarnView()V

    nop

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
