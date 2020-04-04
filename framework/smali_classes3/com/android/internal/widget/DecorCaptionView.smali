.class public Lcom/android/internal/widget/DecorCaptionView;
.super Landroid/view/ViewGroup;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;,
        Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;,
        Lcom/android/internal/widget/DecorCaptionView$CaptionState;
    }
.end annotation


# static fields
.field private static final CHANGE_BORDER_COLOR_TIME:I = 0x64

.field private static final CLICK_TARGET_INSET_IN_DIP:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DRAG_SLOP_IN_DIP:I = 0x8

.field private static final FADE_DURATION:I = 0x96

.field private static final FREEFORM_MIN_OPACITY:F = 0.4f

.field private static final OPACITY_INITIAL_PROGRESS:I = 0x3c

.field private static final SAFE_DEBUG:Z

.field private static final SHOW_SEEK_BAR_DURAITON:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "DecorCaptionView"

.field private static final sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final adjustRect:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBack:Landroid/view/View;

.field private final mBackRect:Landroid/graphics/Rect;

.field private final mButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private mCanMaximizeVisibilityOnDeX:Z

.field private mCaption:Landroid/view/View;

.field private mCaptionBackground:Landroid/graphics/drawable/Drawable;

.field private mCaptionContainer:Landroid/view/View;

.field private mCaptionEndContainer:Landroid/view/View;

.field private final mChangeStrokeColorRunnable:Ljava/lang/Runnable;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClickTargetInset:I

.field private mClickTargetRect:Landroid/graphics/Rect;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mCurrentProgress:I

.field private mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

.field private mDexCompatDialog:Landroid/app/AlertDialog;

.field private final mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

.field private mDragSlop:I

.field private mDragging:Z

.field private mForceLayoutRequested:Z

.field private mFrameThickness:F

.field private mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private final mHideTootipRunnable:Ljava/lang/Runnable;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDecorCaptionWindow:Z

.field private mIsFixedOrientation:Z

.field private mIsFreeformOpacityChangable:Z

.field private mIsLongPressed:Z

.field private mLastMeasuredWithCaptionHeight:Z

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mMaximizeRequested:Z

.field private mMinimize:Landroid/view/View;

.field private final mMinimizeRect:Landroid/graphics/Rect;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private final mOutlineRect:Landroid/graphics/Rect;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mReduce:Landroid/view/View;

.field private final mReduceRect:Landroid/graphics/Rect;

.field private mRotate:Landroid/view/View;

.field private final mRotateRect:Landroid/graphics/Rect;

.field private mSeekBarContainer:Landroid/view/View;

.field private mShow:Z

.field private mTooltipAnchor:Landroid/view/View;

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTrans:Landroid/view/View;

.field private final mTransRect:Landroid/graphics/Rect;

.field private final mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

.field private mVisibilityAnim:Landroid/animation/AnimatorSet;

.field private final setHoverListenerAndToolTip:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/DecorCaptionView;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$1;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFreeformOpacityChangable:Z

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$4;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$5;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$6;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$_BHF8fpuUBA-4NulkI2hHbFVQ9Y;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$_BHF8fpuUBA-4NulkI2hHbFVQ9Y;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$BFhDnGv4LPG4I-7ecJRMwmk5qyk;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$BFhDnGv4LPG4I-7ecJRMwmk5qyk;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$1;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFreeformOpacityChangable:Z

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$4;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$5;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$6;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$_BHF8fpuUBA-4NulkI2hHbFVQ9Y;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$_BHF8fpuUBA-4NulkI2hHbFVQ9Y;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$BFhDnGv4LPG4I-7ecJRMwmk5qyk;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$BFhDnGv4LPG4I-7ecJRMwmk5qyk;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$1;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFreeformOpacityChangable:Z

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$4;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$5;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/DecorCaptionView$6;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$_BHF8fpuUBA-4NulkI2hHbFVQ9Y;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$_BHF8fpuUBA-4NulkI2hHbFVQ9Y;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$BFhDnGv4LPG4I-7ecJRMwmk5qyk;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$BFhDnGv4LPG4I-7ecJRMwmk5qyk;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/DecorCaptionView;Landroid/view/View;Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;->drawRippleEffect(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/DecorCaptionView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->showRippleEffect(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/DecorCaptionView;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/widget/DecorCaptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/DecorCaptionView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFreeformOpacityChangable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/DecorCaptionView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isEnabledLabsResizableWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->maximizeWindow()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/DecorCaptionView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/DecorCaptionView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/widget/DecorCaptionView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/DecorCaptionView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->setFreeformOpacityChangable(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/DecorCaptionView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mFrameThickness:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method private adjustButtonRect(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    :cond_0
    return-void
.end method

.method private static dipToPx(FLandroid/content/res/Resources;)F
    .locals 2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private drawRippleEffect(Landroid/view/View;Landroid/view/MotionEvent;Z)V
    .locals 7

    if-nez p1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/widget/DecorCaptionView;->showRippleEffect(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionContainer:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-eq p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    add-int v4, v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int v6, v5, v0

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/drawable/RippleDrawable;->setBounds(IIII)V

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->drawableHotspotChanged(FF)V

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    :goto_1
    return-void
.end method

.method private getFreeformAlpha()F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v1

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "com.sec.android.desktopmode.uiservice.SettingsProvider"

    const-string v1, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getSettings"

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "def"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "getSettings"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v4, v5, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "DecorCaptionView"

    const-string v6, "Failed to get settings"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p2
.end method

.method private hideAllButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideSoftInputIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DecorCaptionView"

    const-string v1, "hideSoftInputIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private isDesktopMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method private isEnabledLabsResizableWindow()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "DecorCaptionView"

    const-string v3, "isEnabledLabsResizableWindow: failed, activityContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v2, "labs_resizable_window_enabled"

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "labs_resizable_window_enabled"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/internal/widget/DecorCaptionView;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isFillingScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isRotateButtonVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isPreserveOrientationMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/internal/widget/DecorCaptionView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/internal/widget/DecorCaptionView;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonRect(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$notifyBackButtonPressed$2()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private maximizeWindow()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    if-eqz v0, :cond_0

    const-string v0, "DecorCaptionView"

    const-string/jumbo v1, "maximizeWindow: failed, maximize was already requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->showResizeDialogForCompatMode(Landroid/view/Window$WindowControllerCallback;)V

    goto :goto_0

    :cond_1
    const-string v1, "DecorCaptionView"

    const-string/jumbo v2, "maximizeWindow: success, call exitFreeformMode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setEnabledButtonTooltip(Z)V

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->exitFreeformMode()V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->terminateGhostMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "DecorCaptionView"

    const-string v3, "Cannot change task workspace."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v1, "DecorCaptionView"

    const-string/jumbo v2, "maximizeWindow: failed, callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private minimizeWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setEnabledButtonTooltip(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    :cond_0
    return-void
.end method

.method private notifyBackButtonPressed()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$QRj6gC-_iZwGLw1VSW1YIdHQE2Y;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$DecorCaptionView$QRj6gC-_iZwGLw1VSW1YIdHQE2Y;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private operateButtonIfNeeded(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_0

    const-string v0, "DecorCaptionView"

    const-string/jumbo v1, "mClickTarget is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    if-eqz v0, :cond_2

    const-string v0, "DecorCaptionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mClickTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsLongPressed, Skip button-interaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DecorCaptionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mClickTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", position is out of target bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->performButtonActionInternal(Landroid/view/View;)V

    return-void
.end method

.method private passedSlop(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-gt v0, v3, :cond_4

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-le v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    nop

    :cond_4
    :goto_1
    return v1
.end method

.method private performButtonActionInternal(Landroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->hideSoftInputIfNeeded()V

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->minimizeWindow()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    if-ne p1, v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/internal/widget/DecorCaptionView;->setFreeformOpacityChangable(Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->notifyBackButtonPressed()V

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    if-ne p1, v1, :cond_6

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->rotateWindow()V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->maximizeWindow()V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isFullScreenFreeform()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "DMBY"

    const-string v4, "DMPA"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "MaximizedByButton"

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    nop

    :cond_6
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    return-void
.end method

.method private rotateWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-direct {v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->rotateCompatTask(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private setEnabledButtonTooltip(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const v2, 0x104090e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    const v2, 0x104090f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    const v2, 0x1040910

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setFreeformAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setFreeformAlpha(Landroid/os/IBinder;F)V

    :cond_0
    return-void
.end method

.method private setFreeformOpacityChangable(Z)V
    .locals 9

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFreeformOpacityChangable:Z

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->getFreeformAlpha()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x96

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    aput v0, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/android/internal/widget/DecorCaptionView;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v5, v4, v3

    invoke-static {v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->withFinalVisibility(Z)Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    aput v5, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/android/internal/widget/DecorCaptionView;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v0, v4, v3

    invoke-static {v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->withFinalVisibility(Z)Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showResizeDialogForCompatMode(Landroid/view/Window$WindowControllerCallback;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const v3, 0x103012e

    goto :goto_1

    :cond_1
    const v3, 0x1030132

    :goto_1
    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090119

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x102027b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/widget/DecorCaptionView$7;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/DecorCaptionView$7;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x102027a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/android/internal/widget/DecorCaptionView$8;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/widget/DecorCaptionView$8;-><init>(Lcom/android/internal/widget/DecorCaptionView;Landroid/view/Window$WindowControllerCallback;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040286

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040287

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1040288

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x50

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRippleEffect(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionContainer:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :goto_1
    return-void
.end method

.method private terminateGhostMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setFreeformAlpha(Landroid/os/IBinder;F)V

    :cond_0
    return-void
.end method

.method private updateCaptionVisibility()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isFillingScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    nop

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    :cond_0
    return-void
.end method

.method private updateHitRect()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v0

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    :cond_9
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    :goto_2
    move-object v1, v2

    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public clearMaximizeRequested(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    sget-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DecorCaptionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearMaximizeRequested, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dispatchRequestedOrientation(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public forceLayoutIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method public getLastMeasuredWithCaptionHeight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    return v0
.end method

.method public isCaptionShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccessibilityActionClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->performButtonActionInternal(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonFocus(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->dipToPx(FLandroid/content/res/Resources;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    const-string v0, "config_changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->clearMaximizeRequested(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setEnabledButtonTooltip(Z)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->keepShowingCaption()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_10

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFreeformOpacityChangable:Z

    if-eqz v5, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-eq v5, v3, :cond_4

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v3

    :goto_1
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mTransRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_a
    iget-boolean v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_b
    :goto_3
    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v9

    if-gt v4, v9, :cond_d

    const-string v9, "DecorCaptionView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInterceptTouchEvent: ClickTarget="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " ToolType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v9, :cond_d

    const-string v9, "DecorCaptionView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInterceptTouchEvent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v11, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " x = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", y = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_c
    const-string v11, ""

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mMaximizeRect = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", mCloseRect = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", mMinimizeRect = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v8, :cond_f

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v9, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v9

    if-gt v4, v9, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v6, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/2addr v6, v3

    if-eq v6, v3, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x64

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    goto :goto_5

    :cond_10
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v5, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->changeBorderColor(Z)V

    :cond_11
    :goto_5
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v2, :cond_13

    if-eqz v0, :cond_12

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v2, :cond_12

    goto :goto_6

    :cond_12
    goto :goto_7

    :cond_13
    :goto_6
    move v1, v3

    :goto_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateHitRect()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTooltipHideTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setLastMeasuredWithCaptionHeight(Z)V

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/DecorCaptionView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iput p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCurrentProgress:I

    int-to-float v0, p2

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setFreeformAlpha(F)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v6, :cond_3

    return v3

    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasEdgeFlag()Z

    move-result v6

    if-eqz v6, :cond_4

    return v3

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    if-eqz v6, :cond_5

    return v3

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v6, :cond_d

    if-nez v2, :cond_6

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_6
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v6

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/DecorCaptionView;->startMovingTask(FF)Z

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v6, 0x0

    :cond_8
    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v7, v4}, Lcom/android/internal/policy/MultiWindowDecorSupport;->notifyMovingTask(Z)V

    :cond_9
    goto :goto_2

    :pswitch_1
    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    xor-int/2addr v3, v4

    return v3

    :pswitch_2
    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-nez v6, :cond_b

    return v3

    :cond_b
    if-eqz v2, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    :cond_d
    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v6, :cond_e

    goto :goto_3

    :cond_e
    goto :goto_4

    :cond_f
    :goto_3
    move v3, v4

    :goto_4
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->operateButtonIfNeeded(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->showRippleEffect(Z)V

    invoke-direct {p0, v4, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, v4, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/DecorCaptionView;->drawRippleEffect(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->showRippleEffect(Z)V

    invoke-direct {p0, v4, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    const-string v0, "DecorCaptionView"

    const-string/jumbo v1, "onTouchEvent: ACTION_CANCEL, button-interaction failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    return v0

    :cond_3
    return v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeContentView()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setCaptionBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDecorCaptionShade()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x10203ae

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    const v1, 0x10808c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    if-nez v0, :cond_1

    const v0, 0x1020398

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const v1, 0x10808c4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-nez v0, :cond_2

    const v0, 0x102026a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    const v1, 0x10808c3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-nez v0, :cond_3

    const v0, 0x102021a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    const v1, 0x10808c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    if-nez v0, :cond_4

    const v0, 0x1020597

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    const v1, 0x10808c8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setLastMeasuredWithCaptionHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    return-void
.end method

.method public setOverlayWithAppContent(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    :cond_0
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 5

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x1020398

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const v0, 0x102026a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    instance-of v0, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    instance-of v0, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    :cond_2
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050177

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mFrameThickness:F

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2, v0}, Lcom/android/internal/widget/DecorCaptionView;->dipToPx(FLandroid/content/res/Resources;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2, v0}, Lcom/android/internal/widget/DecorCaptionView;->dipToPx(FLandroid/content/res/Resources;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    const v2, 0x1020252

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    const v2, 0x1020251

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionContainer:Landroid/view/View;

    const v2, 0x10203ae

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    instance-of v2, v2, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    check-cast v2, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v2, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    :cond_3
    const v2, 0x1020597

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    instance-of v2, v2, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    check-cast v2, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v2, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x102028d

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    const v2, 0x102028c

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mFreeformOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_5
    const v2, 0x102021a

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    instance-of v2, v2, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    check-cast v2, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v2, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    :cond_6
    const v2, 0x102047d

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    instance-of v2, v2, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    check-cast v2, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v2, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    :cond_7
    const v2, 0x1020461

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    instance-of v2, v2, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    check-cast v2, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v2, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v2, v2, 0x100

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    move v1, v3

    nop

    :cond_9
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_b

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v4, :cond_a

    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    iget v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DecorCaptionView;->dispatchRequestedOrientation(I)V

    goto :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiWindowDecorSupport;->canMaximize()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "DecorCaptionView"

    const-string v3, "init: can\'t know button visibility."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateButtonFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public updateButtonVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->hideAllButton()V

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTrans:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->terminateGhostMode()V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "DecorCaptionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateButtonVisibility densityDpi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isEnabledLabsResizableWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public updateFullScreenFreeformWindowCaptionVisibility(IZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v3

    if-ne v3, v2, :cond_1

    if-eqz p2, :cond_9

    :cond_1
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eq v0, v2, :cond_7

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    :cond_9
    return-void
.end method
