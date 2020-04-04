.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$DrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$InputMethodAnimationRunner;,
        Landroid/view/ViewRootImpl$MotionEventMonitor;,
        Landroid/view/ViewRootImpl$UnhandledKeyManager;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$HCTRelayoutHandler;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$WindowStoppedCallback;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ActivityConfigCallback;,
        Landroid/view/ViewRootImpl$ConfigChangedCallback;
    }
.end annotation


# static fields
.field private static final AOD_SHOW_STATE:Ljava/lang/String; = "aod_show_state"

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_REMOTE_IM_ANIM:Z

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_COVER_STATE:I = 0x1e

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_AUTOFILL:I = 0xc

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_DRAW_FINISHED:I = 0x1d

.field private static final MSG_FINISH_MOVING_TASK:I = 0x64

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_POINTER_CAPTURE_CHANGED:I = 0x1c

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_TOUCH_FOCUS_TRANSFERRED:I = 0x65

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field private static final MT_RENDERER_AVAILABLE:Z = true

.field private static final POINTERICON_NODROP_DIVISION:I = 0x3

.field private static final POINTERICON_NODROP_MAX:I = 0xf

.field private static final POINTERICON_UPDATE_COUNTER:I = 0xa

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final REMOTE_IM_ANIM_DURATION:I = 0x12c

.field private static final SUPPORT_IN_MOUSESTYLUS_MODE:Z

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final sAODEnabled:Z

.field private static sAlwaysAssignFocus:Z

.field private static sCompatibilityDone:Z

.field private static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$ConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sDesktopMode:Z

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field private mAppVisibilityChanged:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field private mChildWindowCount:I

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field public final mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

.field mCurScrollY:I

.field private mCurrentDirectPenInputView:Landroid/view/View;

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDecreaseChildWindow:Ljava/lang/Runnable;

.field private final mDensity:I

.field private mDesktopMode:Z

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field mDispatchDisplayCutout:Landroid/view/DisplayCutout;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field mDrawsNeededToReport:I

.field private mEarlyHasWindowFocus:Z

.field private final mEndRemoteImAnimation:Ljava/lang/Runnable;

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field private mForceDraw:Z

.field private mForceNextConfigUpdate:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

.field mHadWindowFocus:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field final mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field private final mIncreaseChildWindow:Ljava/lang/Runnable;

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field private mInputMethodAnimationCancelled:Z

.field private mInputMethodAnimationRunning:Z

.field private mInputMethodAnimationStarted:Z

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

.field public mIsAnimating:Z

.field private mIsCoverOpen:Z

.field mIsCreating:Z

.field mIsDeviceDefault:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field private final mLastConfigurationFromResources:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field private final mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTouchSource:I

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLetterboxDirection:I

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mLostWindowFocus:Z

.field private mMWBG:Landroid/view/SurfaceControl;

.field private mMWBGHeight:I

.field mMWBGParentDecorView:Landroid/view/View;

.field private mMWBGSurfaceInsetsLeft:I

.field private mMWBGSurfaceInsetsTop:I

.field private mMWBGWidth:I

.field private mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

.field private mNeedToApplyTransacaction:Z

.field private mNeedsRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

.field mNoDropSeq:I

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field public mParentDecorView:Landroid/view/View;

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeNavBar:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field final mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field mPointerCapture:Z

.field private mPointerIconType:I

.field mPointerUpdateSeq:I

.field mPokeDrawLockRequested:Z

.field private mPreContentInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemoteImAnimating:Z

.field private mRemoteImAnimator:Landroid/animation/ValueAnimator;

.field private mRemoteImFocus:Landroid/view/View;

.field private mRemoteImFrom:I

.field private mRemoteImHadResized:Z

.field private mRemoteImHadRunner:Z

.field private mRemoteImInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRemoteImLastBottom:I

.field private mRemoteImReverse:Z

.field private mRemoteImTo:I

.field private mRemoteImUpdateCount:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private mRequestedMWBG:Z

.field private mResizeMode:I

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

.field mSoftInputMode:I

.field mStopped:Z

.field public final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mSynchronizedImAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

.field private mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

.field private mSynchronizedImAnimationTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mTag:Ljava/lang/String;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field final mTranslatedPoint:Landroid/graphics/PointF;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field private final mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

.field mUpcomingInTouchMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field mUpcomingWindowFocus:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUseMTRenderer:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWindowCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field mWindowFocusChanged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mWindowSession:Landroid/view/IWindowSession;

.field private final mWindowStoppedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$WindowStoppedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "6"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    sput-boolean v2, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    sput-boolean v2, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    const-string/jumbo v0, "view.in_mousestylus_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->SUPPORT_IN_MOUSESTYLUS_MODE:Z

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "view.remote.im.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mEarlyHasWindowFocus:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mPokeDrawLockRequested:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    const/4 v3, -0x1

    iput v3, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    const-string/jumbo v5, "pq"

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    new-instance v5, Landroid/view/ViewRootImpl$UnhandledKeyManager;

    invoke-direct {v5, v4}, Landroid/view/ViewRootImpl$UnhandledKeyManager;-><init>(Landroid/view/ViewRootImpl$1;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    iput v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/view/DisplayCutout$ParcelableWrapper;

    sget-object v6, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {v5, v6}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v5, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    new-instance v5, Landroid/util/MergedConfiguration;

    invoke-direct {v5}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v5, Landroid/util/MergedConfiguration;

    invoke-direct {v5}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput-wide v5, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput v2, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    new-instance v5, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    new-instance v5, Lcom/samsung/android/view/ConventionalModeBar$Info;

    invoke-direct {v5}, Lcom/samsung/android/view/ConventionalModeBar$Info;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDeviceDefault:Z

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mNeedToApplyTransacaction:Z

    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iput v1, p0, Landroid/view/ViewRootImpl;->mRemoteImFrom:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mRemoteImTo:I

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mRemoteImFocus:Landroid/view/View;

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v5, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimating:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImReverse:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImHadRunner:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImHadResized:Z

    iput v1, p0, Landroid/view/ViewRootImpl;->mRemoteImLastBottom:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mRemoteImUpdateCount:I

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationCancelled:Z

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsLeft:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsTop:I

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    iput v1, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mMWBGParentDecorView:Landroid/view/View;

    nop

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v5, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const-string v5, "ViewRootImpl"

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    new-instance v5, Landroid/view/ViewRootImpl$1;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    iput v1, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    new-instance v5, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsCoverOpen:Z

    new-instance v5, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    new-instance v5, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    new-instance v5, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    new-instance v5, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    new-instance v5, Landroid/view/ViewRootImpl$5;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mIncreaseChildWindow:Ljava/lang/Runnable;

    new-instance v5, Landroid/view/ViewRootImpl$6;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$6;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDecreaseChildWindow:Ljava/lang/Runnable;

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v5, :cond_2

    new-instance v5, Landroid/view/ViewRootImpl$9;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$9;-><init>(Landroid/view/ViewRootImpl;)V

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    iput-object v5, p0, Landroid/view/ViewRootImpl;->mEndRemoteImAnimation:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    if-nez v5, :cond_3

    const-string v5, "ViewRootImpl"

    const-string v6, "ViewRootImpl, mDisplay is null #1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    new-instance v5, Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    invoke-direct {v5, p0}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    new-instance v5, Landroid/view/WindowLeaked;

    invoke-direct {v5, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    iput v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iput v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    new-instance v3, Landroid/view/ViewRootImpl$W;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v3, 0x8

    iput v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    new-instance v3, Landroid/view/View$AttachInfo;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v4, v3

    move-object v7, p2

    move-object v8, p0

    move-object v10, p0

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    new-instance v3, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v3, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    new-instance v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const-string v3, "display"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-boolean v3, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    if-nez v3, :cond_5

    iget v3, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    sput-boolean v3, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    sput-boolean v2, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x111008d

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v3, v3, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDeviceDefault:Z

    :cond_6
    new-instance v3, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {v3, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;-><init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v3, v2, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    sput-boolean v3, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v4, 0x3

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v5

    goto :goto_5

    :cond_8
    move v5, v0

    :goto_5
    if-eq v5, v4, :cond_a

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    goto :goto_6

    :cond_9
    move v6, v1

    goto :goto_7

    :cond_a
    :goto_6
    move v6, v2

    :goto_7
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_b

    move v7, v2

    goto :goto_8

    :cond_b
    move v7, v1

    :goto_8
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eq v8, v0, :cond_d

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    goto :goto_a

    :cond_d
    :goto_9
    move v1, v2

    :goto_a
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    goto :goto_b

    :cond_e
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, v0, :cond_f

    move v1, v2

    nop

    :cond_f
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    :goto_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_0
    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Landroid/view/ViewRootImpl$MotionEventMonitor;

    invoke-direct {v1}, Landroid/view/ViewRootImpl$MotionEventMonitor;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    goto :goto_c

    :catch_0
    move-exception v1

    const-string v2, "ViewRootImpl"

    const-string v3, "AbstractMethodError occured."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_c
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRemoteImHadResized:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    return-void
.end method

.method static synthetic access$1300(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->startRemoteImAnimation()V

    return-void
.end method

.method static synthetic access$1400(Landroid/view/ViewRootImpl;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mRemoteImFrom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoteImReverse:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRemoteImReverse:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendUserActionEvent()V

    return-void
.end method

.method static synthetic access$2100(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    return-void
.end method

.method static synthetic access$2500(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$2600(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/view/ViewRootImpl;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isDexEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/view/ViewRootImpl;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isAutofillUiShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/view/ViewRootImpl;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/view/ViewRootImpl;)Landroid/view/autofill/AutofillManager;
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->processDirectPenInputKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeUpdateTooltip(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3702(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    return p1
.end method

.method static synthetic access$3800(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$4802(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic access$4900(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;Z)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;Z)V

    return-void
.end method

.method static synthetic access$5400(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->dispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$5500(Landroid/view/ViewRootImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->doRelayoutForHCT(Z)V

    return-void
.end method

.method static synthetic access$5600(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Landroid/view/ViewRootImpl;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    return v0
.end method

.method static synthetic access$5702(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    return p1
.end method

.method static synthetic access$5708(Landroid/view/ViewRootImpl;)I
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    return v0
.end method

.method static synthetic access$5710(Landroid/view/ViewRootImpl;)I
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    return v0
.end method

.method static synthetic access$5800(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    return v0
.end method

.method static synthetic access$5900(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    return-void
.end method

.method static synthetic access$6000(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semCreateMWBG()V

    return-void
.end method

.method static synthetic access$6100(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    return v0
.end method

.method static synthetic access$6102(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    return p1
.end method

.method static synthetic access$6200(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationCancelled:Z

    return v0
.end method

.method static synthetic access$6202(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationCancelled:Z

    return p1
.end method

.method static synthetic access$6300(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    return v0
.end method

.method static synthetic access$6302(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    return p1
.end method

.method static synthetic access$6400(Landroid/view/ViewRootImpl;)Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    return-object v0
.end method

.method static synthetic access$6402(Landroid/view/ViewRootImpl;Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;)Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    return-object p1
.end method

.method static synthetic access$6500(Landroid/view/ViewRootImpl;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    return-object v0
.end method

.method static synthetic access$6502(Landroid/view/ViewRootImpl;Lcom/samsung/android/view/RemoteWindowAnimationTarget;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    return-object p1
.end method

.method static synthetic access$6600(Landroid/view/ViewRootImpl;)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->commitPendingTransaction()V

    return-void
.end method

.method static synthetic access$6800(Landroid/view/ViewRootImpl;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mRemoteImUpdateCount:I

    return v0
.end method

.method static synthetic access$6802(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mRemoteImUpdateCount:I

    return p1
.end method

.method static synthetic access$6808(Landroid/view/ViewRootImpl;)I
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mRemoteImUpdateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mRemoteImUpdateCount:I

    return v0
.end method

.method static synthetic access$6900(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->endRemoteImAnimation()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/view/ViewRootImpl;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mRemoteImLastBottom:I

    return v0
.end method

.method static synthetic access$7002(Landroid/view/ViewRootImpl;I)I
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl;->mRemoteImLastBottom:I

    return p1
.end method

.method static synthetic access$7100(Landroid/view/ViewRootImpl;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mRemoteImTo:I

    return v0
.end method

.method static synthetic access$7200(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl;FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->applyTransformation(Landroid/view/SurfaceControl;FFZ)V

    return-void
.end method

.method static synthetic access$7300(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mEndRemoteImAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7402(Landroid/view/ViewRootImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRemoteImHadRunner:Z

    return p1
.end method

.method static synthetic access$7500(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->cancelRemoteImAnimation()V

    return-void
.end method

.method static synthetic access$7600(Landroid/view/ViewRootImpl;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->startRemoteImAnimation(IIZ)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimating:Z

    return v0
.end method

.method static synthetic access$900(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .locals 2

    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 5

    iget v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    const/16 v1, 0x60

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v3, v2, 0x60

    shr-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    or-int v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyTransformation(Landroid/view/SurfaceControl;FFZ)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->commitPendingTransaction()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNeedToApplyTransacaction:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private cancelRemoteImAnimation()V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RemoteIm] cancelRemoteImAnimation, isRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->semEnsureMouseStylusMode(Z)Z

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    return v1

    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->semEnsureMouseStylusMode(Z)Z

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    return v1

    :cond_4
    return v1
.end method

.method private checkPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v5

    float-to-int v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v0

    const/high16 v5, -0x40000000    # -2.0f

    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    return v3

    :cond_3
    const/16 v0, 0x64

    const/4 v5, 0x1

    if-ge v4, v0, :cond_5

    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v5
.end method

.method private clearRemoteWindowAnimation()V
    .locals 3

    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] clearRemoteWindowAnimation, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationCancelled:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimating:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImReverse:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImHadRunner:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImHadResized:Z

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImFocus:Landroid/view/View;

    return-void
.end method

.method private collectViewAttributes()Z
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v1, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private commitPendingTransaction()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNeedToApplyTransacaction:Z

    return-void
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4

    const-string v0, "deliverInputEvent"

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    neg-int v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setWindowOffset(II)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->shouldApplyDexCompatTranslator()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->translateToWindow(Landroid/view/MotionEvent;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setDssScale(F)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->checkPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    :goto_0
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/KeyEvent;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v3, Landroid/view/KeyEvent;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preDispatch(Landroid/view/KeyEvent;)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    :goto_1
    return-void
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "mThreadedRenderer.destroy()#4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    :cond_2
    return-void
.end method

.method private dipToPx(I)I
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchCoverStateChanged(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mDragResizing:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_0
    if-ltz v0, :cond_0

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowCallbacks;

    invoke-interface {v12, v8, v10, v5, v6}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_2

    const/4 v11, 0x5

    goto :goto_2

    :cond_2
    const/4 v11, 0x4

    :goto_2
    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v11, :cond_3

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->shouldApplyDexCompatTranslator()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->savePositionInScreen(II)Z

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-virtual {v11, v2}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->translateToWindow(Landroid/graphics/Rect;)V

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-virtual {v11, v8}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->translateToWindow(Landroid/graphics/Rect;)V

    :cond_4
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    if-ne v12, v13, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_6

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_6
    move-object v12, v2

    :goto_4
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz v9, :cond_7

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_7
    move-object v12, v4

    :goto_5
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    if-eqz v9, :cond_8

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_8
    move-object v12, v5

    :goto_6
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    if-eqz v9, :cond_9

    if-eqz v7, :cond_9

    new-instance v12, Landroid/util/MergedConfiguration;

    invoke-direct {v12, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    goto :goto_7

    :cond_9
    move-object v12, v7

    :goto_7
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v9, :cond_a

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_8

    :cond_a
    move-object v12, v3

    :goto_8
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    if-eqz v9, :cond_b

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_b
    move-object v12, v6

    :goto_9
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    if-eqz v9, :cond_c

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v13, p6

    invoke-direct {v12, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_c
    move-object/from16 v13, p6

    move-object v12, v13

    :goto_a
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    if-eqz v9, :cond_d

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_d
    move-object v12, v8

    :goto_b
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    invoke-virtual/range {p13 .. p13}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    move/from16 v12, p10

    iput v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v14, p11

    iput v14, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v15, p12

    iput v15, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    move/from16 v2, p14

    iput v2, v11, Lcom/android/internal/os/SomeArgs;->argi4:I

    iput-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private doRelayoutForHCT(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHCTRelayoutHandler:Landroid/view/ViewRootImpl$HCTRelayoutHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$HCTRelayoutHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "ViewRootImpl"

    const-string v1, "Recursion detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private draw(Z)Z
    .locals 30

    move-object/from16 v9, p0

    iget-object v10, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "Surface is not valid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    if-eqz v0, :cond_2

    iget v0, v9, Landroid/view/ViewRootImpl;->mChildWindowCount:I

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semIsInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semCreateMWBG()V

    goto :goto_0

    :cond_1
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    :cond_2
    :goto_0
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    iget v0, v9, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v0, v1, :cond_3

    iget v0, v9, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    iget v1, v9, Landroid/view/ViewRootImpl;->mHeight:I

    if-ne v0, v1, :cond_3

    iget v0, v9, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsLeft:I

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_3

    iget v0, v9, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsTop:I

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semUpdateMWBG()V

    :cond_4
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    const/4 v12, 0x1

    if-nez v0, :cond_6

    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sput-boolean v12, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v11

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v1, :cond_7

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v11, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    :cond_7
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_8

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v12

    goto :goto_3

    :cond_8
    move v1, v11

    :goto_3
    move v13, v1

    if-eqz v13, :cond_9

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    goto :goto_4

    :cond_9
    iget v1, v9, Landroid/view/ViewRootImpl;->mScrollY:I

    :goto_4
    move v14, v1

    iget v1, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v1, v14, :cond_b

    iput v14, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    const/4 v1, 0x1

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_a

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v3, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    :cond_a
    move v15, v1

    goto :goto_5

    :cond_b
    move/from16 v15, p1

    :goto_5
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    iget-object v6, v9, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v1, :cond_d

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v13, :cond_c

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_c

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_c
    return v11

    :cond_d
    if-eqz v15, :cond_e

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v12, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, v9, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v6, v11, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_e
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    iget v1, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    neg-int v1, v1

    iget v2, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    neg-int v2, v2

    add-int/2addr v2, v14

    iget-object v5, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_f

    iget-object v3, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    goto :goto_6

    :cond_f
    move-object v3, v0

    :goto_6
    move-object v4, v3

    if-eqz v4, :cond_10

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v3, v12}, Landroid/graphics/Rect;->offset(II)V

    :cond_10
    move v3, v1

    move v12, v2

    const/4 v1, 0x0

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v16

    if-nez v16, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_11
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const/4 v1, 0x1

    :cond_12
    move v11, v1

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    move-object/from16 v23, v2

    div-long v1, v16, v18

    iput-wide v1, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    const/16 v24, 0x0

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_14

    if-eqz v11, :cond_13

    goto :goto_7

    :cond_13
    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v16, v23

    goto/16 :goto_d

    :cond_14
    :goto_7
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1c

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez v11, :cond_16

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v0, 0x1

    :goto_9
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    iput-boolean v1, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    iget v1, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v1, v12, :cond_17

    iget v1, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v1, v3, :cond_18

    :cond_17
    iput v12, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    iput v3, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    const/4 v0, 0x1

    :cond_18
    if-eqz v0, :cond_19

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_19
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    move-result v1

    iget-boolean v2, v9, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v2, :cond_1a

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move/from16 v25, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    goto :goto_a

    :cond_1a
    move/from16 v25, v3

    :goto_a
    if-eqz v1, :cond_1b

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    :cond_1b
    const/16 v24, 0x1

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    const/4 v3, 0x0

    iput-object v3, v9, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move/from16 v26, v0

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v27, v1

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v3, v0, v1, v9, v2}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    nop

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v16, v23

    move/from16 v17, v25

    goto/16 :goto_d

    :cond_1c
    move/from16 v25, v3

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1e

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_1
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, v9, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v28, v5

    :try_start_2
    iget-object v5, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_1d

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mThreadedRenderer.initializeIfNeeded()#1 mSurface={%s}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isValid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v29, v4

    :try_start_3
    iget-wide v4, v5, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_1d
    move-object/from16 v29, v4

    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    const/4 v1, 0x0

    return v1

    :catch_1
    move-exception v0

    move-object/from16 v29, v4

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    :goto_c
    invoke-direct {v9, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    const/4 v1, 0x0

    return v1

    :cond_1e
    move-object/from16 v29, v4

    move-object/from16 v28, v5

    iget-object v3, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v1, v9

    move-object/from16 v16, v23

    move-object v2, v10

    move/from16 v17, v25

    move-object/from16 v18, v29

    move/from16 v4, v17

    move-object/from16 v19, v28

    move v5, v12

    move-object/from16 v20, v6

    move v6, v7

    move/from16 v21, v7

    move-object/from16 v7, v20

    move/from16 v22, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v1, 0x0

    return v1

    :cond_1f
    :goto_d
    if-eqz v13, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_20
    return v24
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move v0, v4

    move v8, v5

    if-eqz v7, :cond_0

    iget v9, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v9

    iget v9, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    :cond_0
    move v9, v8

    move v8, v0

    neg-int v0, v8

    neg-int v10, v9

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v6, v0, v10}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v15, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v15

    iget v12, v6, Landroid/graphics/Rect;->left:I

    if-ne v0, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->top:I

    if-ne v10, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->right:I

    if-ne v13, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    if-eq v14, v12, :cond_2

    :cond_1
    iput-boolean v11, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_2
    iget v12, v1, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v15, v12}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    nop

    move-object v10, v15

    :try_start_1
    invoke-virtual {v10}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    neg-int v0, v4

    int-to-float v0, v0

    neg-int v12, v5

    int-to-float v12, v12

    :try_start_2
    invoke-virtual {v10, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    :cond_5
    if-eqz p5, :cond_6

    iget v0, v1, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {v1, v10}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v0, :cond_7

    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :try_start_4
    invoke-virtual {v2, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    nop

    return v11

    :catch_0
    move-exception v0

    move-object v13, v0

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v14, "Could not unlock surface"

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v11, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v11, 0x0

    return v11

    :catchall_0
    move-exception v0

    :try_start_5
    iget-boolean v13, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v13, :cond_8

    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    nop

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v13, "Could not lock surface"

    invoke-static {v10, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v11, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    nop

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    const/4 v10, 0x0

    return v10

    :catch_2
    move-exception v0

    :try_start_8
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    nop

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    const/4 v10, 0x0

    return v10

    :goto_3
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    throw v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 11

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_e

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v3, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto/16 :goto_7

    :cond_5
    sget-boolean v5, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    :cond_6
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v5}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "mThreadedRenderer.destroy()#2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-nez v6, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v2

    :goto_4
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    move v7, v1

    goto :goto_6

    :cond_b
    :goto_5
    move v7, v2

    :goto_6
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v8

    if-ne v8, v2, :cond_c

    move v1, v2

    nop

    :cond_c
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v9

    iput-object v9, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v8, v1}, Landroid/view/ThreadedRenderer;->setWideGamut(Z)V

    sget-boolean v8, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ThreadedRenderer.create() translucent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v8, :cond_e

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v9, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v2, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    :cond_e
    :goto_7
    return-void
.end method

.method private endDragResizing()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :cond_1
    return-void
.end method

.method private endRemoteImAnimation()V
    .locals 3

    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] endRemoteImAnimation, Running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Cancelled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationCancelled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->invokeRemoteWindowAnimationCallback()V

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImFocus:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImFocus:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Landroid/view/ViewRootImpl;->mRemoteImFrom:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mRemoteImTo:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroid/view/ViewRootImpl$10;

    invoke-direct {v2, p0, v0, v1}, Landroid/view/ViewRootImpl$10;-><init>(Landroid/view/ViewRootImpl;Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_3
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->clearRemoteWindowAnimation()V

    return-void
.end method

.method private ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 6

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Insets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFirst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :goto_1
    nop

    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureTouchModeLocally() error occurred. inTouchMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v1
.end method

.method private enterTouchMode()Z
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v1

    return v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    return v4

    :cond_1
    return v1
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    if-gtz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    nop

    invoke-virtual {v4, v6}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_5

    return-object v8

    :cond_5
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0

    :cond_8
    return-object v2
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4

    const-string v0, "deliverInputEvent"

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method private fireAccessibilityFocusEventIfHasFocusedNode()V
    .locals 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    nop

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateDexCompatTranslatorIfNeeded()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getDexCompatTranslator()Lcom/samsung/android/desktopmode/DexCompatTranslator;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getDexCompatTranslator(Lcom/samsung/android/desktopmode/DexCompatTranslator;)Lcom/samsung/android/desktopmode/DexCompatTranslator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    :cond_1
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 10

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1110004

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v4, v4, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    const v5, 0x1060225

    if-eqz v4, :cond_2

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "accessibility_large_cursor"

    const/4 v8, 0x2

    const/4 v9, -0x3

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v1, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "accessibility_cursor_color"

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v6, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v6, v7, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v5, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v3, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v1, p1, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    iget v6, v5, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v6, v6

    iget v7, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v7, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v2, v2, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    return v2

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v2

    :cond_6
    :goto_2
    return v2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-object v2

    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_4

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v3, 0x0

    return-object v3
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 5

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, p1, v1

    if-eqz v0, :cond_0

    aget v2, p1, v3

    invoke-virtual {v0}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v4

    add-int/2addr v2, v4

    aput v2, p1, v3

    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    nop

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x500

    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x300

    :cond_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    return v0
.end method

.method private getPalmRejection(Landroid/view/MotionEvent;)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v0, 0x14

    new-array v3, v0, [I

    new-array v4, v0, [I

    new-array v5, v0, [I

    new-array v6, v0, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x43480000    # 200.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    move/from16 v19, v0

    :try_start_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    move-object/from16 v20, v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v21, v1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    move/from16 v1, v17

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v22, v7

    move/from16 v1, v17

    goto :goto_3

    :cond_0
    move/from16 v1, v17

    move/from16 v0, v18

    :goto_0
    if-le v0, v1, :cond_1

    move/from16 v22, v7

    int-to-float v7, v1

    :goto_1
    move/from16 v16, v7

    goto :goto_2

    :cond_1
    move/from16 v22, v7

    int-to-float v7, v0

    goto :goto_1

    :goto_2
    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v22, v7

    move/from16 v1, v17

    :goto_3
    const-string v7, "ViewRootImpl"

    move-object/from16 v23, v0

    const-string v0, "[Surface touch] Default Rotate = false"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v18

    :goto_4
    const/16 v17, 0x0

    :goto_5
    move/from16 v24, v17

    move/from16 v25, v0

    move/from16 v7, v19

    move/from16 v0, v24

    if-ge v0, v7, :cond_2

    move/from16 v26, v1

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v4, v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v5, v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v6, v0

    add-int/lit8 v17, v0, 0x1

    move/from16 v19, v7

    move/from16 v0, v25

    move/from16 v1, v26

    goto :goto_5

    :cond_2
    move/from16 v26, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v7, :cond_3

    aget v1, v3, v0

    int-to-float v1, v1

    add-float/2addr v8, v1

    aget v1, v4, v0

    int-to-float v1, v1

    add-float/2addr v9, v1

    aget v1, v5, v0

    int-to-float v1, v1

    add-float/2addr v11, v1

    aget v1, v6, v0

    int-to-float v1, v1

    add-float/2addr v12, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3
    int-to-float v0, v7

    div-float v0, v8, v0

    int-to-float v1, v7

    div-float v1, v9, v1

    div-float v10, v11, v12

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v7, :cond_6

    aget v14, v3, v13

    int-to-float v14, v14

    sub-float/2addr v14, v0

    move/from16 v27, v1

    aget v1, v3, v13

    int-to-float v1, v1

    sub-float/2addr v1, v0

    mul-float/2addr v14, v1

    move/from16 v28, v0

    float-to-double v0, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float v22, v22, v0

    invoke-virtual {v2, v13}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {v2, v13}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    move v15, v0

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v27

    move/from16 v0, v28

    goto :goto_7

    :cond_6
    move/from16 v28, v0

    move/from16 v27, v1

    int-to-float v0, v7

    div-float v0, v22, v0

    const/4 v1, 0x1

    if-ne v15, v1, :cond_7

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    if-ne v14, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    if-eq v13, v1, :cond_7

    const-string v13, "ViewRootImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewRootImpl] action cancel - 1, eccen:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    if-ne v14, v1, :cond_8

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_8

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, v10, v1

    if-lez v1, :cond_8

    add-int/lit8 v1, v7, 0x4

    int-to-float v1, v1

    div-float v1, v16, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    const-string v1, "ViewRootImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ViewRootImpl] action cancel - 2, Palm Sweep, SsumMajor:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " eccen:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " varX:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method private static getRootMeasureSpec(II)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    :goto_0
    nop

    return v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/HandlerActionQueue;
    .locals 2

    sget-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandlerActionQueue;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/view/HandlerActionQueue;

    invoke-direct {v1}, Landroid/view/HandlerActionQueue;-><init>()V

    move-object v0, v1

    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_0
    const/16 v4, 0x1000

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_5

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_5

    :cond_0
    const/4 v4, 0x0

    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_3

    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    iget-object v7, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v6, v7

    check-cast v6, Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v4, :cond_5

    if-nez v3, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-nez p2, :cond_9

    nop

    :goto_3
    move v1, v2

    if-ge v1, v0, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :goto_4
    if-eqz v2, :cond_8

    iget v5, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_8

    iget v5, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, -0x1001

    iput v5, v2, Landroid/view/View;->mPrivateFlags:I

    iget-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v2, v5

    check-cast v2, Landroid/view/View;

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object v3
.end method

.method private handleDispatchCoverStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsCoverOpen:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsCoverOpen:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCoverStateChanged(Z)V

    return-void
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 11

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_14

    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    iget-object v5, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput v2, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {}, Landroid/view/ViewRootImpl;->semIsInMouseStylusMode()Z

    move-result v6

    iput-boolean v6, v5, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v5, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    :goto_0
    const/4 v5, 0x6

    const/4 v6, 0x3

    if-ne v0, v5, :cond_4

    sget-boolean v1, Landroid/view/View;->sCascadedDragDrop:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    :cond_2
    invoke-virtual {p0, v4, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    iput v2, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v6, :cond_14

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v3, "ACTION_DRAG_EXITED in primary window. Call hideSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto/16 :goto_5

    :cond_4
    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-ne v0, v6, :cond_8

    :cond_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v8, p1, Landroid/view/DragEvent;->mX:F

    iget v9, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v7, v8}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    :cond_6
    iget v7, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v8, 0x0

    iget v9, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->offset(FF)V

    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, p1, Landroid/view/DragEvent;->mX:F

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iput v7, p1, Landroid/view/DragEvent;->mY:F

    :cond_8
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-ne v0, v6, :cond_9

    iget-object v8, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    if-eqz v8, :cond_9

    iget-object v8, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v8}, Landroid/content/ClipData;->prepareToEnterProcess()V

    :cond_9
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    const/16 v9, 0x3f4

    if-ne v0, v5, :cond_d

    iget-boolean v5, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    if-nez v5, :cond_d

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    if-eqz v5, :cond_c

    iget v5, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    const/16 v10, 0xf

    if-gt v5, v10, :cond_c

    iget v5, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    if-le v5, v6, :cond_a

    iget v5, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_b

    :cond_a
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_b
    iget v5, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    :cond_c
    invoke-virtual {p0, v4, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    :cond_d
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v7, v5, :cond_12

    if-eqz v7, :cond_f

    :try_start_0
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    if-eqz v5, :cond_e

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    iget v5, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    :cond_e
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_f
    :goto_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    if-eqz v3, :cond_10

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/16 v5, 0x3fd

    invoke-virtual {v3, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    iput v2, p0, Landroid/view/ViewRootImpl;->mNoDropSeq:I

    :cond_10
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    goto :goto_3

    :goto_2
    nop

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v5, "Unable to note drag target change"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_3
    if-ne v0, v6, :cond_13

    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting drop result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3, v8}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v5, "Unable to report drop result"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_4
    if-ne v0, v1, :cond_14

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v4, v1, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v4, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    :cond_14
    :goto_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    return-void
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return-void
.end method

.method private handlePointerCaptureChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    :cond_1
    return-void
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    :goto_0
    if-eqz v10, :cond_5

    if-nez v9, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v11

    if-ne v8, v11, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v12, v11, Landroid/view/View;

    if-eqz v12, :cond_4

    move-object v10, v11

    check-cast v10, Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    goto :goto_0

    :cond_5
    if-nez v9, :cond_6

    return-void

    :cond_6
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v13

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v15, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    iput-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v15, :cond_7

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    invoke-virtual {v2, v13, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_7
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method private handleWindowFocusChanged()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_c

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {}, Landroid/view/ViewRootImpl;->semIsInMouseStylusMode()Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :try_start_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move-object v11, v5

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v7, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v8, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v6 .. v11}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "mThreadedRenderer.initializeIfNeeded()#2 mSurface={%s}"

    new-array v7, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isValid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-wide v9, v9, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "OutOfResourcesException locking surface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "No processes killed for memory; killing self"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    :goto_2
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_5

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mEarlyHasWindowFocus:Z

    :cond_5
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v5, :cond_7

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v5

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreWindowFocus() hasWindowFocus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mayUseInputMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mWindowAttributes.flags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    :cond_7
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v5}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hideTooltip()V

    :cond_8
    if-eqz v1, :cond_b

    if-eqz v4, :cond_a

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPostWindowFocus() hasWindowFocus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " softInputMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " focusedView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mWindowAttributes.flags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mayUseInputMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    xor-int/lit8 v9, v5, 0x1

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->fireAccessibilityFocusEventIfHasFocusedNode()V

    goto :goto_3

    :cond_b
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-eqz v3, :cond_c

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    :cond_c
    :goto_3
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimating:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoteImHadResized:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoteImHadRunner:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->startRemoteImAnimation()V

    :cond_d
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private initRemoteImAnimator()V
    .locals 5

    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] initRemoteImAnimator, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImInterpolator:Landroid/view/animation/PathInterpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImInterpolator:Landroid/view/animation/PathInterpolator;

    :cond_1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRemoteImInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/ViewRootImpl$7;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$7;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/ViewRootImpl$8;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$8;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_3
    return-void
.end method

.method public static invokeFunctor(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    return-void
.end method

.method private invokeRemoteWindowAnimationCallback()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    if-eqz v0, :cond_1

    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] onAnimationFinished, Started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationFinishCallback:Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    invoke-interface {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isAutofillUiShowing()Z
    .locals 2

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    return v1
.end method

.method public static isDesktopmode()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_0

    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "static method isDesktopmode() is deprecated for dex3.0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sDesktopMode:Z

    return v0
.end method

.method private isDexEnabled()Z
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_4
    return v1
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInTouchMode()Z
    .locals 2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 5

    instance-of v0, p0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
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

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dznxCZGM2R1fsBljsJKomLjBRoM(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->postDrawFinished()V

    return-void
.end method

.method public static synthetic lambda$performDraw$0(Landroid/view/ViewRootImpl;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    return-void
.end method

.method private leaveTouchMode()Z
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v1, v3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    :cond_6
    return-void
.end method

.method private maybeUpdateTooltip(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "maybeUpdateTooltip called after view was removed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_6

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    const/16 v5, 0x7d5

    if-ne v3, v5, :cond_0

    const v3, 0x1050293

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p3, v3, v6, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsDeviceDefault:Z

    if-eqz v3, :cond_1

    const v3, 0x1050292

    goto :goto_0

    :cond_1
    const v3, 0x1050059

    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p3, v3, v6, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_1
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_4

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    if-eqz v4, :cond_3

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v3, v5

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v4

    float-to-int v3, v4

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    if-le p4, v3, :cond_6

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v3, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v4

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-nez v6, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    add-int v6, v3, p4

    div-int/lit8 v6, v6, 0x2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v6, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    invoke-direct {p0, v3, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    and-int/2addr v4, v7

    if-nez v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_3
    if-nez v1, :cond_8

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v2}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    iget v4, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    move-object v0, v2

    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    return-object v0
.end method

.method private performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    .locals 6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v3

    iget v3, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    :cond_0
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_1

    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-interface {v5, v0}, Landroid/view/ViewRootImpl$ConfigChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v3, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-interface {v3, v1, p3}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No merged config provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performDraw()V
    .locals 9

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAODEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "aod_show_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performDraw() was skipped by AOD_SHOW_STATE... DisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    return-void

    :cond_3
    :goto_1
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    const-string v1, "draw"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x0

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v5}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v6, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;

    invoke-direct {v6, p0}, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v5, v6}, Landroid/view/ThreadedRenderer;->setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V

    :cond_6
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->draw(Z)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v1, :cond_7

    if-nez v5, :cond_7

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v7, v6}, Landroid/view/ThreadedRenderer;->setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :cond_7
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v7, v2

    :goto_4
    if-ge v7, v5, :cond_8

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/RenderNode;

    invoke-virtual {v8}, Landroid/view/RenderNode;->endAllAnimators()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    :cond_9
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v5, :cond_e

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_a

    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v7, "Window redraw count down interrupted!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    :cond_a
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v2, v5}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    :cond_b
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v3, Landroid/view/-$$Lambda$ViewRootImpl$dznxCZGM2R1fsBljsJKomLjBRoM;

    invoke-direct {v3, p0}, Landroid/view/-$$Lambda$ViewRootImpl$dznxCZGM2R1fsBljsJKomLjBRoM;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-direct {v2, v3}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_6

    :cond_c
    if-nez v1, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_d

    const-string v2, "fence"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->fence()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    :cond_e
    :goto_6
    return-void

    :catchall_0
    move-exception v5

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 15

    move-object v7, p0

    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v9, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "layout"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v9, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v12, v1

    if-lez v12, :cond_2

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v0}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    move-object v13, v1

    if-eqz v13, :cond_2

    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v14, v1

    move v1, v0

    :goto_0
    if-ge v1, v14, :cond_1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLayout() improperly called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " during layout: running second layout pass"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v1, v7

    move-object v2, v9

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v9, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v8}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v3

    new-instance v4, Landroid/view/ViewRootImpl$2;

    invoke-direct {v4, v7, v2}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    nop

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performMeasure(II)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "measure"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performTraversals()V
    .locals 62

    move-object/from16 v7, p0

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_a5

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_0

    goto/16 :goto_53

    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-object v11, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v12

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v13, 0x0

    if-nez v2, :cond_2

    iget v2, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-ne v2, v12, :cond_1

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-nez v2, :cond_1

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    if-eqz v2, :cond_2

    :cond_1
    move v2, v9

    goto :goto_0

    :cond_2
    move v2, v13

    :goto_0
    move v14, v2

    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_5

    iget v2, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-nez v2, :cond_3

    move v2, v9

    goto :goto_1

    :cond_3
    move v2, v13

    :goto_1
    if-nez v12, :cond_4

    move v3, v9

    goto :goto_2

    :cond_4
    move v3, v13

    :goto_2
    if-eq v2, v3, :cond_5

    move v2, v9

    goto :goto_3

    :cond_5
    move v2, v13

    :goto_3
    move v15, v2

    const/4 v2, 0x0

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v3, :cond_6

    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 v1, 0x1

    move-object v2, v11

    :cond_6
    move/from16 v16, v1

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v1, v3, :cond_8

    move-object v2, v11

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v1, :cond_7

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto :goto_4

    :cond_7
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    :cond_8
    :goto_4
    move-object/from16 v17, v2

    iput v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v1, :cond_b

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v11}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_9
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_5
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v9, v7, Landroid/view/ViewRootImpl;->mEarlyHasWindowFocus:Z

    iput-boolean v9, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v12, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v13, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v4, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_a
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v8, v4, v13}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v9, "dispatchAttachedToWindow"

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v3, v1, :cond_c

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v2, v1, :cond_d

    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    const/4 v0, 0x1

    :cond_d
    :goto_6
    if-eqz v14, :cond_14

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v12, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    invoke-virtual {v8, v12}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    if-eqz v15, :cond_f

    if-nez v12, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    move v1, v13

    :goto_7
    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    :cond_f
    if-nez v12, :cond_10

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v1, :cond_11

    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    :cond_11
    const/16 v1, 0x8

    if-ne v12, v1, :cond_12

    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    :cond_12
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v1, v4, :cond_14

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v1, v4, :cond_14

    if-eqz v12, :cond_13

    const/4 v1, 0x1

    goto :goto_8

    :cond_13
    move v1, v13

    :goto_8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v4, v9, v1}, Landroid/view/WindowManagerGlobal;->setChildWindowStopped(Landroid/os/IBinder;Z)V

    :cond_14
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v1, :cond_15

    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_15
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v1

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    const/4 v1, 0x0

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_17

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_16

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_17

    :cond_16
    const/4 v4, 0x1

    goto :goto_9

    :cond_17
    move v4, v13

    :goto_9
    move v9, v4

    if-eqz v9, :cond_23

    iget-object v13, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_19

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v24, v0

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    const/16 v19, 0x1

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v4, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_18
    move/from16 v23, v1

    move/from16 v19, v2

    move v0, v3

    goto/16 :goto_b

    :cond_19
    move/from16 v24, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v4}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    if-eq v0, v4, :cond_20

    const/4 v1, 0x1

    :cond_20
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_21

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_18

    :cond_21
    const/4 v0, 0x1

    invoke-static {v11}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v19

    if-eqz v19, :cond_22

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move/from16 v26, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v2, v4, Landroid/graphics/Point;->y:I

    nop

    move/from16 v23, v1

    move/from16 v19, v2

    :goto_a
    move/from16 v24, v26

    goto :goto_b

    :cond_22
    move/from16 v26, v0

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v7, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v3

    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-direct {v7, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v0

    move/from16 v19, v0

    move/from16 v23, v1

    move v0, v3

    goto :goto_a

    :goto_b
    move-object v1, v7

    move-object v2, v8

    move-object v3, v11

    move/from16 v27, v10

    const/4 v10, -0x2

    move-object v4, v13

    move-object/from16 v29, v5

    move v5, v0

    move-object/from16 v21, v6

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int v1, v24, v1

    move v13, v0

    move/from16 v24, v1

    goto :goto_c

    :cond_23
    move/from16 v24, v0

    move-object/from16 v29, v5

    move-object/from16 v21, v6

    move/from16 v27, v10

    const/4 v10, -0x2

    move/from16 v23, v1

    move v6, v2

    move v13, v3

    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v0

    if-eqz v0, :cond_24

    move-object/from16 v17, v11

    :cond_24
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v0, :cond_25

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    move-object/from16 v17, v11

    :cond_25
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_26

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v0, :cond_2a

    :cond_26
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    iget v0, v7, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_2a

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_28

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_27

    const/16 v2, 0x10

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    if-nez v2, :cond_29

    const/16 v2, 0x20

    :cond_29
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    if-eq v0, v2, :cond_2a

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, -0xf1

    or-int/2addr v0, v2

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v17, v11

    :cond_2a
    move-object/from16 v5, v17

    if-eqz v5, :cond_2d

    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2b

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, -0x3

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    :cond_2b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_e

    :cond_2c
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    :cond_2d
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v0, :cond_2e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v1, v7

    move-object v2, v8

    move-object v3, v11

    move-object/from16 v30, v5

    move v5, v13

    move/from16 v31, v6

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v0

    or-int v24, v24, v0

    goto :goto_f

    :cond_2e
    move-object/from16 v30, v5

    move/from16 v31, v6

    :goto_f
    if-eqz v9, :cond_2f

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    :cond_2f
    if-eqz v9, :cond_35

    if-eqz v24, :cond_35

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_34

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_34

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v10, :cond_31

    move-object/from16 v6, v29

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v0, v13, :cond_32

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v0, v1, :cond_30

    goto :goto_10

    :cond_30
    move/from16 v10, v31

    goto :goto_11

    :cond_31
    move-object/from16 v6, v29

    :cond_32
    :goto_10
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v10, :cond_33

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    move/from16 v10, v31

    if-ge v0, v10, :cond_36

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v0, v1, :cond_36

    goto :goto_11

    :cond_33
    move/from16 v10, v31

    goto :goto_12

    :cond_34
    move-object/from16 v6, v29

    move/from16 v10, v31

    :goto_11
    const/4 v0, 0x1

    goto :goto_13

    :cond_35
    move-object/from16 v6, v29

    move/from16 v10, v31

    :cond_36
    :goto_12
    const/4 v0, 0x0

    :goto_13
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_37

    iget v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-nez v1, :cond_37

    const/4 v1, 0x1

    goto :goto_14

    :cond_37
    const/4 v1, 0x0

    :goto_14
    or-int/2addr v0, v1

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    or-int v17, v0, v1

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v0, :cond_38

    goto :goto_15

    :cond_38
    const/4 v0, 0x0

    goto :goto_16

    :cond_39
    :goto_15
    const/4 v0, 0x1

    :goto_16
    move/from16 v19, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getGenerationId()I

    move-result v5

    if-nez v12, :cond_3a

    const/4 v3, 0x1

    goto :goto_17

    :cond_3a
    const/4 v3, 0x0

    :goto_17
    move/from16 v25, v3

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v3, :cond_3d

    if-nez v17, :cond_3d

    if-nez v23, :cond_3d

    if-nez v14, :cond_3d

    move-object/from16 v3, v30

    if-nez v3, :cond_3c

    move/from16 v32, v0

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    if-eqz v0, :cond_3b

    goto :goto_18

    :cond_3b
    invoke-direct {v7, v6}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    move-object/from16 v41, v3

    move/from16 v43, v4

    move/from16 v53, v5

    move/from16 v38, v10

    move/from16 v50, v27

    move-object v10, v6

    goto/16 :goto_3d

    :cond_3c
    move/from16 v32, v0

    goto :goto_18

    :cond_3d
    move/from16 v32, v0

    move-object/from16 v3, v30

    :goto_18
    move/from16 v33, v1

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    if-eqz v25, :cond_40

    if-eqz v19, :cond_3f

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_3e

    if-eqz v14, :cond_3f

    :cond_3e
    const/4 v0, 0x1

    goto :goto_19

    :cond_3f
    const/4 v0, 0x0

    :goto_19
    move v1, v0

    goto :goto_1a

    :cond_40
    move/from16 v1, v32

    :goto_1a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_41

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move/from16 v34, v2

    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    goto :goto_1b

    :cond_41
    move/from16 v34, v2

    :goto_1b
    const/4 v2, 0x0

    const/16 v26, 0x0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v29

    const/4 v0, 0x0

    sget-boolean v30, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v30, :cond_42

    move/from16 v35, v0

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mRemoteImAnimating:Z

    if-eqz v0, :cond_43

    if-nez v14, :cond_43

    const/4 v0, 0x1

    move/from16 v35, v0

    goto :goto_1c

    :cond_42
    move/from16 v35, v0

    :cond_43
    :goto_1c
    if-nez v35, :cond_48

    :try_start_0
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_9

    if-eqz v0, :cond_45

    :try_start_1
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move/from16 v36, v2

    :try_start_2
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/ViewRootImpl;->mWidth:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v37, v9

    :try_start_3
    iget v9, v7, Landroid/view/ViewRootImpl;->mHeight:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v38, v10

    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v0, v10, v10, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1d

    :catch_0
    move-exception v0

    move/from16 v38, v10

    move/from16 v39, v1

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    move/from16 v40, v33

    goto/16 :goto_31

    :cond_44
    move/from16 v37, v9

    move/from16 v38, v10

    :goto_1d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v9, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/view/FrameInfo;->addFlags(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1e

    :catch_1
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    move/from16 v40, v33

    goto/16 :goto_31

    :catch_2
    move-exception v0

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v1

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    move/from16 v40, v33

    goto/16 :goto_31

    :catch_3
    move-exception v0

    move/from16 v36, v2

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v1

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    move/from16 v40, v33

    goto/16 :goto_31

    :cond_45
    move/from16 v36, v2

    move/from16 v37, v9

    move/from16 v38, v10

    :goto_1e
    :try_start_5
    invoke-direct {v7, v3, v12, v1}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8

    move v2, v0

    :try_start_6
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Relayout returned: old=%s new=%s result=0x%s surface={%s} changed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->getGenerationId()I

    move-result v10

    if-eq v5, v10, :cond_46

    const/4 v10, 0x1

    goto :goto_1f

    :cond_46
    const/4 v10, 0x0

    :goto_1f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v18, v10, v22

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v30

    const/16 v20, 0x1

    aput-object v30, v10, v20

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v28, 0x2

    aput-object v30, v10, v28
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7

    const/16 v30, 0x3

    move/from16 v39, v1

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    move/from16 v40, v2

    :try_start_8
    const-string/jumbo v2, "valid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v41, v3

    :try_start_9
    iget-wide v2, v2, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v30

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_47

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", windowAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-direct {v7, v0, v1, v2}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v2, 0x1

    move/from16 v34, v2

    goto/16 :goto_20

    :catch_4
    move-exception v0

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    goto/16 :goto_31

    :catch_5
    move-exception v0

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    goto/16 :goto_31

    :catch_6
    move-exception v0

    move/from16 v40, v2

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    goto/16 :goto_31

    :catch_7
    move-exception v0

    move/from16 v40, v2

    move/from16 v39, v1

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    goto/16 :goto_31

    :catch_8
    move-exception v0

    move/from16 v39, v1

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    move/from16 v40, v33

    goto/16 :goto_31

    :catch_9
    move-exception v0

    move/from16 v36, v2

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v1

    move-object/from16 v41, v3

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    move/from16 v40, v33

    goto/16 :goto_31

    :cond_48
    move/from16 v39, v1

    move/from16 v36, v2

    move-object/from16 v41, v3

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v40, v33

    :cond_49
    :goto_20
    :try_start_a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move v9, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v26, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move v10, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v30, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v31, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v32, v0

    and-int/lit8 v0, v40, 0x20

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_21

    :cond_4a
    const/4 v0, 0x0

    :goto_21
    move/from16 v33, v0

    or-int v16, v16, v33

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1a

    if-eq v0, v1, :cond_4b

    const/4 v0, 0x1

    goto :goto_22

    :cond_4b
    const/4 v0, 0x0

    :goto_22
    move/from16 v42, v0

    if-eqz v26, :cond_4c

    :try_start_b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4c
    if-eqz v9, :cond_4d

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    move/from16 v26, v0

    :cond_4d
    if-eqz v30, :cond_4e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    move/from16 v26, v0

    :cond_4e
    if-eqz v31, :cond_4f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    const/4 v0, 0x1

    move/from16 v26, v0

    :cond_4f
    if-eqz v42, :cond_50

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    const/4 v0, 0x1

    move/from16 v26, v0

    :cond_50
    if-nez v26, :cond_51

    iget v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v0, v1, :cond_51

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-nez v0, :cond_51

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mOverscanRequested:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    if-ne v0, v1, :cond_51

    if-eqz v32, :cond_52

    :cond_51
    :try_start_c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1a

    :cond_52
    if-eqz v10, :cond_53

    :try_start_d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4

    :cond_53
    if-nez v29, :cond_58

    :try_start_e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_14

    if-eqz v0, :cond_57

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_f
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_13

    if-eqz v0, :cond_56

    :try_start_10
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0
    :try_end_10
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_13

    move v2, v0

    :try_start_11
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_54

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_f

    move/from16 v43, v1

    :try_start_12
    const-string/jumbo v1, "mThreadedRenderer.initialize() mSurface={%s} hwInitialized="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_c

    move-object/from16 v44, v6

    const/4 v3, 0x1

    :try_start_13
    new-array v6, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_12

    move/from16 v45, v9

    :try_start_14
    const-string/jumbo v9, "isValid="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    :try_end_14
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_12

    move/from16 v46, v10

    :try_start_15
    iget-wide v9, v9, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_a
    move-exception v0

    move/from16 v46, v10

    goto/16 :goto_25

    :catch_b
    move-exception v0

    move/from16 v45, v9

    move/from16 v46, v10

    goto :goto_25

    :catch_c
    move-exception v0

    move/from16 v36, v2

    move v9, v5

    move-object v10, v6

    move/from16 v27, v43

    move/from16 v43, v4

    goto/16 :goto_27

    :catch_d
    move-exception v0

    move-object/from16 v44, v6

    move/from16 v45, v9

    move/from16 v46, v10

    goto :goto_25

    :cond_54
    move/from16 v43, v1

    move-object/from16 v44, v6

    move/from16 v45, v9

    move/from16 v46, v10

    :goto_23
    if-eqz v2, :cond_55

    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_55

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_15
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_24

    :catch_e
    move-exception v0

    goto :goto_25

    :cond_55
    :goto_24
    nop

    move/from16 v36, v2

    move/from16 v10, v43

    goto/16 :goto_29

    :catch_f
    move-exception v0

    move/from16 v43, v1

    move/from16 v36, v2

    goto :goto_26

    :catch_10
    move-exception v0

    move/from16 v43, v1

    move-object/from16 v44, v6

    move/from16 v45, v9

    move/from16 v46, v10

    goto :goto_25

    :catch_11
    move-exception v0

    move/from16 v43, v1

    move-object/from16 v44, v6

    move/from16 v45, v9

    move/from16 v46, v10

    move/from16 v2, v36

    :goto_25
    :try_start_16
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_12

    return-void

    :catch_12
    move-exception v0

    move/from16 v36, v2

    move v9, v5

    move/from16 v27, v43

    move-object/from16 v10, v44

    move/from16 v43, v4

    goto/16 :goto_31

    :cond_56
    move/from16 v43, v1

    move-object/from16 v44, v6

    move/from16 v45, v9

    move/from16 v46, v10

    move/from16 v10, v43

    goto/16 :goto_29

    :catch_13
    move-exception v0

    move/from16 v43, v1

    :goto_26
    move v9, v5

    move-object v10, v6

    move/from16 v27, v43

    move/from16 v43, v4

    goto/16 :goto_31

    :cond_57
    move-object/from16 v44, v6

    move/from16 v45, v9

    move/from16 v46, v10

    goto/16 :goto_28

    :catch_14
    move-exception v0

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    :goto_27
    goto/16 :goto_31

    :cond_58
    move-object/from16 v44, v6

    move/from16 v45, v9

    move/from16 v46, v10

    :try_start_17
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_19

    if-nez v0, :cond_5c

    :try_start_18
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_59

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_59
    const/4 v1, 0x0

    iput v1, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_5a

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v1, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v0, v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    :cond_5a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_5b

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_5f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_5f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mThreadedRenderer.destroy()#3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_15

    goto :goto_28

    :catch_15
    move-exception v0

    move/from16 v43, v4

    move v9, v5

    move-object/from16 v10, v44

    goto/16 :goto_31

    :cond_5c
    :try_start_19
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-ne v5, v0, :cond_5d

    if-nez v33, :cond_5d

    if-eqz v4, :cond_5f

    :cond_5d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    if-nez v0, :cond_5f

    :try_start_1a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_5f

    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_15

    :try_start_1b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_5e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mThreadedRenderer.updateSurface() mSurface={%s}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-wide v9, v6, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1b .. :try_end_1b} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_15

    :cond_5e
    goto :goto_28

    :catch_16
    move-exception v0

    :try_start_1c
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_15

    return-void

    :cond_5f
    :goto_28
    move/from16 v10, v27

    :goto_29
    and-int/lit8 v0, v40, 0x10

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    goto :goto_2a

    :cond_60
    const/4 v0, 0x0

    :goto_2a
    and-int/lit8 v1, v40, 0x8

    if-eqz v1, :cond_61

    const/4 v1, 0x1

    goto :goto_2b

    :cond_61
    const/4 v1, 0x0

    :goto_2b
    move v9, v1

    if-nez v0, :cond_63

    if-eqz v9, :cond_62

    goto :goto_2c

    :cond_62
    const/4 v1, 0x0

    goto :goto_2d

    :cond_63
    :goto_2c
    const/4 v1, 0x1

    :goto_2d
    move v6, v1

    :try_start_1d
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eq v1, v6, :cond_66

    if-eqz v6, :cond_65

    if-eqz v0, :cond_64

    nop

    const/4 v1, 0x0

    goto :goto_2e

    :cond_64
    const/4 v1, 0x1

    :goto_2e
    iput v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move/from16 v47, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move/from16 v48, v6

    iget v6, v7, Landroid/view/ViewRootImpl;->mResizeMode:I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_18

    move-object/from16 v27, v1

    move-object v1, v7

    move/from16 v43, v4

    move-object/from16 v4, v27

    move/from16 v49, v9

    move v9, v5

    move-object v5, v0

    move/from16 v50, v10

    move-object/from16 v10, v44

    move/from16 v0, v48

    :try_start_1e
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_2f

    :cond_65
    move/from16 v47, v0

    move/from16 v43, v4

    move v0, v6

    move/from16 v49, v9

    move/from16 v50, v10

    move-object/from16 v10, v44

    move v9, v5

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    goto :goto_2f

    :cond_66
    move/from16 v47, v0

    move/from16 v43, v4

    move v0, v6

    move/from16 v49, v9

    move/from16 v50, v10

    move-object/from16 v10, v44

    move v9, v5

    :goto_2f
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v1, :cond_68

    if-eqz v0, :cond_67

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    goto :goto_30

    :cond_67
    const/4 v1, 0x0

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_17

    :cond_68
    :goto_30
    goto :goto_32

    :catch_17
    move-exception v0

    move/from16 v27, v50

    goto :goto_31

    :catch_18
    move-exception v0

    move/from16 v43, v4

    move v9, v5

    move/from16 v50, v10

    move-object/from16 v10, v44

    move/from16 v27, v50

    goto :goto_31

    :catch_19
    move-exception v0

    move/from16 v43, v4

    move v9, v5

    move-object/from16 v10, v44

    goto :goto_31

    :catch_1a
    move-exception v0

    move/from16 v43, v4

    move v9, v5

    move-object v10, v6

    :goto_31
    move/from16 v50, v27

    :goto_32
    move/from16 v2, v34

    move/from16 v1, v40

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v0, v3, :cond_69

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v0, v3, :cond_6a

    :cond_69
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    :cond_6a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_73

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v3, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    :cond_6b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_71

    if-nez v29, :cond_6d

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    const/4 v3, 0x1

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v3, "ViewRootImpl >> surfaceCreated"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_6c

    array-length v3, v0

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_6c

    aget-object v5, v0, v4

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_6c
    const/16 v16, 0x1

    :cond_6d
    if-nez v16, :cond_6f

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-eq v9, v0, :cond_6e

    goto :goto_34

    :cond_6e
    move/from16 v53, v9

    goto :goto_36

    :cond_6f
    :goto_34
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v3, "ViewRootImpl >> surfaceChanged W=%d, H=%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    if-eqz v0, :cond_70

    array-length v3, v0

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v3, :cond_70

    aget-object v5, v0, v4

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v51, v0

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v52, v3

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v53, v9

    iget v9, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v5, v6, v0, v3, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v51

    move/from16 v3, v52

    move/from16 v9, v53

    goto :goto_35

    :cond_70
    move/from16 v53, v9

    :goto_36
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    goto :goto_38

    :cond_71
    move/from16 v53, v9

    if-eqz v29, :cond_74

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "ViewRootImpl >> surfaceDestroyed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_72

    array-length v0, v3

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v0, :cond_72

    aget-object v5, v3, v4

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_72
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4}, Landroid/view/Surface;-><init>()V

    iput-object v4, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_38

    :catchall_0
    move-exception v0

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_73
    move/from16 v53, v9

    :cond_74
    :goto_38
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_76

    if-nez v36, :cond_75

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_75

    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_75

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    if-eqz v3, :cond_76

    :cond_75
    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    :cond_76
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v3, :cond_77

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v3, :cond_7a

    :cond_77
    if-nez v35, :cond_79

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_78

    const/4 v3, 0x1

    goto :goto_39

    :cond_78
    nop

    const/4 v3, 0x0

    :goto_39
    invoke-direct {v7, v3}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v3

    if-eqz v3, :cond_79

    const/4 v3, 0x1

    goto :goto_3a

    :cond_79
    const/4 v3, 0x0

    :goto_3a
    if-nez v3, :cond_7b

    iget v4, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_7b

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_7b

    if-nez v26, :cond_7b

    if-eqz v2, :cond_7a

    goto :goto_3b

    :cond_7a
    move/from16 v55, v1

    move/from16 v9, v37

    goto :goto_3c

    :cond_7b
    :goto_3b
    iget v4, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v4

    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget v6, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v5

    invoke-direct {v7, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/16 v27, 0x0

    move-object/from16 v54, v0

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/16 v28, 0x0

    cmpl-float v0, v0, v28

    move/from16 v55, v1

    if-lez v0, :cond_7c

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/16 v27, 0x1

    :cond_7c
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v0, v0, v28

    if-lez v0, :cond_7d

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int/2addr v0, v9

    int-to-float v0, v0

    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v9, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/16 v27, 0x1

    :cond_7d
    if-eqz v27, :cond_7e

    invoke-direct {v7, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    :cond_7e
    const/4 v0, 0x1

    move v9, v0

    :goto_3c
    move/from16 v32, v39

    move/from16 v1, v55

    :goto_3d
    if-eqz v9, :cond_80

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_80

    :cond_7f
    const/4 v0, 0x1

    goto :goto_3e

    :cond_80
    const/4 v0, 0x0

    :goto_3e
    move v3, v0

    if-nez v3, :cond_82

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v0, :cond_81

    goto :goto_3f

    :cond_81
    const/4 v0, 0x0

    goto :goto_40

    :cond_82
    :goto_3f
    const/4 v0, 0x1

    :goto_40
    move v4, v0

    if-eqz v3, :cond_86

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-direct {v7, v11, v0, v5}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_86

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v20, 0x1

    aget v6, v6, v20

    move/from16 v56, v2

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v22, 0x0

    aget v2, v2, v22

    move/from16 v57, v3

    iget v3, v8, Landroid/view/View;->mRight:I

    add-int/2addr v2, v3

    iget v3, v8, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    aget v3, v3, v20

    move/from16 v58, v9

    iget v9, v8, Landroid/view/View;->mBottom:I

    add-int/2addr v3, v9

    iget v9, v8, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v9

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v0}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_83

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_84

    :cond_83
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->translate(II)V

    :cond_84
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_85

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    :cond_85
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :try_start_20
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_1b

    goto :goto_41

    :catch_1b
    move-exception v0

    goto :goto_41

    :cond_86
    move/from16 v56, v2

    move/from16 v57, v3

    move/from16 v58, v9

    :cond_87
    :goto_41
    if-eqz v4, :cond_88

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    :cond_88
    if-eqz v19, :cond_8b

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-nez v32, :cond_89

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    :cond_89
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_8a

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v5

    :goto_42
    move-object/from16 v31, v5

    move-object v5, v3

    move-object v3, v0

    goto :goto_43

    :cond_8a
    iget-object v0, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    goto :goto_42

    :goto_43
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mRemoteImAnimating:Z

    if-nez v0, :cond_8b

    :try_start_21
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v9, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move-object/from16 v26, v0

    move-object/from16 v27, v6

    move/from16 v28, v9

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    invoke-interface/range {v26 .. v31}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_1c

    goto :goto_44

    :catch_1c
    move-exception v0

    :cond_8b
    :goto_44
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_8e

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_8d

    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_45

    :cond_8c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8e

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_8e

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    goto :goto_46

    :cond_8d
    :goto_45
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_8e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    :cond_8e
    :goto_46
    if-nez v14, :cond_8f

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_90

    :cond_8f
    if-eqz v25, :cond_90

    const/4 v0, 0x1

    goto :goto_47

    :cond_90
    const/4 v0, 0x0

    :goto_47
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_91

    if-eqz v25, :cond_91

    const/4 v2, 0x1

    goto :goto_48

    :cond_91
    const/4 v2, 0x0

    :goto_48
    if-eqz v2, :cond_92

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    if-eqz v3, :cond_92

    const/4 v3, 0x1

    goto :goto_49

    :cond_92
    const/4 v3, 0x0

    :goto_49
    if-eqz v3, :cond_93

    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    goto :goto_4a

    :cond_93
    if-nez v2, :cond_94

    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v5, :cond_94

    const/4 v5, 0x1

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    :cond_94
    :goto_4a
    if-nez v0, :cond_95

    if-eqz v3, :cond_98

    :cond_95
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v5, :cond_96

    :goto_4b
    const/4 v5, 0x0

    goto :goto_4c

    :cond_96
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d5

    if-ne v5, v6, :cond_97

    const/4 v5, 0x1

    goto :goto_4c

    :cond_97
    goto :goto_4b

    :goto_4c
    if-nez v5, :cond_98

    const/16 v6, 0x20

    invoke-virtual {v8, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_98
    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    iput v12, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v2, :cond_9a

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v5

    if-nez v5, :cond_9a

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v5

    iget-boolean v6, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eq v5, v6, :cond_9a

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    if-eqz v6, :cond_9a

    if-eqz v5, :cond_9a

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    sget-boolean v26, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v26, :cond_99

    move/from16 v59, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    move/from16 v60, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v61, v4

    const-string/jumbo v4, "onPreWindowFocus() & onPostWindowFocus() hasWindowFocus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " focusedView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mWindowAttributes.flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mayUseInputMethod="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_99
    move/from16 v59, v0

    move/from16 v60, v3

    move/from16 v61, v4

    :goto_4d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v28

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    const/4 v9, 0x1

    xor-int/lit8 v30, v4, 0x1

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v26, v6

    move-object/from16 v27, v0

    move/from16 v29, v3

    move/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    goto :goto_4e

    :cond_9a
    move/from16 v59, v0

    move/from16 v60, v3

    move/from16 v61, v4

    const/4 v9, 0x1

    :goto_4e
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_9b

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    :cond_9b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v0

    if-nez v0, :cond_9d

    if-nez v25, :cond_9c

    goto :goto_4f

    :cond_9c
    const/4 v9, 0x0

    nop

    :cond_9d
    :goto_4f
    move v0, v9

    if-nez v0, :cond_a0

    if-nez v50, :cond_a0

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v3, :cond_9f

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9f

    const/4 v3, 0x0

    :goto_50
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9e

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_9e
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_9f
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    goto :goto_52

    :cond_a0
    if-eqz v25, :cond_a1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_52

    :cond_a1
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v3, :cond_a3

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a3

    const/4 v3, 0x0

    :goto_51
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a2

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_a2
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_a3
    :goto_52
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mNeedToApplyTransacaction:Z

    if-eqz v3, :cond_a4

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->commitPendingTransaction()V

    :cond_a4
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    return-void

    :cond_a5
    :goto_53
    return-void
.end method

.method private postDrawFinished()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    return-void
.end method

.method private processDirectPenInputKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getCurrentDirectPenInputView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->dismiss(Z)V

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private profileRendering(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    :cond_3
    :goto_0
    return-void
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/4 v1, 0x0

    if-eqz v15, :cond_0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v15}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    move/from16 v23, v1

    if-eqz v15, :cond_1

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_1
    const-wide/16 v1, -0x1

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getNextFrameNumber()J

    move-result-wide v1

    :cond_2
    move-wide/from16 v24, v1

    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v1, :cond_4

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isRemoteImAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->createSynchronizedImAnimationAdapter()V

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v15, v1}, Landroid/view/WindowManager$LayoutParams;->addRemoteWindowAnimationAdapter(Lcom/samsung/android/view/RemoteWindowAnimationAdapter;)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->clearSynchronizedImAnimationAdapter()V

    iget-boolean v1, v15, Landroid/view/WindowManager$LayoutParams;->hasRemoteWindowAnimationAdapter:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/view/WindowManager$LayoutParams;->addRemoteWindowAnimationAdapter(Lcom/samsung/android/view/RemoteWindowAnimationAdapter;)V

    :cond_4
    :goto_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v6, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    add-float/2addr v4, v5

    float-to-int v7, v4

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    move/from16 v26, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v27, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v28, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mTranslatedPoint:Landroid/graphics/PointF;

    move-object/from16 v29, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mConventionalModeInfo:Lcom/samsung/android/view/ConventionalModeBar$Info;

    move-object/from16 v18, v4

    move-object v4, v15

    move-object/from16 v17, v5

    move v5, v6

    move v6, v7

    move/from16 v7, p2

    move-object/from16 v16, v8

    move/from16 v8, p3

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-wide/from16 v9, v24

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    invoke-interface/range {v1 .. v22}, Landroid/view/IWindowSession;->relayoutForTranslate(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;Landroid/graphics/PointF;Lcom/samsung/android/view/ConventionalModeBar$Info;)I

    move-result v1

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayCutout;->mLetterboxDirection:I

    iput v2, v0, Landroid/view/ViewRootImpl;->mLetterboxDirection:I

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->generateDexCompatTranslatorIfNeeded()V

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->savePositionInScreen(II)Z

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->translateToWindow(Landroid/graphics/Rect;)V

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->translateToWindow(Landroid/graphics/Rect;)V

    :cond_6
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_7

    move v3, v4

    nop

    :cond_7
    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    if-eqz v23, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_8
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    :cond_9
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_a
    return v1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reportDrawFinished()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private reportNextDraw()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->drawPending()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private semCreateMWBG()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Landroid/view/SurfaceSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BG - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v2, "MultiWindowBackground creation failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private semDestroyMWBG()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    :cond_0
    return-void
.end method

.method static semIsInMouseStylusMode()Z
    .locals 3

    sget-boolean v0, Landroid/view/ViewRootImpl;->SUPPORT_IN_MOUSESTYLUS_MODE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->semGetInMouseStylusMode()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    :cond_1
    return v1
.end method

.method private semUpdateMWBG()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mMWBGWidth:I

    iget v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mMWBGHeight:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsLeft:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mMWBGSurfaceInsetsTop:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v2, "Cannot control background surface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private sendUserActionEvent()V
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "ViewRootImpl"

    const-string/jumbo v1, "sendUserActionEvent() returned."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "0"

    const-string v1, "0"

    const-string/jumbo v2, "gsm.sim.userEvent"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v0, v3, v4

    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v5, v4, :cond_2

    aget-object v4, v3, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v1, v3, v5

    :cond_2
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.internal.stk.event"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "STK EVENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method private setTag()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewRootImpl@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e4

    if-ne v0, v1, :cond_0

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

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 9

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/WindowCallbacks;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    :cond_1
    return-void
.end method

.method private startRemoteImAnimation()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->startRemoteImAnimation(IIZ)V

    return-void
.end method

.method private startRemoteImAnimation(IIZ)V
    .locals 5

    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] startRemoteImAnimation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), Started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", HadResized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mRemoteImHadResized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", HadRunner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mRemoteImHadRunner:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoteImHadResized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoteImHadRunner:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInputMethodAnimationRunning:Z

    if-eqz v0, :cond_3

    :cond_1
    if-nez p3, :cond_3

    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "Returned startRemoteImAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iput p1, p0, Landroid/view/ViewRootImpl;->mRemoteImFrom:I

    iput p2, p0, Landroid/view/ViewRootImpl;->mRemoteImTo:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->initRemoteImAnimator()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->cancelRemoteImAnimation()V

    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPreContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimating:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImFocus:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImFocus:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImFocus:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Landroid/view/ViewRootImpl;->mRemoteImFrom:I

    iget v4, p0, Landroid/view/ViewRootImpl;->mRemoteImTo:I

    if-ge v1, v4, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->semOnRemoteImAnimationStart(Z)V

    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRemoteImAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private trackFPS()V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v0, v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float/2addr v8, v9

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\tFPS:\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateContentDrawBounds()Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowCallbacks;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int v1, v0, v2

    return v1
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called after view was removed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_c

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-gez v5, :cond_c

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_c

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v4

    const/16 v5, 0x3e8

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/PointerIcon;->getType()I

    move-result v6

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v8

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    move v8, v9

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v10

    const/4 v11, 0x2

    if-ne v7, v11, :cond_4

    if-eqz v8, :cond_4

    move v1, v9

    nop

    :cond_4
    invoke-virtual {v10, v1}, Landroid/hardware/input/InputManager;->setIsStylusFromTouchpad(Z)V

    const/4 v1, 0x4

    if-eq v7, v1, :cond_8

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    if-eqz v1, :cond_6

    if-ne v6, v5, :cond_8

    if-ne v7, v11, :cond_5

    if-nez v8, :cond_5

    const/16 v6, 0x4e21

    goto :goto_2

    :cond_5
    const/16 v6, 0x2789

    goto :goto_2

    :cond_6
    if-ne v7, v11, :cond_7

    if-ne v6, v5, :cond_7

    const/16 v6, 0x4e21

    goto :goto_2

    :cond_7
    const/16 v1, 0x2789

    if-ne v6, v1, :cond_8

    const/16 v6, 0x3e8

    :cond_8
    :goto_2
    iget v1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/16 v5, 0x4e20

    const/4 v10, -0x1

    if-eq v1, v6, :cond_9

    iput v6, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v1, v10, :cond_9

    iget v1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v1, v5, :cond_9

    const-string v1, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePointerIcon pointerType = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", calling pid = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return v9

    :cond_9
    iget v1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v1, v10, :cond_a

    iget v1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-ne v1, v5, :cond_b

    :cond_a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v4, v1}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    const-string v1, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePointerIcon Custom PointerIcon = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", calling pid = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v1, v5}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    :cond_b
    return v9

    :cond_c
    :goto_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called with position out of bounds"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method clearSynchronizedImAnimationAdapter()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    :cond_0
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method createSynchronizedImAnimationAdapter()V
    .locals 4

    new-instance v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;-><init>(Landroid/view/ViewRootImpl;)V

    new-instance v1, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;-><init>(Lcom/samsung/android/view/IRemoteWindowAnimationRunner;J)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSynchronizedImAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    return-void
.end method

.method public debug()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "mThreadedRenderer.destroy()#1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    :cond_1
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v2, "dispatchDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is possible to occur CalledFromWrongThreadException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface release. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    :cond_5
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFinishMovingTask()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchMoved(II)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-int p2, v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->shouldApplyDexCompatTranslator()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->savePositionInScreen(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-virtual {v1, v0}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->translateToWindow(Landroid/graphics/Point;)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 3

    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSmartClipRemoteRequest : SmartClip dispatcher is null! req id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4

    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchWindowShown()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    :cond_1
    return-void
.end method

.method doDie()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    :cond_2
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_7

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    iget v4, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v4, v2, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    if-eqz v4, :cond_6

    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v5, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v5

    :cond_6
    :goto_2
    :try_start_2
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Surface release. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x8

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v2, v1, :cond_8

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v2, v4, :cond_8

    move v2, v1

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_9

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0xbb7

    if-gt v4, v5, :cond_9

    move v3, v1

    nop

    :cond_9
    if-nez v2, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/WindowManagerGlobal;->setChildWindowStopped(Landroid/os/IBinder;Z)V

    :cond_b
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method doProcessInputEvents()V
    .locals 9

    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :cond_0
    iput-object v3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v4, 0x4

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v4

    move-wide v6, v4

    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v6

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_5
    return-void
.end method

.method doTraversal()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_0

    const-string v1, "ViewAncestor"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    :cond_1
    return-void
.end method

.method drawPending()V
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsAmbientMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    const-string v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public dumpGfxInfo([I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p1, v1

    aput v0, p1, v0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    :cond_0
    iput-object v0, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    :goto_1
    return-void
.end method

.method ensureTouchMode(Z)Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_2

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentDirectPenInputView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDirectPenInputView:Landroid/view/View;

    return-object v0
.end method

.method public getDexCompatTranslator()Lcom/samsung/android/desktopmode/DexCompatTranslator;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    return v0
.end method

.method getHostVisibility()I
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLetterboxDirectionForDisplayCutout()I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mLetterboxDirection:I

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    return v0
.end method

.method public getWindowFlags()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 12

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    if-nez p1, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v2

    :cond_2
    move-object v9, v2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v2, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->top:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->right:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_4

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    :cond_4
    const-string v2, "content"

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v2, "stable"

    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v11, Landroid/view/WindowInsets;

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v6

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v2, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    move-object v2, v11

    move-object v3, v0

    move-object v5, v1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V

    iput-object v11, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    :cond_1
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 3

    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    :cond_2
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    :cond_3
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    :cond_0
    const-string/jumbo v2, "shortcuts_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return-void
.end method

.method hasPointerCapture()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    return v0
.end method

.method invalidate()V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    invoke-virtual {p2, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    return v0
.end method

.method isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isRemoteImAvailable()Z
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->semIsInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public loadSystemProperties()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    :cond_2
    return-void
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 9

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_a

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    iput v2, v1, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eq v8, v2, :cond_7

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    nop

    :cond_7
    :goto_4
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    goto :goto_6

    :cond_8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, v2, :cond_9

    goto :goto_5

    :cond_9
    move v3, v4

    :goto_5
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    :goto_6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    goto :goto_7

    :cond_a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new display instance is null #1 , displayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_7
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onWindowTitleChanged()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1

    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    :cond_0
    return-void
.end method

.method pendingDrawFinished()V
    .locals 2

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportDrawFinished()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unbalanced drawPending/pendingDrawFinished calls"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public playSoundEffect(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :pswitch_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown effect id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not defined in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/view/SoundEffectConstants;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    return-void
.end method

.method public profile()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public recreateActivity()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "recreateActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->semDestroyMWBG()V

    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public registerRtFrameCallback(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    :cond_0
    return-void
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportActivityRelaunched()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0

    :cond_0
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

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->shouldApplyDexCompatTranslator()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->translateToScreen(Landroid/graphics/Rect;)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    return-void
.end method

.method public requestLayout()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestLayoutDuringLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method requestPointerCapture(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_6

    const v1, 0x8000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_3
    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    invoke-virtual {p0, v4, v7}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_5
    goto :goto_0

    :cond_6
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v1, 0x1

    return v1

    :cond_7
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method resetSoftwareCaches(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->resetSoftwareCaches(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    const/4 v0, 0x1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SELECTIVE_POKE_DRAW_LOCK:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SELECTIVE_POKE_DRAW_LOCK:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mPokeDrawLockRequested:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mPokeDrawLockRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    :cond_3
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 11

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_a

    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v6

    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v5, v7

    :goto_0
    if-eq v4, v5, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-ne v4, v5, :cond_4

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v8, :cond_4

    if-nez p1, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez p1, :cond_5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "offsetDescendantRectToMyCoords() error occurred. focus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " mTempRect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    goto :goto_2

    :cond_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_6
    :goto_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_7

    goto :goto_4

    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_8

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    :goto_3
    move v2, v7

    goto :goto_4

    :cond_8
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_9

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    :cond_a
    :goto_5
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v2, v4, :cond_e

    if-nez p2, :cond_c

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v4, :cond_b

    new-instance v4, Landroid/widget/Scroller;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    :cond_b
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v7, v2, v7

    invoke-virtual {v4, v6, v5, v6, v7}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_6

    :cond_c
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_d
    :goto_6
    iput v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_e
    return v3
.end method

.method semDecreaseChildWindow()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDecreaseChildWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method semEnsureMouseStylusMode(Z)Z
    .locals 2

    sget-boolean v0, Landroid/view/ViewRootImpl;->SUPPORT_IN_MOUSESTYLUS_MODE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->semSetInMouseStylusMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method semIncreaseChildWindow()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mIncreaseChildWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method semIsInMultiWindowMode()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method semIsShownMWBG()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mMWBG:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method semRequestMWBG()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mRequestedMWBG:Z

    :cond_0
    return-void
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v1, 0x40

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    nop

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_3
    return-void
.end method

.method public setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    return-void
.end method

.method public setCurrentDirectPenInputView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDirectPenInputView:Landroid/view/View;

    return-void
.end method

.method public setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    if-nez v0, :cond_2

    iget v0, p2, Landroid/view/DragEvent;->mX:F

    iget v1, p2, Landroid/view/DragEvent;->mY:F

    iget v2, p2, Landroid/view/DragEvent;->mAction:I

    iget-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    const/4 v4, 0x0

    iput v4, p2, Landroid/view/DragEvent;->mX:F

    iput v4, p2, Landroid/view/DragEvent;->mY:F

    const/4 v4, 0x0

    iput-object v4, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 v4, 0x5

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    :cond_1
    iput v2, p2, Landroid/view/DragEvent;->mAction:I

    iput v0, p2, Landroid/view/DragEvent;->mX:F

    iput v1, p2, Landroid/view/DragEvent;->mY:F

    iput-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    return-void
.end method

.method public setForceDraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDraw:Z

    return-void
.end method

.method public setIsAmbientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v5, v5, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v6, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x80

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    :cond_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v9, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v9, v6

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v5, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    goto :goto_0

    :cond_3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v7, v0, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v7, v1, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ne v7, v2, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v3, :cond_5

    :cond_4
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    :cond_5
    :goto_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p2, :cond_6

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_6
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0xf0

    if-nez v7, :cond_7

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v9, v9, -0xf1

    and-int/lit16 v10, v4, 0xf0

    or-int/2addr v9, v10

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :cond_7
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    return-void
.end method

.method public setReportNextDraw()V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

.method public setTspDeadzone(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SMART_EDGE_ZONE:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The view is not attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1b

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mMWBGParentDecorView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    iput v4, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v0, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    instance-of v0, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v7}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    iget-boolean v0, v4, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    const/4 v7, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v4, v2, v6, v7}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    :cond_2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v0, :cond_4

    invoke-direct {v1, v4}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_0
    iget-boolean v9, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eq v9, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    :cond_4
    const/4 v0, 0x0

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v9, :cond_5

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v9, v10}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    const/4 v0, 0x1

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->backup()V

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v9, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    move v9, v0

    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    :cond_6
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    const/4 v0, -0x1

    iput v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v10, :cond_7

    move v10, v7

    goto :goto_1

    :cond_7
    move v10, v6

    :goto_1
    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v10, :cond_8

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v10, v10, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    :goto_2
    iput v10, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    if-eqz v3, :cond_9

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v10

    iput-object v10, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    :cond_9
    iput-boolean v7, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    :cond_a
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    move v0, v7

    goto :goto_3

    :cond_b
    move v0, v6

    :goto_3
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v10, v5

    :try_start_2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v10, v0

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v13, v1, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v14, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v15

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v16

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v25, v8

    :try_start_3
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v3

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    invoke-interface/range {v11 .. v23}, Landroid/view/IWindowSession;->addToDisplayForTranslate(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/os/Bundle;)I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_c

    :try_start_4
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_c
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_d

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_d
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3, v5}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    if-gez v0, :cond_f

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    invoke-virtual {v1, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    packed-switch v0, :pswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    goto/16 :goto_5

    :pswitch_0
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not valid; is your activity running?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not for an application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- app for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_3
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_4
    monitor-exit p0

    return-void

    :pswitch_5
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- another window of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_6
    new-instance v3, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- permission denied for window type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_7
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- the specified display can not be found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_8
    new-instance v3, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- the specified window type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v3

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- unknown error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    instance-of v3, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v3

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    :cond_10
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_12

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v3, :cond_11

    new-instance v3, Landroid/view/InputQueue;

    invoke-direct {v3}, Landroid/view/InputQueue;-><init>()V

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v3, v5}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    :cond_11
    new-instance v3, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v1, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    :cond_12
    invoke-virtual {v2, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_6

    :cond_13
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_7

    :cond_14
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    iget-boolean v3, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v3, :cond_15

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {}, Landroid/view/ViewRootImpl;->semIsInMouseStylusMode()Z

    move-result v5

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    :cond_15
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_8

    :cond_17
    const/4 v3, 0x1

    :goto_8
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " TM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " MM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v7, Landroid/view/View$AttachInfo;->mInMouseStylusMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/view/ViewRootImpl$SyntheticInputStage;

    invoke-direct {v6, v1}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v6, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    new-instance v6, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    iget-object v7, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-direct {v6, v1, v7}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v7, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "aq:native-post-ime:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v6, v8}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    new-instance v8, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    invoke-direct {v8, v1, v7}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v11, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "aq:ime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v1, v8, v12}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    new-instance v12, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    invoke-direct {v12, v1, v11}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    new-instance v13, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "aq:native-pre-ime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v1, v12, v14}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    iput-object v13, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    iput-object v8, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "aq:pending:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    const/high16 v14, 0x20000

    and-int/2addr v14, v0

    if-eqz v14, :cond_18

    move/from16 v24, v3

    goto :goto_9

    :cond_18
    const/16 v24, 0x0

    :goto_9
    move/from16 v3, v24

    iget-boolean v14, v1, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    if-eqz v14, :cond_19

    if-eqz v3, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->generateDexCompatTranslatorIfNeeded()V

    :cond_19
    nop

    const-string v3, "coverOpen"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v14, v1, Landroid/view/ViewRootImpl;->mIsCoverOpen:Z

    if-eq v3, v14, :cond_1c

    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mIsCoverOpen:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object/from16 v25, v8

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v25, v8

    :goto_a
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v5, "Failed mWindowSession.addToDisplay() mView = null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iput-object v5, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    invoke-virtual {v1, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :goto_b
    if-eqz v9, :cond_1a

    :try_start_6
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_1a
    throw v0

    :cond_1b
    move-object/from16 v4, p2

    :cond_1c
    :goto_c
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v4, p2

    :goto_d
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_d

    nop

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowStopped(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWindowStopped("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    :cond_2
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoteImHadRunner:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_REMOTE_IM_ANIM:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RemoteIm] Clear RemoteImAnimation in setWindowStopped("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->invokeRemoteWindowAnimationCallback()V

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->clearRemoteWindowAnimation()V

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$WindowStoppedCallback;

    invoke-interface {v2, p1}, Landroid/view/ViewRootImpl$WindowStoppedCallback;->windowStopped(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface release. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method shouldApplyDexCompatTranslator()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDesktopMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDexCompatTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public touchFocusTransferred()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateConfiguration(I)V
    .locals 7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new display instance is null #2 , displayId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v5, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-eq v3, v4, :cond_4

    iget v5, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_5
    return-void
.end method

.method public updatePointerIcon(FF)V
    .locals 13

    const/16 v0, 0x1b

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const-wide/16 v3, 0x0

    const/4 v7, 0x7

    const/4 v10, 0x0

    move-wide v5, v11

    move v8, p1

    move v9, p2

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
