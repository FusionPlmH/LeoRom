.class public Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;
.super Landroid/widget/FrameLayout;
.source "FingerScanWarningEffect.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mIsMoveLeftRight:Z

.field private mIsSetSize:Z

.field private mUiVersion:I


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

.method private disableWarnView()V
    .locals 0

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


# virtual methods
.method public setWarningStatus(I)V
    .locals 4

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

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_width_se10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_height_se10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->disableWarnView()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
