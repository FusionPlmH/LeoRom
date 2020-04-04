.class public Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "FingerPrintAlertView.java"


# instance fields
.field private isPopupAlert:Z

.field private mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

.field private mIsMoveLeftRight:Z

.field private mUiVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createAnimation()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x14d

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v8, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v8, 0x341

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-eqz v10, :cond_0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    const-wide/16 v10, 0x48e

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v12, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v13, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v13, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v15, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v15, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v14, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v15, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v15, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    new-instance v15, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v15, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v11

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_1
    const-wide/16 v6, 0x48e

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    const-wide/16 v6, 0x91c

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    :goto_2
    return-void
.end method

.method private setAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->createAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimationListener()V

    return-void
.end method

.method private setAnimationListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setHorizontalGapDP(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method

.method private setVerticalGapDP(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private startInternalAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method protected getMaxStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$layout;->layout_finger_print_alert_view_sidekey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->addView(Landroid/view/View;)V

    :goto_0
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_01:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_02:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_03:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->popup_alert_2_horizontal_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setHorizontalGapDP(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->popup_alert_2_vertical_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    :goto_1
    return-void
.end method

.method protected onUpdate(IF)V
    .locals 0

    return-void
.end method

.method protected setAnimator(IZ)V
    .locals 0

    return-void
.end method

.method public setImageResources(III)V
    .locals 2

    sget v0, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_bracket:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->isPopupAlert:Z

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setHorizontalGapDP(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    :goto_0
    return-void
.end method

.method public setUiVersion(IZ)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mUiVersion:I

    iput-boolean p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mIsMoveLeftRight:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->startInternalAnimation()V

    return-void
.end method
