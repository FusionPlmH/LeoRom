.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

.field private mIsCallPerformClick:Z

.field private mMainTabTouchBackground:Landroid/view/View;

.field private mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextParentView:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    invoke-static {p2, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iget v3, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iget v4, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v3, v2}, Landroid/support/design/widget/TabLayout$TabView;->setPaddingRelative(IIII)V

    :goto_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    nop

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private showMainTabTouchBackground(I)V
    .locals 14

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v3

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const v6, 0x3f733333    # 0.95f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    invoke-virtual {v3, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v3

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/TabLayout$TabView$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/TabLayout$TabView$1;-><init>(Landroid/support/design/widget/TabLayout$TabView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startTabTouchAnimation(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->showMainTabTouchBackground(I)V

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$700(Landroid/support/design/widget/TabLayout$Tab;)I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->setReleased()V

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v2, p1}, Landroid/support/design/internal/SeslAbsIndicatorView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->performClick()Z

    iput-boolean v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    goto/16 :goto_1

    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$700(Landroid/support/design/widget/TabLayout$Tab;)I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$800(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->setPressed()V

    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    :cond_2
    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v3}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHide()V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$700(Landroid/support/design/widget/TabLayout$Tab;)I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->setPressed()V

    :cond_5
    :goto_0
    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->showMainTabTouchBackground(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v2}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHide()V

    :cond_7
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$800(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    :cond_8
    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v3, :cond_9

    iget-object v3, v2, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v3}, Landroid/support/design/internal/SeslAbsIndicatorView;->setShow()V

    :cond_9
    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->showMainTabTouchBackground(I)V

    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 9

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz p1, :cond_6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v8, v4}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v7

    :cond_7
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v7, v4, :cond_8

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_8
    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v3

    :goto_5
    invoke-static {p0, v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    sub-int v1, p4, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    iget-object v3, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v3

    move/from16 v4, p2

    iget-object v5, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_0
    goto :goto_1

    :cond_0
    if-lez v3, :cond_2

    if-eqz v2, :cond_1

    if-le v1, v3, :cond_2

    :cond_1
    iget-object v5, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v5, v5, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_0

    :cond_2
    move/from16 v5, p1

    :goto_1
    invoke-super {v0, v5, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v8, v8, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    iget-object v9, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    float-to-int v11, v8

    invoke-static {v9, v10, v11}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;I)V

    iget v9, v0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineCount()I

    move-result v10

    if-le v10, v11, :cond_4

    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v8, v10, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    :cond_4
    :goto_2
    iget-object v10, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    iget-object v12, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineCount()I

    move-result v12

    iget-object v13, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v13}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v13

    cmpl-float v14, v8, v10

    if-nez v14, :cond_5

    if-ltz v13, :cond_8

    if-eq v9, v13, :cond_8

    :cond_5
    const/4 v14, 0x1

    iget-object v15, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v15, v15, Landroid/support/design/widget/TabLayout;->mMode:I

    if-ne v15, v11, :cond_7

    cmpl-float v15, v8, v10

    if-lez v15, :cond_7

    if-ne v12, v11, :cond_7

    iget-object v11, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-direct {v0, v11, v7, v8}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v17

    sub-int v7, v16, v17

    int-to-float v7, v7

    cmpl-float v7, v15, v7

    if-lez v7, :cond_7

    :cond_6
    const/4 v14, 0x0

    :cond_7
    if-eqz v14, :cond_8

    iget-object v7, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v11, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    float-to-int v15, v8

    invoke-static {v7, v11, v15}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;I)V

    iget-object v7, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {v0, v5, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_8
    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v6, :cond_a

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_a

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v6, :cond_a

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_9
    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v6, v6, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v6, :cond_a

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v6, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v8

    add-int/2addr v8, v6

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    sget v9, Landroid/support/design/R$id;->dot_badge:I

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v10, :cond_a

    move-object v10, v9

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, v0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v11

    neg-int v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->startTabTouchAnimation(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 4

    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    return v1

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    return v1

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setShow()V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHideImmediatly()V

    :cond_7
    :goto_1
    return-void
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 9

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    :cond_2
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    :cond_5
    const v4, 0x1020006

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    :cond_7
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    const/4 v4, 0x0

    if-nez v3, :cond_12

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v3, :cond_8

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Landroid/support/design/R$layout;->sesl_layout_tab_icon:I

    invoke-virtual {v3, v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    :cond_8
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    :cond_9
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Landroid/support/design/R$layout;->sesl_layout_sub_tab_text:I

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v3, v3, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v5, -0x1

    if-nez v3, :cond_a

    const/4 v3, -0x2

    goto :goto_2

    :cond_a
    move v3, v5

    :goto_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/design/R$dimen;->sesl_tablayout_subtab_indicator_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroid/support/design/R$id;->indicator:I

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/design/internal/SeslAbsIndicatorView;

    iput-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    if-eq v7, v5, :cond_f

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/support/design/internal/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    goto/16 :goto_6

    :cond_b
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Landroid/support/design/R$layout;->sesl_layout_tab_text:I

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_c

    const/4 v5, -0x1

    :goto_3
    move v6, v5

    goto :goto_4

    :cond_c
    const/4 v5, -0x1

    const/4 v3, -0x2

    goto :goto_3

    :goto_4
    sget v5, Landroid/support/design/R$id;->indicator:I

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/SeslAbsIndicatorView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/support/design/internal/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    :cond_d
    sget v5, Landroid/support/design/R$id;->main_tab_touch_background:I

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_f

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$1600(Landroid/support/design/widget/TabLayout;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Landroid/support/design/R$drawable;->sesl_tablayout_maintab_touch_background_light:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_5

    :cond_e
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Landroid/support/design/R$drawable;->sesl_tablayout_maintab_touch_background_dark:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    :goto_6
    sget v5, Landroid/support/design/R$id;->title:I

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3, v6}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;II)V

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    :cond_10
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v3, v3, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    invoke-static {v1, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v5, v5, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    float-to-int v5, v5

    invoke-static {v1, v3, v5}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;I)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_7

    :cond_12
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v1, :cond_13

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    :cond_13
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_14
    :goto_7
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v4, 0x1

    nop

    :cond_15
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method
