.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field public static final SEM_GO_TO_TOP_BUTTON_STYLE_BLACK:I = 0x1

.field public static final SEM_GO_TO_TOP_BUTTON_STYLE_WHITE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private final GTP_STATE_MAINTAINED:I

.field private final GTP_STATE_NONE:I

.field private final GTP_STATE_PRESSED:I

.field private final GTP_STATE_SHOWN:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private final NORMALIZED_EDGEGLOW_DISTANCE:F

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private mActivePointerId:I

.field private mAutoscrollDuration:F

.field private mAutoscrollDurationGap:F

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mGoToTopGap:I

.field private mGoToTopWH:I

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsDeviceDefault:Z

.field private mIsGoToTopShown:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLinear:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPreviousTextViewScroll:Z

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemEnableGoToTop:Z

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopPressed:Z

.field private final mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSizeChange:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    const/high16 v3, 0x43fa0000    # 500.0f

    iput v3, p0, Landroid/widget/ScrollView;->NORMALIZED_EDGEGLOW_DISTANCE:F

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iput v2, p0, Landroid/widget/ScrollView;->GTP_STATE_NONE:I

    iput v0, p0, Landroid/widget/ScrollView;->GTP_STATE_SHOWN:I

    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/ScrollView;->GTP_STATE_PRESSED:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/ScrollView;->GTP_STATE_MAINTAINED:I

    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    new-array v5, v3, [I

    iput-object v5, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v2, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    iput v2, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    iput-wide v5, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    const v1, 0x4188cccd    # 17.1f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    const v1, 0x3f96c8b4    # 1.178f

    iput v1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsDeviceDefault:Z

    iput v2, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/ScrollView$4;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setRevealOnFocusHint(Z)V

    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x111008d

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v3, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsDeviceDefault:Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeOut()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGoToTopFadeIn()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/ScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    return p1
.end method

.method private autoScrollWithDuration(F)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLinear:Z

    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoScrollWithDuration() duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private canScrollDown()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private canScrollUp()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private static clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int v0, p2, p1

    return v0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private doScrollY(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v0, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v2

    move-object v2, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge p2, v8, :cond_7

    if-ge v7, p3, :cond_7

    const/4 v9, 0x1

    if-ge p2, v7, :cond_0

    if-ge v8, p3, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v4

    :goto_1
    if-nez v2, :cond_1

    move-object v2, v6

    move v5, v10

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v8, v11, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v10, :cond_7

    if-eqz v9, :cond_7

    move-object v2, v6

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    move-object v2, v6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    if-eqz v9, :cond_7

    move-object v2, v6

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-object v2
.end method

.method private flingWithNestedDispatch(I)V
    .locals 3

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_3

    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :cond_3
    return-void
.end method

.method private flingWithoutAcc(I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v8, v3, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x1

    move/from16 v8, p1

    invoke-virtual/range {v4 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v2, :cond_0

    const-string v2, "ScrollView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    iget-wide v3, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v5, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget v3, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v4, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget-wide v5, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v7, 0x2

    cmp-long v3, v5, v7

    const-wide/16 v5, 0x4

    if-lez v3, :cond_2

    iget-wide v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    cmp-long v3, v7, v5

    if-gez v3, :cond_2

    iget v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v5, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_2
    iget-wide v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    cmp-long v3, v7, v5

    const-wide/16 v5, 0x5

    if-ltz v3, :cond_3

    iget-wide v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    cmp-long v3, v7, v5

    if-gez v3, :cond_3

    iget v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v5, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v5, v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_3
    iget-wide v7, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    cmp-long v3, v7, v5

    if-ltz v3, :cond_4

    iget v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v5, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v5, v5

    const-wide v7, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    :cond_4
    :goto_0
    iget v3, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    const/4 v3, -0x1

    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/2addr v3, v6

    :goto_1
    goto :goto_2

    :cond_5
    iget v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/2addr v3, v1

    goto :goto_1

    :goto_2
    if-gez v3, :cond_6

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v0, :cond_6

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v4, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    :cond_6
    if-lez v3, :cond_7

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v0, v2, :cond_7

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v4, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    :cond_7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    if-lez v2, :cond_8

    goto :goto_3

    :cond_8
    move v7, v6

    goto :goto_4

    :cond_9
    :goto_3
    move v7, v1

    :goto_4
    if-eqz v7, :cond_11

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v8, :cond_11

    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_e

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const v9, 0x3ecccccd    # 0.4f

    if-ne v8, v5, :cond_c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v5, v8

    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsDeviceDefault:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v9, v4, v6}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    goto :goto_5

    :cond_a
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_5
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_b
    goto :goto_7

    :cond_c
    iget v5, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    if-ne v5, v1, :cond_e

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v5, v8

    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsDeviceDefault:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v9, v4, v6}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    goto :goto_6

    :cond_d
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_6
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_e
    :goto_7
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_10
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_11
    if-nez v7, :cond_12

    iget-boolean v4, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v4, :cond_12

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_12
    nop

    :goto_8
    return-void
.end method

.method private inChild(II)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private initGoToTop()V
    .locals 5

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x111010b

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v3, 0x10502cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopWH:I

    const v3, 0x10502cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mGoToTopGap:I

    const-string v3, "ScrollView"

    const-string v4, "initGoToTop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iput v4, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput v4, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initScrollView()V
    .locals 2

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    invoke-direct {p0}, Landroid/widget/ScrollView;->initGoToTop()V

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v1

    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v2, :cond_2

    if-gt p3, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    sub-int v6, p2, v2

    goto :goto_1

    :cond_3
    sub-int v6, p3, v3

    :goto_1
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v0
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v2
.end method

.method private semIsSupportGotoTop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private semIsTalkBackIsRunning()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    :cond_2
    return v0
.end method

.method private semPlayGoToTopFadeIn()V
    .locals 4

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private semPlayGoToTopFadeOut()V
    .locals 4

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private semSetupGoToTop(I)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    move v3, v4

    :cond_2
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    iget v5, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput v3, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v7, v5, v7

    iget v8, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    new-array v9, v4, [I

    fill-array-data v9, :array_0

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    if-ne v12, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v13

    :goto_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_7

    iget v15, v14, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_7
    move v15, v2

    :goto_3
    if-eqz v1, :cond_8

    iget v13, v14, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_8
    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_4
    aget v4, v9, v2

    if-ge v4, v15, :cond_9

    aget v4, v9, v2

    neg-int v4, v4

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v4, v2, :cond_9

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v2, v4, v2

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    :cond_9
    const/4 v2, 0x0

    aget v4, v9, v2

    add-int/2addr v4, v5

    if-le v4, v13, :cond_a

    aget v4, v9, v2

    add-int/2addr v4, v5

    iget v2, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v2

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v4, v2, :cond_a

    iget v2, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v2, v4, v2

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v8, v2

    :cond_a
    iget v2, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    packed-switch v2, :pswitch_data_0

    move/from16 v17, v1

    move/from16 v18, v5

    move/from16 v19, v7

    goto :goto_5

    :pswitch_0
    iget-object v2, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/widget/ScrollView;->mGoToTopWH:I

    const/16 v16, 0x2

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v8, v4

    move/from16 v17, v1

    iget v1, v0, Landroid/widget/ScrollView;->mGoToTopWH:I

    sub-int v1, v6, v1

    move/from16 v18, v5

    iget v5, v0, Landroid/widget/ScrollView;->mGoToTopGap:I

    sub-int/2addr v1, v5

    iget v5, v0, Landroid/widget/ScrollView;->mGoToTopWH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v8

    move/from16 v19, v7

    iget v7, v0, Landroid/widget/ScrollView;->mGoToTopGap:I

    sub-int v7, v6, v7

    invoke-virtual {v2, v4, v1, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :pswitch_1
    move/from16 v17, v1

    move/from16 v18, v5

    move/from16 v19, v7

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_b
    :goto_5
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/ScrollView;->mIsGoToTopShown:Z

    :cond_c
    const/4 v1, 0x1

    if-ne v3, v1, :cond_e

    iget v1, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, v0, Landroid/widget/ScrollView;->mSemGoToTopFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    iget v1, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iput v1, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private semShowGoToTop()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_0
    return-void
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    goto :goto_0

    :cond_0
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->doScrollY(I)V

    iget-boolean v5, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_2
    move v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/16 v7, 0x82

    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    if-ge v5, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    goto :goto_0

    :cond_3
    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    sub-int v9, v5, v8

    if-ge v9, v2, :cond_4

    sub-int v4, v5, v8

    :cond_4
    :goto_0
    if-nez v4, :cond_5

    return v6

    :cond_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    if-ne p1, v7, :cond_6

    move v5, v4

    goto :goto_1

    :cond_6
    neg-int v5, v4

    :goto_1
    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x20000

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    :cond_7
    return v3
.end method

.method public computeScroll()V
    .locals 19

    move-object/from16 v10, p0

    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v11, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v12, v10, Landroid/widget/ScrollView;->mScrollY:I

    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    if-ne v11, v13, :cond_0

    if-eq v12, v14, :cond_4

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v9

    const/4 v0, 0x1

    if-eqz v9, :cond_2

    if-ne v9, v0, :cond_1

    if-lez v15, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    :goto_0
    move/from16 v16, v0

    sub-int v1, v13, v11

    sub-int v2, v14, v12

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v10, Landroid/widget/ScrollView;->mOverflingDistance:I

    const/16 v17, 0x0

    move-object v0, v10

    move v3, v11

    move v4, v12

    move v6, v15

    move/from16 v18, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    iget v0, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, v10, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {v10, v0, v1, v11, v12}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eqz v16, :cond_4

    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    if-gez v14, :cond_3

    if-ltz v12, :cond_3

    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_3
    if-le v14, v15, :cond_4

    if-gt v12, v15, :cond_4

    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_5
    goto :goto_2

    :cond_6
    iget-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_7

    iget-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_7
    :goto_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    :cond_2
    const/4 v5, 0x0

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-le v6, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v6, v0, :cond_3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_0

    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v6, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_2

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, v0, :cond_5

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v1

    sub-int/2addr v5, v1

    goto :goto_1

    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v5, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_6
    :goto_2
    return v5
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gez v4, :cond_1

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    if-le v4, v2, :cond_2

    sub-int v5, v4, v2

    add-int/2addr v3, v5

    :cond_2
    :goto_0
    return v3
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x9

    if-eq v2, v6, :cond_0

    iget-boolean v6, v0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    if-eqz v6, :cond_5

    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    iput-boolean v5, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-nez v7, :cond_2

    :cond_1
    iput-boolean v4, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    :cond_2
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_4

    if-ne v6, v3, :cond_4

    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_hovering"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v7, v5

    goto :goto_0

    :cond_3
    move v7, v4

    :goto_0
    if-nez v7, :cond_4

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    :cond_4
    iget-boolean v7, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    :cond_5
    iget-boolean v6, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v6, :cond_6

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v11, :cond_7

    new-instance v11, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v11, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    :cond_7
    iget v11, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v11, :cond_8

    iget v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v11, :cond_9

    :cond_8
    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    const/high16 v12, 0x41c80000    # 25.0f

    invoke-static {v5, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    iget-object v11, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v5, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    add-float/2addr v11, v13

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    :cond_a
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v3, :cond_b

    move v11, v5

    goto :goto_1

    :cond_b
    move v11, v4

    :goto_1
    iget v12, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/16 v13, 0x4e21

    if-le v7, v12, :cond_c

    iget v12, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v12, v9, v12

    if-lt v7, v12, :cond_1c

    :cond_c
    if-lez v6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v12

    if-gt v6, v12, :cond_1c

    if-eqz v10, :cond_1c

    if-ltz v7, :cond_d

    iget v12, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v12, :cond_d

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v12, :cond_d

    iget-boolean v12, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1c

    :cond_d
    iget v12, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v12, v9, v12

    if-lt v7, v12, :cond_e

    if-gt v7, v9, :cond_e

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v12, v10, :cond_e

    iget-boolean v12, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v12, :cond_1c

    :cond_e
    if-eqz v11, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    const/16 v3, 0x20

    if-eq v12, v3, :cond_1c

    :cond_f
    if-eqz v11, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v3, :cond_10

    iget v3, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v3, :cond_10

    iget-object v3, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_3

    :cond_10
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v3, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_11
    const/4 v3, 0x7

    const/16 v12, 0x4e2f

    const/16 v14, 0x4e2b

    if-eq v2, v3, :cond_14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_12
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v12, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :pswitch_1
    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-ltz v7, :cond_13

    iget v3, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v3, :cond_13

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    invoke-direct {v0, v1, v14}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/4 v3, 0x2

    iput v3, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_13
    iget v3, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v3, v9, v3

    if-lt v7, v3, :cond_1b

    if-gt v7, v9, :cond_1b

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    invoke-direct {v0, v1, v12}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput v5, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_14
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v3, :cond_15

    iput-boolean v5, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_15
    if-ltz v7, :cond_18

    iget v3, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v3, :cond_18

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v3, :cond_16

    iget v3, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    if-ne v3, v5, :cond_17

    :cond_16
    invoke-direct {v0, v1, v14}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_17
    const/4 v3, 0x2

    iput v3, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_18
    iget v3, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v3, v9, v3

    if-lt v7, v3, :cond_1b

    if-gt v7, v9, :cond_1b

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v3, :cond_19

    iget v3, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    :cond_19
    invoke-direct {v0, v1, v12}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_1a
    iput v5, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_1b
    :goto_2
    return v5

    :cond_1c
    :goto_3
    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_1d
    iget v3, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v3, :cond_1e

    iget v3, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v3, v9, v3

    if-lt v7, v3, :cond_1f

    :cond_1e
    if-lez v6, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v3

    if-le v6, v3, :cond_20

    :cond_1f
    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    :cond_20
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v3, :cond_21

    iget-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-eqz v3, :cond_22

    goto :goto_4

    :cond_21
    const-wide/16 v4, 0x0

    :goto_4
    invoke-direct {v0, v1, v13}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_22
    iput-wide v4, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v4, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v6

    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v7, :cond_0

    new-instance v7, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    :cond_0
    iget v7, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const/4 v8, 0x1

    if-lez v7, :cond_1

    iget v7, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v7, :cond_2

    :cond_1
    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v9, 0x41c80000    # 25.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    iget-object v7, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    add-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    :cond_3
    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    move v10, v8

    goto :goto_0

    :cond_4
    move v10, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/high16 v15, 0x43fa0000    # 500.0f

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v16

    if-eqz v16, :cond_5

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v13, :cond_5

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    goto/16 :goto_3

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_b

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_b

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_6

    iput v8, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v11, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_6
    return v8

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_a

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v11

    if-eqz v11, :cond_9

    new-instance v11, Landroid/widget/ScrollView$1;

    invoke-direct {v11, v0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    iget-object v11, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v11, :cond_8

    iget-object v11, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v11, v0, Landroid/widget/ScrollView;->mIsDeviceDefault:Z

    if-eqz v11, :cond_7

    iget-object v11, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v15, v13

    int-to-float v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/16 v14, 0x96

    invoke-virtual {v11, v15, v13, v14}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    goto :goto_1

    :cond_7
    iget-object v11, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v15, v13

    int-to-float v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-virtual {v11, v15, v13}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    const/16 v13, 0x1f4

    invoke-virtual {v0, v7, v7, v11, v13}, Landroid/widget/ScrollView;->invalidate(IIII)V

    goto :goto_2

    :cond_8
    const-string v11, "ScrollView"

    const-string v13, " There is no mEdgeGlowTop"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    iput v8, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->semAutoHide()V

    iget-object v11, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    return v8

    :cond_a
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    goto :goto_3

    :pswitch_3
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_b

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v13, v11, :cond_b

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-direct {v0, v11}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    iput-boolean v8, v0, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v11, v1

    int-to-float v13, v2

    invoke-virtual {v7, v11, v13}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v8

    :cond_b
    :goto_3
    iget v13, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    const-wide/16 v7, 0x0

    if-le v2, v13, :cond_c

    iget v13, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v13, v4, v13

    if-lt v2, v13, :cond_1b

    :cond_c
    if-lez v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v13

    if-gt v1, v13, :cond_1b

    if-eqz v5, :cond_1b

    if-eqz v10, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_d

    goto/16 :goto_9

    :cond_d
    iget-boolean v13, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    :cond_e
    packed-switch v12, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_f

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_f

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_f

    const/4 v7, 0x1

    iput v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    iget-object v8, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v11, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v7

    :cond_f
    if-eqz v6, :cond_15

    if-ltz v2, :cond_11

    iget v13, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v2, v13, :cond_11

    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v7, :cond_10

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    goto :goto_4

    :cond_10
    const/4 v7, 0x1

    :goto_4
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput v11, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_11
    iget v11, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v11, v4, v11

    if-lt v2, v11, :cond_13

    if-gt v2, v4, :cond_13

    iget-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v7, :cond_12

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    goto :goto_5

    :cond_12
    const/4 v7, 0x1

    :goto_5
    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput v7, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_13
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v8, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_14
    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_6

    :cond_15
    const/4 v11, 0x1

    iget-boolean v7, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v7, :cond_16

    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v7, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v7, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_16
    :goto_6
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    goto/16 :goto_8

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v13

    if-eqz v13, :cond_18

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-ne v13, v11, :cond_18

    const-string v7, "ScrollView"

    const-string/jumbo v8, "pen up false GOTOTOP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v7, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v15, v8

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-virtual {v7, v15, v8}, Landroid/widget/EdgeEffect;->onPull(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/16 v11, 0x1f4

    invoke-virtual {v0, v8, v8, v7, v11}, Landroid/widget/ScrollView;->invalidate(IIII)V

    goto :goto_7

    :cond_17
    const/4 v8, 0x0

    :goto_7
    invoke-direct {v0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v11, 0x1

    return v11

    :cond_18
    const/4 v11, 0x1

    iget-object v13, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v13, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_19

    iget-object v13, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v13, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_19
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget v7, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v7, v11, :cond_1a

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-direct {v0, v11}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v8, v1

    int-to-float v11, v2

    invoke-virtual {v7, v8, v11}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v7, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v7, 0x1

    return v7

    :cond_1a
    :goto_8
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    :cond_1b
    :goto_9
    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    iget-object v11, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-virtual {v11, v13}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_1c
    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    iput-wide v7, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    iput-boolean v7, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v1

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v7, v7

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move v7, v3

    :goto_0
    const/4 v8, 0x0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v7, v7

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move v7, v3

    :goto_1
    neg-int v8, v4

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    add-float/2addr v9, v7

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v8, 0x43340000    # 180.0f

    int-to-float v9, v4

    invoke-virtual {p1, v8, v9, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawGoToTop(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3e

    const/16 v4, 0x21

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_8

    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_8

    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v4

    nop

    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    :cond_8
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(I)V
    .locals 14

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v7, v2, v0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    move v7, p1

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_0

    const-string v1, "ScrollView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    nop

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    nop

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_0
    goto :goto_1

    :cond_1
    const/high16 v1, 0x400000

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    iget v3, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    neg-int v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0, v4, v4}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v6, v4, v3

    if-gez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    if-le v6, v0, :cond_4

    move v6, v0

    :cond_4
    :goto_2
    const/4 v7, 0x1

    if-eq v6, v4, :cond_5

    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v2, v6}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return v7

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v8

    if-eqz v8, :cond_7

    if-ne v8, v7, :cond_6

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    move v7, v5

    nop

    :cond_7
    :goto_3
    if-eqz v7, :cond_d

    cmpl-float v9, v1, v2

    const/high16 v10, 0x3f000000    # 0.5f

    const v11, 0x3ecccccd    # 0.4f

    if-lez v9, :cond_9

    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v9, :cond_9

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    invoke-virtual {v2, v9, v12}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsDeviceDefault:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v11, v10, v5}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v11}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_4
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    :cond_9
    cmpg-float v2, v1, v2

    if-gez v2, :cond_b

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollDown()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    invoke-virtual {v2, v9, v12}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsDeviceDefault:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v11, v10, v5}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    goto :goto_5

    :cond_a
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v11}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_b
    :goto_6
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_d
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    return v4

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_2

    return v6

    :cond_2
    and-int/lit16 v5, v2, 0xff

    const/4 v7, 0x6

    if-eq v5, v7, :cond_a

    const/4 v7, -0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v5, v7, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    if-ne v8, v7, :cond_4

    const-string v3, "ScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in onInterceptTouchEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iget v9, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v9, v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v10

    and-int/2addr v3, v10

    if-nez v3, :cond_b

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput v7, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v6, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_5

    const-string v3, "ScrollView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    goto :goto_0

    :pswitch_1
    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput v7, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    iget-object v10, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v11, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v12, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v7, v5}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v7

    if-nez v7, :cond_8

    iput-boolean v6, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_0

    :cond_8
    iput v5, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    iget-object v6, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v6, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v6, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iget-boolean v4, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v4, :cond_9

    const-string v4, "ScrollView-scroll"

    invoke-static {v4}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto :goto_0

    :cond_a
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_0
    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v1, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v2, v2, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput-object v1, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    sub-int v2, p5, p3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v2, :cond_3

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_4

    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    const-string v0, "ScrollView"

    const-string v1, " onsize change changed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->semAutoHide()V

    :cond_5
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v7, v6, :cond_3

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v4, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    :cond_3
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    if-nez p4, :cond_0

    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v0

    sub-int v8, p5, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v1

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 11

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, p2, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eqz p4, :cond_1

    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView$SavedState;

    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    const/4 v0, 0x0

    if-nez v13, :cond_0

    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    :cond_0
    iget v1, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, -0x1

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    if-eq v0, v1, :cond_2

    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_8

    :cond_2
    :goto_0
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_8

    :pswitch_3
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v2, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v3, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v4, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_3
    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_8

    :pswitch_4
    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    if-ne v9, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in onTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v8, v1

    iget v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int/2addr v1, v8

    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    aget v2, v2, v15

    sub-int/2addr v1, v2

    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v15

    int-to-float v2, v2

    invoke-virtual {v12, v14, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v3, v3, v15

    add-int/2addr v2, v3

    iput v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    :cond_5
    iget-boolean v2, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iput-boolean v15, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-lez v1, :cond_7

    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_7
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v1, v3

    :cond_8
    :goto_1
    move v7, v1

    iget-boolean v1, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_19

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    sub-int v1, v8, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    iget v6, v10, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v4

    if-eqz v4, :cond_a

    if-ne v4, v15, :cond_9

    if-lez v5, :cond_9

    goto :goto_2

    :cond_9
    goto :goto_3

    :cond_a
    :goto_2
    move v0, v15

    :goto_3
    move/from16 v16, v0

    iget-boolean v0, v10, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    if-nez v0, :cond_b

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v2, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v0, v10, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/16 v19, 0x1

    move/from16 v20, v0

    move-object v0, v10

    move/from16 v21, v2

    move v2, v7

    move/from16 v22, v4

    move/from16 v4, v21

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v23

    move v14, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v20

    move/from16 v24, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    :cond_b
    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v17, v6

    move v14, v7

    move/from16 v18, v8

    move/from16 v24, v9

    :cond_c
    :goto_4
    iget v0, v10, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v6, v0, v17

    sub-int v7, v14, v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object v0, v10

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v0, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    move/from16 v3, v24

    goto/16 :goto_6

    :cond_d
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mSemGoToTopPressed:Z

    if-nez v0, :cond_12

    if-eqz v16, :cond_12

    add-int v0, v17, v14

    if-gez v0, :cond_f

    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move/from16 v3, v24

    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_e
    move/from16 v1, v23

    goto :goto_5

    :cond_f
    move/from16 v3, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_10

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v11, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_10
    :goto_5
    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_13

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    :cond_12
    move/from16 v3, v24

    :cond_13
    :goto_6
    goto/16 :goto_8

    :pswitch_5
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_19

    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, v10, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v10, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_14

    neg-int v3, v2

    invoke-direct {v10, v3}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_7

    :cond_14
    iget-object v3, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, v10, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, v10, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v22

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_15
    :goto_7
    iput v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto :goto_8

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_16

    return v0

    :cond_16
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v15

    iput-boolean v1, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_17
    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_18

    iget-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v1, 0x0

    iput-object v1, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    nop

    :cond_19
    :goto_8
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1a

    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1a
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public pageScroll(I)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x7

    if-eqz p2, :cond_2

    const-string v3, "auto_scroll_speed_level_count"

    const/16 v4, 0xf

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    const/high16 v4, 0x41840000    # 16.5f

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    const-string v4, "auto_scroll_speed_level"

    const/16 v5, 0x8

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :cond_2
    const v3, 0x4188cccd    # 17.1f

    sparse-switch p1, :sswitch_data_0

    return v2

    :sswitch_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    :cond_3
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    return v1

    :cond_4
    return v2

    :sswitch_1
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const v3, 0x3f19999a    # 0.6f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v3, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    :cond_5
    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    return v1

    :cond_6
    return v2

    :sswitch_2
    const-string v3, "ScrollView"

    const-string v4, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2, v2, v2}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    return v1

    :cond_7
    return v2

    :sswitch_3
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v2, 0xfa0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->fling(I)V

    return v1

    :cond_8
    return v2

    :sswitch_4
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v2, -0xfa0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->fling(I)V

    return v1

    :cond_9
    return v2

    :sswitch_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_a
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLinear:Z

    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_b
    return v1

    :cond_c
    return v2

    :sswitch_6
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_d

    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    int-to-float v4, v0

    mul-float/2addr v2, v4

    sub-float/2addr v3, v2

    iput v3, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v2, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    return v1

    :cond_d
    return v2

    :sswitch_7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v4, v5, :cond_e

    invoke-virtual {p0, v2, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return v1

    :cond_e
    return v2

    :sswitch_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v4, v3

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v4, v5, :cond_f

    invoke-virtual {p0, v2, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return v1

    :cond_f
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_7
        0x400000 -> :sswitch_6
        0x800000 -> :sswitch_5
        0x1000000 -> :sswitch_4
        0x1020038 -> :sswitch_7
        0x102003a -> :sswitch_8
        0x2000000 -> :sswitch_3
        0x4000000 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->semShowGoToTop()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method semAutoHide()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public semSetGoToTopEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(ZI)V

    return-void
.end method

.method public semSetGoToTopEnabled(ZI)V
    .locals 9

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopLightImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10808db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/4 v7, 0x0

    const v8, 0x3ea8f5c3    # 0.33f

    invoke-direct {v4, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/widget/ScrollView$5;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$6;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$6;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$7;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$7;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public semSetHoverScrollMode(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public semSetSmoothScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    return-void
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v5, v4, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int v7, v6, p2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int p2, v7, v6

    iget-object v7, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v7, v8, v6, v3, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 15

    move-object v0, p0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xfa

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v5, v0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v5

    iget v5, v0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v7, v6, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    add-int v9, v14, p2

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v5, v14

    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v9, v0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz v9, :cond_1

    sget-object v4, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    nop

    :cond_1
    invoke-virtual {v8, v4}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v8, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v9, v0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v11, 0x0

    move v10, v14

    move v12, v5

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v4, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    invoke-virtual/range {p0 .. p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    move/from16 v5, p2

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/ScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 2

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
