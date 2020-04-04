.class public Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;
.super Ljava/lang/Object;
.source "GestureHintAnimator.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentHintId:I

.field mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

.field private final mHintHeight:F

.field mHoldingViAnimator:Landroid/animation/AnimatorSet;

.field private mIsFixedOrientation:Z

.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private final mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHintHeight:F

    return-void
.end method

.method private dipToPixel(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private hideHintView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$hide$1(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->hideHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->hideHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->hideHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    return-void
.end method

.method public static synthetic lambda$onActionMove$2(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;IJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionMove - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mCurrentHintId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_9

    const/high16 v3, 0x43520000    # 210.0f

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->dipToPixel(F)F

    move-result v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->dipToPixel(F)F

    move-result v4

    int-to-float v5, v1

    mul-float/2addr v5, v4

    div-float/2addr v5, v3

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_EXTRA_HINT_AREA:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHintHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    :goto_0
    sub-float/2addr v5, v6

    cmpl-float v6, v5, v4

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v5, v6

    const v6, 0x3f947ae1    # 1.16f

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v6, v7

    int-to-float v9, v1

    mul-float/2addr v8, v9

    div-float/2addr v8, v3

    add-float/2addr v8, v7

    cmpl-float v9, v8, v6

    if-lez v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    move v8, v9

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v9

    const-string v10, "scaleY"

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    const/4 v12, 0x1

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x3

    if-ne v9, v11, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_4

    :cond_4
    if-ne v9, v12, :cond_6

    neg-float v11, v5

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_4

    :cond_5
    :goto_3
    neg-float v11, v5

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setScaleX(F)V

    const-string v10, "scaleX"

    :cond_6
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_9

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-nez v14, :cond_7

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    goto :goto_5

    :cond_7
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-nez v14, :cond_9

    new-array v14, v12, [F

    aput v7, v14, v11

    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v15, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v14, v12, v11

    invoke-virtual {v15, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    move/from16 v16, v8

    const-wide/16 v7, 0x1f4

    invoke-virtual {v11, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    const v8, 0x3dcccccd    # 0.1f

    const v11, 0x3e2e147b    # 0.17f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v11, v8, v12}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    const-string v7, "scaleY"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v13, v12}, Landroid/view/View;->setScaleX(F)V

    goto :goto_5

    :cond_8
    invoke-virtual {v13, v12}, Landroid/view/View;->setScaleY(F)V

    :cond_9
    :goto_5
    return-void
.end method

.method public static synthetic lambda$reset$0(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->showHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->showHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->showHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "GestureHintAnimator"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetHintView(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetHintView - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_EXTRA_HINT_AREA:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHintHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    move v9, v3

    const-string v10, "scaleX"

    :goto_1
    goto :goto_2

    :cond_2
    if-ne v5, v7, :cond_3

    neg-float v6, v3

    const/4 v9, 0x0

    const-string v10, "scaleY"

    goto :goto_1

    :cond_3
    if-ne v5, v8, :cond_4

    move v6, v3

    const/4 v9, 0x0

    const-string v10, "scaleY"

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    move v9, v3

    const-string v10, "scaleX"

    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const-wide/16 v12, 0xc8

    const/4 v15, 0x0

    if-lez v11, :cond_5

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    new-array v7, v8, [F

    aput v4, v7, v15

    invoke-static {v11, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v14, v8, [Landroid/animation/Animator;

    aput-object v7, v14, v15

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v14, 0x3dcccccd    # 0.1f

    const v12, 0x3e2e147b    # 0.17f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v12, v14, v13}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_3
    const-string v4, "scaleX"

    new-array v7, v8, [F

    aput v13, v7, v15

    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v7, "scaleY"

    new-array v11, v8, [F

    aput v13, v11, v15

    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-string v11, "translationX"

    new-array v12, v8, [F

    aput v6, v12, v15

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-string v12, "translationY"

    new-array v13, v8, [F

    aput v9, v13, v15

    invoke-static {v2, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v4, v14, v15

    aput-object v7, v14, v8

    const/4 v8, 0x2

    aput-object v11, v14, v8

    const/4 v8, 0x3

    aput-object v12, v14, v8

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v8, 0x3f4ccccd    # 0.8f

    const v14, 0x3f547ae1    # 0.83f

    const/4 v15, 0x0

    invoke-static {v8, v15, v14, v14}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private showHintView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$LaDlhePigOzsg398Oi6M-HMCHNU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$LaDlhePigOzsg398Oi6M-HMCHNU;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActionMove(IIJ)V
    .locals 2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mCurrentHintId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;IJ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$xiY0v3GtohNzXVDBxouH4XC2bpU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$xiY0v3GtohNzXVDBxouH4XC2bpU;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mCurrentHintId:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    return-void
.end method
