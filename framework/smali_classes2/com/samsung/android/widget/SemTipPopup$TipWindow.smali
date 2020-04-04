.class Lcom/samsung/android/widget/SemTipPopup$TipWindow;
.super Landroid/widget/PopupWindow;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TipWindow"
.end annotation


# instance fields
.field private mIsDismissing:Z

.field private mIsUsingDismissAnimation:Z

.field private mPivotX:F

.field private mPivotY:F


# direct methods
.method private constructor <init>(Landroid/view/View;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setPivot(FF)V

    return-void
.end method

.method static synthetic access$2401(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setUseDismissAnimation(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    return p1
.end method

.method private animateViewOut()V
    .locals 11

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget v7, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    iget v9, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4f5c29    # 0.81f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4f5c29    # 0.81f

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xa6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->access$2300()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;-><init>(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setPivot(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    return-void
.end method

.method private setUseDismissAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->animateViewOut()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method
