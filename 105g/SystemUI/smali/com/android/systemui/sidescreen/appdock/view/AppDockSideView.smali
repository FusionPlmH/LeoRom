.class public Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;
.super Landroid/widget/LinearLayout;
.source "AppDockSideView.java"


# instance fields
.field mLayoutChangeButton:Landroid/widget/ImageView;

.field mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

.field mListWidth:I

.field mOrientation:I

.field mProgressView:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListWidth:I

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->requestLayoutUpdate()V

    return-void
.end method

.method private requestLayoutUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mLayoutChangeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView$1;->$SwitchMap$com$android$systemui$sidescreen$appdock$view$AppDockItemListView$LayoutState:[I

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getCurrentLayoutState()Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-direct {p0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->updateLayoutParams(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->GRID:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-direct {p0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->updateLayoutParams(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V

    nop

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/ViewGroup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayoutParams(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mLayoutChangeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView$1;->$SwitchMap$com$android$systemui$sidescreen$appdock$view$AppDockItemListView$LayoutState:[I

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    sget-object v3, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->GRID:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->setLayoutState(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mLayoutChangeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    sget-object v3, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->setLayoutState(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V

    iget v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mLayoutChangeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->stopScroll()V

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->scrollToPosition(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public animateMinimize(Z)V
    .locals 8

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    if-eqz p1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    aput v6, v3, v7

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->exitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public composeEnterAnimation()Landroid/animation/AnimatorSet;
    .locals 7

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->setTranslationX(F)V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v2, v5

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->easeOutCirc:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public composeExitAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getTranslationX()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput v2, v6, v3

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->exitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->isIsLayoutChangeAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getProgressView()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mProgressView:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mLayoutChangeButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mLayoutChangeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/view/-$$Lambda$AppDockSideView$wWLvA2Yj8uKRSKnDn3QDLBaf_3E;

    invoke-direct {v1, p0}, Lcom/android/systemui/sidescreen/appdock/view/-$$Lambda$AppDockSideView$wWLvA2Yj8uKRSKnDn3QDLBaf_3E;-><init>(Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->updateOwnParams()V

    return-void
.end method

.method public onStart()V
    .locals 1

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-direct {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->updateLayoutParams(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->setIsLayoutChangeAnimRunning(Z)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->bind()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->updateOwnParams()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->unbind()V

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->mListView:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->updateList(Ljava/util/ArrayList;)V

    return-void
.end method

.method updateOwnParams()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->getStableInsets(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-string v2, "inset.top=%d, topMargin=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
