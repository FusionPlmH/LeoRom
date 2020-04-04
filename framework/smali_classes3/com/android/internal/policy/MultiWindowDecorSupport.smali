.class public Lcom/android/internal/policy/MultiWindowDecorSupport;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;,
        Lcom/android/internal/policy/MultiWindowDecorSupport$FrameColors;
    }
.end annotation


# static fields
.field private static final CAPTION_SHOW_DURATION:I = 0x8ca

.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DURATION_HEADER_APPEARING_IN_IMMERSIVE:I = 0x1f4

.field private static final HEIGHT_TO_SHOW_HEADER_IN_IMMERSIVE_FOR_HOVER:F = 1.0f

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MultiWindowDecorSupport"

.field private static final sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final RESIZE_HANDLE_MOUSE_WIDTH_IN_DP:I

.field private mAnimShowingHeaderInImmersive:Landroid/view/animation/TranslateAnimation;

.field private mCanBeMaximized:Z

.field private mCheckEdgeFirst:Z

.field private mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mEdgeFlag:I

.field private mFramePaintInside:Landroid/graphics/Paint;

.field private mFramePaintOutside:Landroid/graphics/Paint;

.field private mFrameThicknessDefault:F

.field private mFrameThicknessDex:F

.field private mFrameThicknessInside:F

.field private mFrameThicknessOutside:F

.field private mFrameThicknessSideScreen:F

.field private mFreeformBorderRadius:I

.field private mHeightToCheckInImmersiveMode:F

.field private final mHideCaptionRunnable:Ljava/lang/Runnable;

.field private final mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

.field private mIsEnteredToShowingCaptionAreaInImmersive:Z

.field private mIsFixedOreintation:Z

.field private mIsHeaderClicked:Z

.field private mIsInMultiWindow:Z

.field private mIsMovingTask:Z

.field private mLastWindowSystemUiVisibility:I

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mOutsideStrokeOffset:F

.field private mOutsideStrokeRadius:F

.field private mRequestTransientBarDelay:I

.field private mResizeMode:I

.field private final mShowCaptionRunnable:Ljava/lang/Runnable;

.field private final mShowDecorCaptionWindowRunnable:Ljava/lang/Runnable;

.field private mSwipeThreshold:I

.field private mTempShowingFullscreenFreeformWindowCaption:Z

.field private mTmpRegion:Landroid/graphics/Region;

.field private mUseFreeformBorder:Z

.field private mWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/policy/MultiWindowDecorSupport;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->RESIZE_HANDLE_MOUSE_WIDTH_IN_DP:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessOutside:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessDex:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintOutside:Landroid/graphics/Paint;

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mResizeMode:I

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsFixedOreintation:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCanBeMaximized:Z

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsEnteredToShowingCaptionAreaInImmersive:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$1;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowCaptionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$2;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$3;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$4;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->initDecorViewResources()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mLastWindowSystemUiVisibility:I

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3e100000    # -30.0f

    invoke-direct {v0, v1, v1, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mAnimShowingHeaderInImmersive:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mAnimShowingHeaderInImmersive:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mAnimShowingHeaderInImmersive:Landroid/view/animation/TranslateAnimation;

    sget-object v1, Lcom/android/internal/policy/MultiWindowDecorSupport;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/MultiWindowDecorSupport;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/PhoneWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/MultiWindowDecorSupport;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/MultiWindowDecorSupport;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/MultiWindowDecorSupport;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/MultiWindowDecorSupport;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mAnimShowingHeaderInImmersive:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/android/internal/policy/MultiWindowDecorSupport;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/MultiWindowDecorSupport;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    return-object v0
.end method

.method private checkEdgeFlags(IILandroid/view/MotionEvent;)I
    .locals 4

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dipToPx(F)F

    move-result v2

    float-to-int v1, v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    if-le p2, v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    if-ge p1, v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    if-le p1, v2, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isInResizableArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->changeBorderColor(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v4, 0x10000000

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isOutOfInnerBoundsByEdgeFlag(III)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    iget-object v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-eq v7, v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    nop

    :cond_4
    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v2, v6, v7, v8, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V

    :cond_5
    goto :goto_1

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    iput v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    goto :goto_1

    :pswitch_2
    iput-boolean v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    invoke-direct {p0, v0, v4, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->checkEdgeFlags(IILandroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    nop

    :cond_6
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private detectSwipeFromTop(JFF)Z
    .locals 6

    iget v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDownX:F

    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDownY:F

    iget-wide v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDownTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mSwipeThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mSwipeThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, p4, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private detectSwipeFromTop(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/policy/MultiWindowDecorSupport;->detectSwipeFromTop(JFF)Z

    move-result v8

    if-eqz v8, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/internal/policy/MultiWindowDecorSupport;->detectSwipeFromTop(JFF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private dipToPx(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private hasDecorCaptionView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasWindowDecor()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    return v0
.end method

.method private hideDecorCaption(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    if-eqz v0, :cond_2

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasDecorCaptionWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    :goto_0
    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private isDecorCaptionWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFullscreenDexCompatMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFullscreenInImmersiveMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullscreenDexCompatMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveDecorCaptionWindow(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isImmersiveDecorCaptionWindow(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveMode(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private isInResizableArea(Landroid/view/MotionEvent;)Z
    .locals 12

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    neg-int v2, v0

    neg-int v3, v0

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v9

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isOutOfInnerBoundsByEdgeFlag(III)Z
    .locals 3

    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    if-gez p2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    :cond_3
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_6

    move v1, v2

    nop

    :cond_6
    return v1

    :cond_7
    return v1
.end method

.method static synthetic lambda$initDecorViewResources$0(Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private showDecorCaption()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsEnteredToShowingCaptionAreaInImmersive:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MultiWindowDecorSupport"

    const-string/jumbo v1, "showDecorCaption >> Post mShowDecorCaptionWindowRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MultiWindowDecorSupport"

    const-string/jumbo v1, "showDecorCaption >> Post mShowCaptionRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowCaptionRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsEnteredToShowingCaptionAreaInImmersive:Z

    :cond_2
    return-void
.end method

.method private updateDecorCaptionWindowVisibility()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullscreenDexCompatMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v2

    or-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveDecorCaptionWindow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFreeformFramePaint()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsHeaderClicked:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessDex:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessDex:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsHeaderClicked:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    const v4, -0x69696a

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    const v4, -0x50506

    goto :goto_2

    :cond_5
    const v4, -0x111112

    :goto_2
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    const v3, -0x33c44015    # -4.9217452E7f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    return-void
.end method

.method private updateFullScreenFreeformWindowCaptionVisibility(IZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    nop

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;->updateFullScreenFreeformWindowCaptionVisibility(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addDecorCaptionWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->removeDecorCaptionWindow()V

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$1100(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateDecorCaptionWindowVisibility()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->removeDecorCaptionWindow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public canMaximize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCanBeMaximized:Z

    return v0
.end method

.method public canUseFreeformBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    return v0
.end method

.method public changeBorderColor(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsHeaderClicked:Z

    const-string/jumbo v0, "user clicked header"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullscreenInImmersiveMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    const/16 v7, 0x2002

    if-ne v6, v7, :cond_4

    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v0

    :goto_3
    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x7

    const/16 v9, 0x8ca

    if-eq v7, v8, :cond_8

    packed-switch v7, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v4, :cond_6

    const-string v4, "MultiWindowDecorSupport"

    const-string v7, "dispatchHoverEvent >> ACTION_HOVER_EXIT"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v2, :cond_7

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsEnteredToShowingCaptionAreaInImmersive:Z

    invoke-direct {p0, v9}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hideDecorCaption(I)V

    goto :goto_7

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hideDecorCaption(I)V

    goto :goto_7

    :cond_8
    :pswitch_1
    if-eqz v2, :cond_9

    iget v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mSwipeThreshold:I

    mul-int/2addr v7, v4

    int-to-float v4, v7

    move v7, v4

    :goto_5
    goto :goto_6

    :cond_9
    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHeightToCheckInImmersiveMode:F

    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    iget v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHeightToCheckInImmersiveMode:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    goto :goto_5

    :cond_a
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpg-float v10, v8, v4

    if-gez v10, :cond_c

    cmpg-float v9, v8, v7

    if-gtz v9, :cond_b

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->showDecorCaption()V

    goto :goto_7

    :cond_b
    const-string v9, "MultiWindowDecorSupport"

    const-string v10, "dispatchHoverEvent >> Cancel showing caption"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsEnteredToShowingCaptionAreaInImmersive:Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v9, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowCaptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v9, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_c
    invoke-direct {p0, v9}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hideDecorCaption(I)V

    nop

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$800(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$800(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$800(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->dispatchRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v0, v2

    nop

    :cond_1
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullscreenInImmersiveMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->detectSwipeFromTop(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dispatchHoverEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDownTime:J

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    if-eqz v2, :cond_5

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dispatchHoverEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 5

    iget v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mLastWindowSystemUiVisibility:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mLastWindowSystemUiVisibility:I

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullscreenDexCompatMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveDecorCaptionWindow(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasDecorCaptionView()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    iget-object v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveMode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_7

    invoke-direct {p0, v2, v0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v2, v0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    invoke-direct {p0, v1, v2, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    :cond_7
    :goto_1
    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasDecorCaptionView()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasWindowDecor()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    :goto_2
    move v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullscreenDexCompatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveDecorCaptionWindow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    :cond_0
    return-void
.end method

.method drawFreeformFrameIfNeeded(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessDex:F

    div-float/2addr v3, v4

    :goto_0
    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    div-float/2addr v3, v4

    goto :goto_0

    :goto_1
    neg-float v5, v3

    neg-float v6, v3

    int-to-float v2, v0

    add-float v7, v2, v3

    int-to-float v2, v1

    add-float v8, v2, v3

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    int-to-float v9, v2

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    int-to-float v10, v2

    iget-object v11, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_4

    neg-float v2, v3

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    sub-float v6, v2, v4

    neg-float v2, v3

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    sub-float v7, v2, v4

    int-to-float v2, v0

    add-float/2addr v2, v3

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    add-float v8, v2, v4

    int-to-float v2, v1

    add-float/2addr v2, v3

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    add-float v9, v2, v4

    iget v10, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeRadius:F

    iget v11, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeRadius:F

    iget-object v12, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintOutside:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method drawSideScreenFrame(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessSideScreen:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessSideScreen:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v4, v2

    neg-float v5, v2

    int-to-float v3, v0

    add-float v6, v3, v2

    int-to-float v3, v1

    add-float v7, v3, v2

    iget v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    int-to-float v8, v3

    iget v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    int-to-float v9, v3

    iget-object v10, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getActivityContextIfPossible()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasDecorCaptionWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$900(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEdgeFlag()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initDecorViewResources()V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x105017a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mSwipeThreshold:I

    const v2, 0x1050177

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessDefault:F

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessDefault:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    mul-float/2addr v2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    nop

    :cond_0
    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessDex:F

    const v2, 0x105035e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessSideScreen:F

    sget-object v2, Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;->INSTANCE:Lcom/android/internal/policy/-$$Lambda$MultiWindowDecorSupport$DlCzd3Id3EVNIfnrypBNtF4MLyM;

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintInside:Landroid/graphics/Paint;

    invoke-interface {v2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintOutside:Landroid/graphics/Paint;

    invoke-interface {v2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintOutside:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessOutside:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFramePaintOutside:Landroid/graphics/Paint;

    const/high16 v5, 0xd000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const-wide v4, -0x413f39085f4a1273L    # -2.0E-6

    iget v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3f547ae147ae147bL    # 0.00125

    iget v8, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3f33a92a30553261L    # 3.0E-4

    iget v8, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fdac3c9eecbfb16L    # 0.4182

    iget v8, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4029c51eb851eb85L    # 12.885

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeRadius:F

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameThicknessInside:F

    div-float/2addr v4, v3

    iput v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    iget-object v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.samsung.android.sdk.multiwindow.freeform.border"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    iget v5, v4, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    if-ltz v5, :cond_1

    iget v5, v4, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    iput v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    :cond_1
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v4, :cond_2

    const-string v4, "MultiWindowDecorSupport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDecorViewResources() : mRequestTransientBarDelay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x105017c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    goto :goto_0

    :cond_3
    const v4, 0x105017d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    :goto_0
    const v4, 0x10500e1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHeightToCheckInImmersiveMode:F

    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method public isFreeform()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullWindow()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isImmersiveMode(I)Z
    .locals 1

    and-int/lit16 v0, p1, 0x1800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMultiWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    return v0
.end method

.method public isPreserveOrientationMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsFixedOreintation:Z

    return v0
.end method

.method public isTransientShowingDecorCaption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    return v0
.end method

.method public keepShowingCaption()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyMovingTask(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start movingTask"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "stop movingTask"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    :cond_1
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->notifyMovingTask(Z)V

    return-void

    :cond_0
    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->initDecorViewResources()V

    const-string v0, "config_changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->changeBorderColor(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$800(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$800(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateDecorCaptionWindowVisibility()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$800(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->onMultiWindowModeChanged(Z)V

    :cond_1
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonFocus(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$900(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->access$900(Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    :cond_1
    :goto_0
    const-string v0, "focus_changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    return-void
.end method

.method public removeDecorCaptionWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->removeWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    return-void
.end method

.method requestInvalidateRenderNode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    :cond_1
    return-void
.end method

.method public resetDecorViewStateIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "reset"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->clearMaximizeRequested(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mResizeMode:I

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    return-void
.end method

.method public updateDexInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-direct {v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getDexTaskInfo(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;->isInMultiWindowMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;->isResizableToFullscreen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCanBeMaximized:Z

    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;->isFixedOreintation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsFixedOreintation:Z

    :cond_0
    return-void
.end method
