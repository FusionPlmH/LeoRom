.class public Lcom/samsung/android/animation/SemSweepListAnimator;
.super Lcom/samsung/android/animation/SemAbsSweepListAnimator;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;,
        Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE_LOW:Z

.field private static final FADEOUT_DURATION:I = 0x12c

.field public static final SWEEP_ANIMATION_TRANSLATION:I = 0x2

.field public static final SWEEP_ANIMATION_WAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemSweepListAnimator"

.field private static mPreviousDeltaX:F

.field private static mSkipActionUpAnimation:Z


# instance fields
.field private final DEBUGGABLE:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

.field private mEnableSweep:Z

.field private mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

.field private mSweepAnimationType:I

.field private mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

.field private mViewToRemovePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    if-lez p3, :cond_1

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mForegroundViewResId:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource ids should be positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/animation/SemSweepListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetSweepAnimationFilter()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doRefresh()V

    :cond_0
    return-void
.end method

.method private resetSweepInfo()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwipingPosition:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepBdToFade:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public isSweepAnimatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    return v0
.end method

.method public isSwiping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    return v0
.end method

.method public onActionCancel(Landroid/view/MotionEvent;Landroid/view/View;I)V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    sub-float v1, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    const-string v3, "SemSweepListAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActionCancel : position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sweepProgress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v3, p3, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/animation/SemSweepListAnimator;->showForeground(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetTouchState()V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setPressed(Z)V

    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mActivePointerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mItemPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    return-void
.end method

.method public onActionMove(Landroid/view/MotionEvent;Landroid/view/View;I)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    if-eqz p2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    if-eqz v2, :cond_1

    cmpl-float v2, v1, v4

    if-gez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    if-eqz v2, :cond_3

    cmpg-float v2, v1, v4

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v2, p2, v1, p3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doMoveAction(Landroid/view/View;FI)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v2}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getBitmapDrawableBound()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_4
    sput-boolean v3, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget v3, Lcom/samsung/android/animation/SemSweepListAnimator;->VELOCITY_UNITS:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocities:[F

    iget v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocityIndex:I

    sget v4, Lcom/samsung/android/animation/SemSweepListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    rem-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    aput v4, v2, v3

    goto/16 :goto_3

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    iput-boolean v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwipingPosition:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->removePendingCallbacks()V

    :cond_8
    sput v1, Lcom/samsung/android/animation/SemSweepListAnimator;->mPreviousDeltaX:F

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_f

    if-eqz p2, :cond_f

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p3, v4, v9}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepStart(IFLandroid/graphics/Rect;)Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    cmpl-float v2, v1, v4

    if-gez v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-boolean v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    if-eqz v2, :cond_d

    cmpg-float v2, v1, v4

    if-gtz v2, :cond_d

    :cond_a
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v4, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v4, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v4, v4, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mForegroundView:Landroid/view/View;

    goto :goto_2

    :cond_b
    move-object v2, p2

    :goto_2
    move-object v10, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setPressed(Z)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mCurrentSweepConfig:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    move-object v3, v10

    move v4, v1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V

    goto :goto_3

    :cond_d
    iput-boolean v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_e

    const-string v2, "SemSweepListAnimator"

    const-string/jumbo v3, "onActionMove : send onSweepEnd #4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p3, v4}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v2, p2}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->setForegroundView(Landroid/view/View;)V

    :cond_f
    :goto_3
    return-void
.end method

.method public onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/4 v1, 0x0

    const/4 v9, 0x0

    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    sput-boolean v10, Lcom/samsung/android/animation/SemSweepListAnimator;->mSkipActionUpAnimation:Z

    iput-boolean v10, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwipingPosition:I

    iget-object v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetTouchState()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-interface {v2, v8, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-eqz v2, :cond_b

    if-nez v7, :cond_3

    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_2

    const-string v2, "SemSweepListAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActionUp : viewForeground = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SemSweepListAnimator"

    const-string v3, "**** End onActionUp *****, return #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v1, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mDownX:F

    sub-float v12, v11, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v1, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mHistoricalVelocities:[F

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->getAdjustedVelocityX([F)F

    move-result v14

    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_4

    const-string v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionUp : viewForeground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionUp : adjustedVelocityX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionUp : mScaledTouchSlop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionUp : deltaX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionUp : isSweepPattern = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p4

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemSweepListAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionUp : mSweepAnimationFilter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move/from16 v15, p4

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_5

    const-string v1, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : mSweepAnimationFilter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SemSweepListAnimator"

    const-string v2, "**** End onActionUp *****, return #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    sget-boolean v1, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v1, :cond_7

    const-string v1, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : create sweepAnimation.. #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    iget v4, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mScaledTouchSlop:I

    move-object v2, v7

    move v3, v14

    move v5, v12

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/animation/SemSweepListAnimator$1;

    invoke-direct {v2, v0, v8}, Lcom/samsung/android/animation/SemSweepListAnimator$1;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_8

    new-instance v2, Lcom/samsung/android/animation/SemSweepListAnimator$2;

    invoke-direct {v2, v0, v7, v13, v8}, Lcom/samsung/android/animation/SemSweepListAnimator$2;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/view/View;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_8
    iget-object v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v10}, Landroid/widget/ListView;->setEnabled(Z)V

    sget-boolean v2, Lcom/samsung/android/animation/SemSweepListAnimator;->DEBUGGABLE_LOW:Z

    if-eqz v2, :cond_9

    const-string v2, "SemSweepListAnimator"

    const-string/jumbo v3, "onActionUp : call animator.start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_a

    iget v3, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    :cond_a
    const/4 v9, 0x1

    goto :goto_1

    :cond_b
    move/from16 v15, p4

    move v11, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetTouchState()V

    iget-boolean v1, v0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSwiping:Z

    if-nez v1, :cond_c

    if-nez v9, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemSweepListAnimator;->resetSweepAnimationFilter()V

    :cond_c
    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsSweepListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setForegroundViewResId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mForegroundViewResId:I

    return-void
.end method

.method public setOnSweepListener(Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mOnSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    return-void
.end method

.method public setSweepAnimationType(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;-><init>(Landroid/widget/ListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/animation/SemSweepWaveFilter;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemSweepWaveFilter;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mSweepAnimationFilter:Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSweepAnimatorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator;->mEnableSweep:Z

    return-void
.end method
