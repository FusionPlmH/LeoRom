.class public Landroid/support/design/internal/SeslTabRoundRectIndicator;
.super Landroid/support/design/internal/SeslAbsIndicatorView;
.source "SeslTabRoundRectIndicator.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mPressAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/internal/SeslAbsIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$drawable;->sesl_tablayout_subtab_indicator_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$drawable;->sesl_tablayout_subtab_indicator_background_dark:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$002(Landroid/support/design/internal/SeslTabRoundRectIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method private isLightTheme()Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method onHide()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onPressed()V
    .locals 14

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v4, Landroid/support/design/internal/SeslTabRoundRectIndicator$1;

    invoke-direct {v4, p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator$1;-><init>(Landroid/support/design/internal/SeslTabRoundRectIndicator;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f733333    # 0.95f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v4, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->isSelected()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    iget-object v1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onReleased()V
    .locals 12

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onSetSelectedIndicatorColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method onShow()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->onReleased()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->onReleased()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHideImmediatly()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
