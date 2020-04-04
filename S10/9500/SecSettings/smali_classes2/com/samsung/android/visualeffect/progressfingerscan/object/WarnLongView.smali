.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "WarnLongView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mClockHandView:Landroid/view/View;

.field private mFingerView:Landroid/view/View;

.field private mUiVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    const-string v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    const-string v1, "WarnLongView"

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "WarnLongView"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    return-void
.end method


# virtual methods
.method protected getMaxStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->se10_timeout_fingerprint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    if-gt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->se10_timeout_clock:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    :goto_1
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    if-gt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->se10_timeout_clock_niddle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mUiVersion:I

    if-gt v5, v1, :cond_3

    const/high16 v1, 0x426e0000    # 59.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v3, 0x41880000    # 17.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    :goto_3
    goto :goto_4

    :cond_3
    const v1, 0x430b3333    # 139.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v3, 0x42060000    # 33.5f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_3

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onUpdate(IF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3dcccccd    # 0.1f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, p2

    add-float v0, v3, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, p2

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :pswitch_2
    mul-float/2addr v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    mul-float/2addr v1, p2

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setAnimator(IZ)V
    .locals 5

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v0, 0x29b

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x3e8

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x14d

    if-nez p2, :cond_0

    const-wide/16 v2, 0x29a

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
