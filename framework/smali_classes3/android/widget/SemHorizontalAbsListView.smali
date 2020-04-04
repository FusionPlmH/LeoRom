.class public abstract Landroid/widget/SemHorizontalAbsListView;
.super Landroid/widget/AdapterView;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;,
        Landroid/widget/SemHorizontalAbsListView$PositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$RecycleBin;,
        Landroid/widget/SemHorizontalAbsListView$RecyclerListener;,
        Landroid/widget/SemHorizontalAbsListView$LayoutParams;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;,
        Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;,
        Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;,
        Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;,
        Landroid/widget/SemHorizontalAbsListView$FlingRunnable;,
        Landroid/widget/SemHorizontalAbsListView$CheckForTap;,
        Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;,
        Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;,
        Landroid/widget/SemHorizontalAbsListView$PerformClick;,
        Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;,
        Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/SemHorizontalAbsListView$SavedState;,
        Landroid/widget/SemHorizontalAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field private static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_WIDTH_LEFT_DP:I = 0x19

.field private static final HOVERSCROLL_WIDTH_RIGHT_DP:I = 0x19

.field private static final INVALID_POINTER:I = -0x1

.field private static JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "android.widget.SemHorizontalAbsListView.SavedState"

.field private static final TAG:Ljava/lang/String; = "SemHorizontalAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static mSemScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mEnableVibrationAtLongPress:Z

.field private mExtraPaddingInLeftHoverArea:I

.field private mExtraPaddingInRightHoverArea:I

.field private mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverRightAreaWidth:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field mIsRTL:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsfirstMoveEvent:Z

.field private mJumpScrollToTopState:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private mNeedsHoverScroll:Z

.field private mNestedXOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

.field private mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollLeft:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSemCloseChildByLeft:Landroid/view/View;

.field private mSemCloseChildByRight:Landroid/view/View;

.field private mSemCloseChildPositionByLeft:I

.field private mSemCloseChildPositionByRight:I

.field protected mSemCurrentFocusPosition:I

.field private mSemCustomMultiChoiceMode:Z

.field private mSemDistanceFromCloseChildLeft:I

.field private mSemDistanceFromCloseChildRight:I

.field private mSemDistanceFromTrackedChildLeft:I

.field private mSemDragBlockBottom:I

.field private mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mSemDragBlockLeft:I

.field private mSemDragBlockRect:Landroid/graphics/Rect;

.field private mSemDragBlockRight:I

.field private mSemDragBlockTop:I

.field private mSemDragEndX:I

.field private mSemDragEndY:I

.field private mSemDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemDragSelectedItemSize:I

.field private mSemDragSelectedViewPosition:I

.field private mSemDragStartX:I

.field private mSemDragStartY:I

.field private mSemIsOnClickEnabled:Z

.field private mSemPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

.field private mSemTrackedChild:Landroid/view/View;

.field private mSemTrackedChildPosition:I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/SemHorizontalAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v1, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    const/4 v0, 0x1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    const/4 v0, 0x2

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    const/16 v0, 0x1f4

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v6, 0x1f4

    iput-wide v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/high16 v4, 0x40c00000    # 6.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    sget v4, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setHorizontalScrollBarEnabled(Z)V

    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v7, 0x1f4

    iput-wide v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/high16 v5, 0x40c00000    # 6.0f

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    sget v5, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->setStackFromBottom(Z)V

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->setTextFilterEnabled(Z)V

    const/4 v7, 0x5

    invoke-virtual {v1, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setTranscriptMode(I)V

    const/16 v8, 0x8

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    const/16 v9, 0xb

    invoke-virtual {v1, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollStyle(I)V

    const/16 v10, 0x9

    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSmoothScrollbarEnabled(Z)V

    const/16 v10, 0xa

    invoke-virtual {v1, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic access$000(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/SemHorizontalAbsListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1202(Landroid/widget/SemHorizontalAbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1702(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2500(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3200(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic access$3802(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic access$3900()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic access$4200(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4800(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5600(Landroid/widget/SemHorizontalAbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/SemHorizontalAbsListView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$800(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/4 v0, 0x0

    if-ge p1, p2, :cond_4

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    nop

    :goto_0
    if-ge v0, v1, :cond_8

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-le p1, p2, :cond_6

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    nop

    :goto_2
    if-ge v0, v1, :cond_8

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method private clearScrollingCache()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$5;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$5;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    return v1
.end method

.method private createScrollingCache()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103030a

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103030b

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void
.end method

.method private dismissPopup()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    nop

    :goto_0
    nop

    sub-int v4, v2, v0

    sub-int v5, v3, v1

    mul-int v6, v5, v5

    mul-int v7, v4, v4

    add-int/2addr v6, v7

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-eqz v0, :cond_2

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v4, 0x3

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v4, 0x5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    :cond_5
    :goto_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    neg-int v0, v0

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    :goto_1
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-nez v3, :cond_8

    :cond_7
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v3, v4, :cond_9

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_a

    goto/16 :goto_5

    :cond_a
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    if-gez v0, :cond_c

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v5

    if-ne v3, v5, :cond_b

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v3, v5, :cond_c

    :cond_b
    invoke-virtual {p0, v0, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :cond_c
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_e

    if-lez v0, :cond_e

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v3, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-eq v3, v5, :cond_e

    :cond_d
    invoke-virtual {p0, v0, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :cond_e
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v3, :cond_10

    if-gez v0, :cond_10

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v3, :cond_f

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v3, v5, :cond_10

    :cond_f
    invoke-virtual {p0, v0, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :cond_10
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v3, :cond_12

    if-lez v0, :cond_12

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v5

    if-ne v3, v5, :cond_11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-eq v3, v5, :cond_12

    :cond_11
    invoke-virtual {p0, v0, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_14

    if-ne v3, v1, :cond_13

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_2

    :cond_13
    goto :goto_3

    :cond_14
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_19

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v5, :cond_19

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const v6, 0x3ecccccd    # 0.4f

    if-ne v5, v2, :cond_15

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    :cond_15
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-ne v2, v1, :cond_16

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_16
    :goto_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_18
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_19
    if-nez v4, :cond_1a

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v2, :cond_1a

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_1a
    nop

    :goto_5
    return-void
.end method

.method private initAbsListView()V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->semEnableHorizontalScrollbar()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1110154

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x111014d

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isLockScreenMode()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method private isOwnerThread()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SemHorizontalAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    if-ne v0, v5, :cond_2

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    :cond_2
    :goto_0
    if-eq v2, v4, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v1, v4

    nop

    :cond_3
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    return-void

    :cond_4
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_6

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    :cond_1
    return-void
.end method

.method private onTouchCancel()V
    .locals 4

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_2
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v3

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v4, :cond_2

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$1;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v1, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->flywheelTouch()V

    :cond_2
    :goto_0
    if-ltz v3, :cond_3

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v1, v3, v1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    :cond_3
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, p2}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    int-to-float v3, v1

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v2, v4}, Landroid/widget/SemHorizontalAbsListView;->pointInView(FFF)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto :goto_1

    :cond_5
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2, p2}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 13

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x3e8

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_16

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    :goto_0
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v10, :cond_1

    if-lt v1, v8, :cond_1

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v10, v11, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    if-gt v7, v10, :cond_1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    :cond_1
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v10, v4, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {v10, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    mul-float/2addr v4, v11

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    if-le v11, v12, :cond_5

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v11, :cond_2

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    sub-int v11, v8, v11

    if-eq v1, v11, :cond_5

    :cond_2
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v11, v0

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v11, v12, :cond_3

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    add-int/2addr v11, v9

    if-eq v7, v11, :cond_5

    :cond_3
    iget-object v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v11, :cond_4

    new-instance v11, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v11, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    neg-int v11, v4

    invoke-virtual {v3, v11}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto :goto_1

    :cond_5
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :cond_6
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_7
    :goto_1
    goto/16 :goto_7

    :cond_8
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_7

    :pswitch_1
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v3, :cond_9

    invoke-virtual {v1, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    const/4 v7, 0x1

    if-lez v4, :cond_a

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_a

    move v4, v7

    goto :goto_2

    :cond_a
    move v4, v6

    :goto_2
    if-eqz v4, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-nez v8, :cond_b

    new-instance v8, Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-direct {v8, p0, v2}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$1;)V

    iput-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    :cond_b
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    iput v0, v8, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->rememberWindowAttachCount()V

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v9, :cond_e

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v9, v7, :cond_c

    goto :goto_3

    :cond_c
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v7, :cond_15

    :cond_d
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto/16 :goto_6

    :cond_e
    :goto_3
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v2, :cond_f

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    goto :goto_4

    :cond_f
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    :goto_4
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v2, v1}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v5, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_10

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_10
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_11
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_12
    new-instance v2, Landroid/widget/SemHorizontalAbsListView$3;

    invoke-direct {v2, p0, v1, v8}, Landroid/widget/SemHorizontalAbsListView$3;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v2, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_13
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    :cond_14
    :goto_5
    return-void

    :cond_15
    :goto_6
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto :goto_7

    :cond_16
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_17

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_17
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    if-le v3, v4, :cond_18

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startOverfling(I)V

    goto :goto_7

    :cond_18
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    :goto_7
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_19
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 9

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    if-eqz v0, :cond_2

    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_5
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_6

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->refreshDrawableState()V

    :cond_6
    return-void
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$4;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 34

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v0, v11, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v3

    :cond_0
    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v3, v4, :cond_1

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int/2addr v3, v11

    goto :goto_0

    :cond_1
    neg-int v3, v0

    :goto_0
    iget-object v5, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iget-object v6, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v3, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    aget v3, v3, v14

    add-int/2addr v0, v3

    iget-object v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v3, v3, v14

    neg-int v1, v3

    iget-object v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    aget v2, v3, v14

    if-eqz v13, :cond_2

    iget-object v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v3, v3, v14

    int-to-float v3, v3

    invoke-virtual {v13, v3, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iget-object v5, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v5, v5, v14

    add-int/2addr v3, v5

    iput v3, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_2
    move v15, v0

    move/from16 v17, v1

    move/from16 v16, v2

    move v9, v15

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v0, v4, :cond_3

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int v0, v11, v0

    add-int v0, v0, v16

    goto :goto_1

    :cond_3
    move v0, v9

    :goto_1
    move v8, v0

    const/16 v18, 0x0

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-ne v0, v5, :cond_16

    iget-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_4

    const-string v0, "SemHorizontalAbsListView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_4
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v11, v0, :cond_15

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v0, :cond_6

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_2
    move v5, v0

    const/4 v0, 0x0

    invoke-virtual {v10, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    :cond_7
    move/from16 v20, v0

    const/4 v0, 0x0

    if-eqz v8, :cond_8

    invoke-virtual {v10, v9, v8}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    :cond_8
    move/from16 v21, v0

    invoke-virtual {v10, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v22

    if-eqz v21, :cond_12

    neg-int v0, v8

    sub-int v1, v22, v20

    sub-int v2, v0, v1

    sub-int v1, v2, v8

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    move-object/from16 v25, v0

    move-object v0, v10

    move/from16 v26, v2

    move/from16 v2, v23

    move-object/from16 v23, v3

    move/from16 v3, v24

    move/from16 v4, v26

    move/from16 v24, v5

    move-object/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v0, v0, v14

    sub-int v18, v18, v0

    if-eqz v13, :cond_9

    iget-object v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v0, v0, v14

    int-to-float v0, v0

    invoke-virtual {v13, v0, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_9
    move v3, v8

    move/from16 v25, v9

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x0

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    const/16 v25, 0x0

    const/16 v28, 0x1

    move-object v0, v10

    move/from16 v29, v1

    move/from16 v1, v26

    move/from16 v7, v29

    move/from16 v30, v8

    move/from16 v8, v25

    move/from16 v25, v9

    move/from16 v9, v28

    invoke-virtual/range {v0 .. v9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v9, 0x1

    if-ne v1, v9, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    :cond_c
    move/from16 v3, v30

    goto/16 :goto_4

    :cond_d
    :goto_3
    if-nez v0, :cond_e

    iput v14, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    const/4 v2, 0x5

    iput v2, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    :cond_e
    move/from16 v3, v30

    if-lez v3, :cond_10

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move/from16 v4, v26

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, v19, v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_f
    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v5

    invoke-virtual {v10, v14, v14, v2, v5}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_4

    :cond_10
    move/from16 v4, v26

    if-gez v3, :cond_13

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {v10, v2, v14, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_4

    :cond_12
    move-object/from16 v23, v3

    move/from16 v24, v5

    move v3, v8

    move/from16 v25, v9

    :cond_13
    :goto_4
    add-int v0, v11, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    goto :goto_5

    :cond_14
    move-object/from16 v23, v3

    move/from16 v24, v5

    move v3, v8

    move/from16 v25, v9

    :goto_5
    add-int v0, v11, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto/16 :goto_b

    :cond_15
    move v3, v8

    move/from16 v25, v9

    goto/16 :goto_b

    :cond_16
    move v2, v7

    move v3, v8

    move/from16 v25, v9

    move v9, v4

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v0, v2, :cond_25

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v11, v0, :cond_25

    iget v8, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    sub-int v20, v8, v3

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-le v11, v0, :cond_17

    move v4, v9

    goto :goto_6

    :cond_17
    const/4 v4, -0x1

    :goto_6
    move v7, v4

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    if-nez v0, :cond_18

    iput v7, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    :cond_18
    neg-int v0, v3

    if-gez v20, :cond_19

    if-gez v8, :cond_1a

    :cond_19
    if-lez v20, :cond_1b

    if-gtz v8, :cond_1b

    :cond_1a
    neg-int v0, v8

    add-int v1, v3, v0

    :goto_7
    move v6, v0

    move v4, v1

    goto :goto_8

    :cond_1b
    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    if-eqz v6, :cond_21

    const/4 v2, 0x0

    iget v3, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v1, v10, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    const/16 v24, 0x0

    const/16 v26, 0x1

    move-object v0, v10

    move/from16 v27, v1

    move v1, v6

    move/from16 v31, v4

    move/from16 v4, v21

    move/from16 v5, v22

    move v14, v6

    move/from16 v6, v23

    move/from16 v32, v7

    move/from16 v7, v27

    move/from16 v21, v8

    move/from16 v8, v24

    move v13, v9

    move/from16 v9, v26

    invoke-virtual/range {v0 .. v9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1d

    if-ne v0, v13, :cond_1c

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_9

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_1d
    :goto_9
    if-lez v15, :cond_1f

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v19, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1e
    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v3, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    move v4, v3

    goto :goto_a

    :cond_1f
    if-gez v15, :cond_1c

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v10, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_a

    :cond_21
    move/from16 v31, v4

    move/from16 v32, v7

    move/from16 v21, v8

    move v4, v14

    move v14, v6

    :goto_a
    move/from16 v1, v31

    if-eqz v1, :cond_24

    iget v0, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v0, :cond_22

    iput v4, v10, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentIfNeeded()V

    :cond_22
    invoke-virtual {v10, v1, v1}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    const/4 v0, 0x3

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->findClosestMotionRow(I)I

    move-result v0

    const/4 v3, 0x0

    iput v3, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    iget v2, v10, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {v10, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    nop

    :cond_23
    iput v3, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v11, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    :cond_24
    add-int v0, v11, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, v32

    iput v0, v10, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    move v3, v1

    :cond_25
    :goto_b
    return-void
.end method

.method private semGetEnableVibrationAtLongPress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private semNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 8

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v7}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    return v0
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setAlwaysShow(Z)V

    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    :cond_2
    return-void
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_1
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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
    const-string v1, "SemHorizontalAbsListView"

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

.method private showPopup()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/2addr v5, v4

    if-nez v5, :cond_7

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    if-eqz v2, :cond_2

    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-lez v0, :cond_3

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    goto :goto_1

    :cond_3
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    neg-int v5, v5

    :goto_1
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    :goto_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    if-le v6, v4, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v6

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_5

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    return v4

    :cond_7
    return v3
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    nop

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v0, v3

    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addExtraPaddingInLeftHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    return-void
.end method

.method public addExtraPaddingInRightHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public canScrollList(I)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_5

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    :goto_0
    add-int v6, v2, v0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_4

    if-lez v2, :cond_3

    :cond_2
    :goto_1
    move v1, v4

    goto :goto_2

    :cond_3
    goto :goto_2

    :cond_4
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lt v6, v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_3

    goto :goto_1

    :goto_2
    return v1

    :cond_5
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_6

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    :goto_3
    add-int v6, v2, v0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_9

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v6, v7, :cond_8

    :cond_7
    :goto_4
    move v1, v4

    goto :goto_5

    :cond_8
    goto :goto_5

    :cond_9
    if-gtz v2, :cond_7

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-ge v5, v7, :cond_8

    goto :goto_4

    :goto_5
    return v1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_5

    mul-int/lit8 v2, v0, 0x64

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    sub-int v7, v6, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v2, v7

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_3

    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    :cond_3
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    :cond_4
    return v2

    :cond_5
    const/4 v1, 0x1

    return v1

    :cond_6
    return v1
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_6

    if-lez v1, :cond_6

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    sub-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x64

    mul-int/lit8 v9, v6, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v5

    float-to-int v5, v9

    add-int/2addr v8, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    :cond_0
    goto :goto_2

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_2

    mul-int/lit8 v8, v0, 0x64

    mul-int/lit8 v9, v6, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v5

    float-to-int v5, v9

    add-int/2addr v8, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    :cond_2
    goto :goto_2

    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-nez v0, :cond_4

    const/4 v4, 0x0

    :goto_0
    goto :goto_1

    :cond_4
    add-int v4, v0, v1

    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_0

    :cond_5
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    :goto_1
    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    return v5

    :cond_6
    :goto_2
    return v3
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    :cond_1
    :goto_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    cmp-long v5, v11, v13

    const/4 v15, 0x1

    if-eqz v5, :cond_3

    add-int/lit8 v5, v4, -0x14

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int/lit8 v5, v4, 0x14

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v5, 0x0

    move/from16 v6, v16

    :goto_1
    if-ge v6, v10, :cond_1

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    cmp-long v9, v11, v7

    if-nez v9, :cond_0

    const/4 v5, 0x1

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_2
    move v2, v5

    if-nez v2, :cond_2

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v11, v12}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v1, v1, -0x1

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v5, v15

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    const/4 v3, 0x1

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/16 v17, 0x0

    move v7, v4

    move-wide v8, v11

    move/from16 v18, v10

    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_2
    goto :goto_3

    :cond_3
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_3
    add-int/2addr v1, v15

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_1a

    const-string v3, "cropUri"

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v4, :cond_1

    const/high16 v4, 0x41c80000    # 25.0f

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    return v3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v8

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    :cond_3
    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, v8

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    const/4 v11, 0x0

    if-ge v9, v10, :cond_4

    move v9, v3

    goto :goto_0

    :cond_4
    move v9, v11

    :goto_0
    if-nez v9, :cond_7

    if-lez v8, :cond_7

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v13

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_5

    goto :goto_1

    :cond_5
    move v12, v11

    goto :goto_2

    :cond_6
    :goto_1
    move v12, v3

    :goto_2
    move v9, v12

    :cond_7
    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v10, :cond_8

    move v10, v3

    goto :goto_3

    :cond_8
    move v10, v11

    :goto_3
    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_9

    move v13, v3

    goto :goto_4

    :cond_9
    move v13, v11

    :goto_4
    move v10, v13

    :cond_a
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    const/4 v13, 0x2

    if-le v4, v12, :cond_b

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v7, v12

    if-lt v4, v12, :cond_15

    :cond_b
    if-lez v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v12

    if-gt v5, v12, :cond_15

    if-nez v10, :cond_c

    if-nez v9, :cond_c

    goto/16 :goto_6

    :cond_c
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v12, :cond_d

    new-instance v12, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v12, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_d
    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    :cond_e
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-ltz v4, :cond_f

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v4, v11, :cond_f

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :cond_f
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v11, v7, v11

    if-lt v4, v11, :cond_14

    if-gt v4, v7, :cond_14

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    :pswitch_1
    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_10

    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_10
    :pswitch_2
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_11
    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    goto :goto_5

    :pswitch_3
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v11, :cond_12

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    :cond_12
    if-ltz v4, :cond_13

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v4, v11, :cond_13

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_13
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v11, v7, v11

    if-lt v4, v11, :cond_14

    if-gt v4, v7, :cond_14

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_14

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v11, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_14
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :cond_15
    :goto_6
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-eqz v12, :cond_16

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_16

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_16
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v3, :cond_18

    iget-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v3, v14, v11

    if-eqz v3, :cond_17

    goto :goto_7

    :cond_17
    const/4 v3, 0x0

    goto :goto_8

    :cond_18
    const-wide/16 v11, 0x0

    :goto_7
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :goto_8
    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-ne v1, v13, :cond_19

    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v11, :cond_19

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_19
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :cond_1a
    :goto_9
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr v7, v5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mBottom:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x23

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    :cond_1
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    :cond_4
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_a

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-nez v3, :cond_5

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v5

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-lt v6, v3, :cond_7

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-gt v6, v5, :cond_7

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_6
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :cond_7
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v6, v7, :cond_8

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    goto :goto_1

    :cond_8
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    :goto_1
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-le v6, v7, :cond_9

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_2

    :cond_9
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :goto_2
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-nez v3, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextViewHovered()Z

    move-result v3

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    const/16 v3, 0x9

    const/16 v7, 0x4e35

    const/4 v8, 0x7

    const/16 v9, 0xa

    const/16 v10, 0x4e21

    if-eq v2, v3, :cond_8

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v2, v8, :cond_7

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_5

    :cond_4
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    if-eqz v3, :cond_6

    :cond_5
    invoke-direct {v0, v1, v7}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_6
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_12

    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_7
    if-ne v2, v9, :cond_12

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_12

    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_8
    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isHoveringUIEnabled()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    if-nez v11, :cond_a

    :cond_9
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    :cond_a
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-eqz v11, :cond_f

    if-ne v3, v5, :cond_f

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "pen_hovering"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v4, :cond_b

    move v11, v4

    goto :goto_2

    :cond_b
    move v11, v6

    :goto_2
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "car_mode_on"

    const/4 v14, -0x3

    invoke-static {v12, v13, v6, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-ne v12, v4, :cond_c

    move v12, v4

    goto :goto_3

    :cond_c
    move v12, v6

    :goto_3
    if-eqz v11, :cond_d

    if-eqz v12, :cond_e

    :cond_d
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    :cond_e
    if-eqz v11, :cond_f

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v13, :cond_f

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v13, :cond_f

    if-ne v3, v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    if-ne v13, v5, :cond_f

    invoke-direct {v0, v1, v7}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    :cond_f
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-eqz v7, :cond_11

    const/4 v7, 0x3

    if-ne v3, v7, :cond_11

    const/4 v7, 0x0

    const/4 v11, 0x0

    if-eqz v7, :cond_10

    if-nez v11, :cond_11

    :cond_10
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    :cond_11
    nop

    :cond_12
    :goto_4
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_13

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v11

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v12, :cond_14

    new-instance v12, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v12, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_14
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    if-lez v12, :cond_15

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    if-gtz v12, :cond_16

    :cond_15
    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v13, 0x41c80000    # 25.0f

    invoke-static {v4, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v12, v14

    float-to-int v12, v12

    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v4, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    add-float/2addr v12, v14

    float-to-int v12, v12

    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    :cond_16
    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v12, :cond_17

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v13

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    goto :goto_5

    :cond_17
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v13

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    sub-int/2addr v13, v14

    :goto_5
    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v14, :cond_1e

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v14, :cond_18

    move v14, v4

    goto :goto_6

    :cond_18
    move v14, v6

    :goto_6
    if-nez v14, :cond_1b

    if-lez v11, :cond_1b

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v4

    if-gt v9, v10, :cond_1a

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-le v4, v9, :cond_19

    goto :goto_7

    :cond_19
    move v4, v6

    goto :goto_8

    :cond_1a
    :goto_7
    const/4 v4, 0x1

    :goto_8
    move v14, v4

    :cond_1b
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v11

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v9, :cond_1c

    const/4 v4, 0x1

    goto :goto_9

    :cond_1c
    move v4, v6

    :goto_9
    if-nez v4, :cond_25

    if-lez v11, :cond_25

    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-ge v10, v15, :cond_1d

    const/4 v10, 0x1

    goto :goto_a

    :cond_1d
    move v10, v6

    :goto_a
    move v4, v10

    goto :goto_10

    :cond_1e
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v11

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v9, :cond_1f

    const/4 v4, 0x1

    goto :goto_b

    :cond_1f
    move v4, v6

    :goto_b
    if-nez v4, :cond_22

    if-lez v11, :cond_22

    add-int/lit8 v9, v11, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-gt v10, v14, :cond_21

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v14

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-le v10, v14, :cond_20

    goto :goto_c

    :cond_20
    move v10, v6

    goto :goto_d

    :cond_21
    :goto_c
    const/4 v10, 0x1

    :goto_d
    move v4, v10

    :cond_22
    move v14, v4

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_23

    const/4 v4, 0x1

    goto :goto_e

    :cond_23
    move v4, v6

    :goto_e
    if-nez v4, :cond_25

    if-lez v11, :cond_25

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-ge v10, v15, :cond_24

    const/4 v10, 0x1

    goto :goto_f

    :cond_24
    move v10, v6

    :goto_f
    move v4, v10

    :cond_25
    :goto_10
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v5, :cond_26

    const/4 v9, 0x1

    goto :goto_11

    :cond_26
    move v9, v6

    :goto_11
    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v10, v12

    if-le v3, v10, :cond_28

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v10, v13, v10

    if-lt v3, v10, :cond_27

    goto :goto_13

    :cond_27
    :goto_12
    move/from16 v16, v9

    const/4 v8, 0x1

    goto/16 :goto_1b

    :cond_28
    :goto_13
    if-lez v7, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v10

    if-gt v7, v10, :cond_41

    if-nez v4, :cond_29

    if-eqz v14, :cond_27

    :cond_29
    if-lt v3, v12, :cond_2a

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v10, v12

    if-gt v3, v10, :cond_2a

    if-nez v4, :cond_2a

    iget-boolean v10, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_27

    :cond_2a
    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v10, v13, v10

    if-lt v3, v10, :cond_2b

    if-gt v3, v13, :cond_2b

    if-nez v14, :cond_2b

    iget-boolean v10, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_27

    :cond_2b
    if-eqz v9, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    const/4 v15, 0x2

    if-eq v10, v15, :cond_27

    :cond_2c
    if-eqz v9, :cond_41

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isLockScreenMode()Z

    move-result v10

    if-eqz v10, :cond_2d

    goto :goto_12

    :cond_2d
    iget-boolean v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v10, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    :cond_2e
    if-lt v3, v12, :cond_2f

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v5, v12

    if-gt v3, v5, :cond_2f

    const/4 v5, 0x1

    goto :goto_14

    :cond_2f
    const/4 v5, 0x0

    :goto_14
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v6, v13, v6

    if-lt v3, v6, :cond_30

    if-gt v3, v13, :cond_30

    const/4 v6, 0x1

    goto :goto_15

    :cond_30
    const/4 v6, 0x0

    :goto_15
    const/16 v10, 0x4e2d

    const/16 v15, 0x4e31

    if-eq v2, v8, :cond_36

    packed-switch v2, :pswitch_data_0

    move/from16 v16, v9

    :cond_31
    :goto_16
    const/4 v8, 0x1

    goto/16 :goto_1a

    :pswitch_0
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_32

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_32
    const/16 v8, 0x4e21

    invoke-direct {v0, v1, v8}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    move/from16 v16, v9

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    if-eqz v9, :cond_33

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v9, :cond_33

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_33

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-interface {v9, v0, v8}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_33
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    :pswitch_1
    move/from16 v16, v9

    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_34

    if-eqz v6, :cond_40

    :cond_34
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v9, v8}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    if-eqz v5, :cond_35

    invoke-direct {v0, v1, v15}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/4 v8, 0x2

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    goto :goto_17

    :cond_35
    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/4 v8, 0x1

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    :goto_17
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v9, v8}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1a

    :cond_36
    move/from16 v16, v9

    const/4 v8, 0x1

    iget-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v9, :cond_37

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    :cond_37
    if-nez v5, :cond_3a

    if-eqz v6, :cond_38

    goto :goto_18

    :cond_38
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_39

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_39
    const/16 v8, 0x4e21

    invoke-direct {v0, v1, v8}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_16

    :cond_3a
    :goto_18
    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    if-eqz v5, :cond_3d

    iget-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v8, :cond_3b

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3c

    :cond_3b
    invoke-direct {v0, v1, v15}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_3c
    const/4 v8, 0x2

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    goto :goto_19

    :cond_3d
    const/4 v8, 0x2

    iget-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v9, :cond_3e

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-ne v9, v8, :cond_3f

    :cond_3e
    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_3f
    const/4 v8, 0x1

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    :goto_19
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v9, v8}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_40
    :goto_1a
    return v8

    :cond_41
    move/from16 v16, v9

    const/4 v8, 0x1

    :goto_1b
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v8}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v8}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_42
    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v5, v12

    if-le v3, v5, :cond_43

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v5, v13, v5

    if-lt v3, v5, :cond_44

    :cond_43
    if-lez v7, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v5

    if-le v7, v5, :cond_45

    :cond_44
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_45
    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v5, :cond_46

    iget-wide v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-eqz v5, :cond_47

    goto :goto_1c

    :cond_46
    const-wide/16 v8, 0x0

    :goto_1c
    const/16 v5, 0x4e21

    invoke-direct {v0, v1, v5}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_47
    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/16 v6, 0xa

    if-ne v2, v6, :cond_48

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    if-eqz v6, :cond_48

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v6, :cond_48

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_48

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-interface {v6, v0, v5}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_48
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    :cond_0
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v5, :cond_1

    new-instance v5, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v5, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextSelectionProgressing()Z

    move-result v5

    iput-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    const/16 v5, 0xd3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_3

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "car_mode_on"

    const/4 v9, -0x3

    invoke-static {v5, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    if-eqz v5, :cond_3

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    :cond_3
    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    if-eqz v5, :cond_4

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    :cond_4
    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    if-lez v5, :cond_5

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    if-gtz v5, :cond_6

    :cond_5
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    :cond_6
    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v5, :cond_7

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    :goto_1
    iget-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v9, :cond_9

    if-lt v1, v5, :cond_8

    if-le v1, v8, :cond_9

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eq v9, v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xd4

    if-eq v9, v10, :cond_9

    return v7

    :cond_9
    const/4 v12, -0x1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    move/from16 v18, v3

    goto/16 :goto_1a

    :pswitch_0
    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    if-eqz v13, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v13

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    if-eqz v14, :cond_14

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v14

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-ne v14, v12, :cond_12

    const/4 v14, 0x0

    const/4 v15, 0x0

    add-int/lit8 v16, v13, -0x1

    :goto_2
    move/from16 v17, v16

    move/from16 v9, v17

    if-ltz v9, :cond_f

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-lt v7, v11, :cond_a

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-gt v7, v12, :cond_a

    iput-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/2addr v7, v9

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    nop

    move/from16 v18, v3

    goto :goto_4

    :cond_a
    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    sub-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    sub-int/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move/from16 v18, v3

    add-int/lit8 v3, v13, -0x1

    if-ne v9, v3, :cond_b

    add-int/lit8 v3, v13, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v16

    add-int v3, v3, v16

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    add-int/lit8 v3, v13, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v16

    add-int v3, v3, v16

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    move v3, v7

    move v14, v6

    move v15, v14

    move v14, v3

    goto :goto_3

    :cond_b
    if-gt v7, v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v9

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    move v14, v7

    :cond_c
    if-gt v6, v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v9

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    move v3, v6

    move v15, v3

    goto :goto_3

    :cond_d
    move/from16 v18, v3

    :cond_e
    :goto_3
    add-int/lit8 v16, v9, -0x1

    move/from16 v3, v18

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v12, -0x1

    goto :goto_2

    :cond_f
    move/from16 v18, v3

    :goto_4
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v3, :cond_11

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    if-eqz v3, :cond_10

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    :cond_10
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v3, :cond_11

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    :cond_11
    goto :goto_5

    :cond_12
    move/from16 v18, v3

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    :goto_5
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v3, :cond_13

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    :cond_13
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    goto :goto_6

    :cond_14
    move/from16 v18, v3

    :goto_6
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-nez v3, :cond_15

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    if-nez v3, :cond_15

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    :cond_15
    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-gez v3, :cond_16

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_7

    :cond_16
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-le v3, v8, :cond_17

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    :cond_17
    :goto_7
    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v3

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    if-ge v3, v6, :cond_18

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    goto :goto_8

    :cond_18
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    :goto_8
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v3, v6, :cond_19

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    goto :goto_9

    :cond_19
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    :goto_9
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    if-le v3, v6, :cond_1a

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    goto :goto_a

    :cond_1a
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    :goto_a
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-le v3, v6, :cond_1b

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_b

    :cond_1b
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :goto_b
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v13, :cond_25

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_24

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-le v12, v9, :cond_1c

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-le v12, v7, :cond_1c

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-ge v12, v11, :cond_1c

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-lt v12, v10, :cond_22

    :cond_1c
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-le v12, v9, :cond_1d

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-lt v12, v11, :cond_1f

    :cond_1d
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-ge v12, v9, :cond_1e

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-gt v12, v9, :cond_1f

    :cond_1e
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-ge v12, v11, :cond_23

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-le v12, v11, :cond_23

    :cond_1f
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-lt v12, v7, :cond_20

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-le v12, v10, :cond_22

    :cond_20
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-gt v12, v7, :cond_21

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-gt v12, v7, :cond_22

    :cond_21
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-ge v12, v10, :cond_23

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-lt v12, v10, :cond_23

    :cond_22
    add-int/lit8 v12, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v12

    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v12, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v14, -0x1

    invoke-direct {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v14

    invoke-direct {v0, v6, v12, v14, v15}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto :goto_d

    :cond_23
    add-int/lit8 v12, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v12

    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v12, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v14, -0x1

    invoke-direct {v0, v12, v14}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v14

    invoke-direct {v0, v6, v12, v14, v15}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    :cond_24
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_25
    const/4 v3, 0x1

    move v4, v3

    goto :goto_e

    :cond_26
    move/from16 v18, v3

    :goto_e
    if-eqz v4, :cond_31

    if-lt v1, v5, :cond_27

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v3, v5

    if-gt v1, v3, :cond_27

    const/4 v3, 0x1

    goto :goto_f

    :cond_27
    const/4 v3, 0x0

    :goto_f
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v6, v8, v6

    if-lt v1, v6, :cond_28

    if-gt v1, v8, :cond_28

    const/4 v6, 0x1

    goto :goto_10

    :cond_28
    const/4 v6, 0x0

    :goto_10
    if-nez v3, :cond_2c

    if-eqz v6, :cond_29

    goto :goto_12

    :cond_29
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v7, :cond_2a

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v7, :cond_2a

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    const/4 v9, 0x0

    invoke-interface {v7, v0, v9}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_11

    :cond_2a
    const/4 v9, 0x0

    :goto_11
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-wide v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v7, v10}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_2b
    iput-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_14

    :cond_2c
    :goto_12
    const/4 v10, 0x1

    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_2d

    iput-boolean v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v7, :cond_2d

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-interface {v7, v0, v10}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_2d
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v7, v10}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    if-eqz v3, :cond_2e

    const/4 v7, 0x2

    goto :goto_13

    :cond_2e
    const/4 v7, 0x1

    :goto_13
    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_2f
    :goto_14
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v7, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_30
    goto :goto_15

    :cond_31
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    if-eqz v3, :cond_32

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_32
    :goto_15
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_1a

    :pswitch_1
    move/from16 v18, v3

    goto :goto_16

    :pswitch_2
    move/from16 v18, v3

    goto/16 :goto_1a

    :pswitch_3
    move/from16 v18, v3

    goto/16 :goto_1a

    :goto_16
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    const/4 v6, 0x0

    if-nez v3, :cond_3a

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v3, :cond_33

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v3, :cond_33

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    const/4 v7, 0x0

    invoke-interface {v3, v0, v7}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_17

    :cond_33
    const/4 v7, 0x0

    :goto_17
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/4 v3, 0x0

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    if-eqz v7, :cond_3a

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v7, :cond_39

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v10, :cond_34

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v7, v9, :cond_39

    :cond_34
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_35

    const/4 v3, 0x1

    :cond_35
    goto :goto_18

    :cond_36
    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v7, v9, :cond_37

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v7, :cond_37

    if-eqz v3, :cond_37

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v7

    iput-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_37
    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    if-eqz v7, :cond_39

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_38

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v11

    invoke-virtual {v0, v6, v10, v11, v12}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_38
    goto :goto_19

    :cond_39
    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    :cond_3a
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    const/4 v7, -0x1

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iput-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    const/4 v7, -0x1

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    iput-object v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_3b
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v3, v6}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_1a

    :pswitch_4
    move/from16 v18, v3

    :cond_3c
    :goto_1a
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v5, v4

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0, v2, v2, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v6, v5

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0, v6, v2, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract fillGapRTL(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v2

    if-eq v2, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    return v1
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishMultiChoiceMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public fling(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    return-object p1
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    :goto_0
    return v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    new-array v3, v2, [J

    nop

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    new-array v0, v1, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v2, :cond_2

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_2
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    if-ge v2, v4, :cond_4

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    sub-int v4, v2, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    return v4
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v2, :cond_2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_2
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_4

    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    return v5
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    :goto_0
    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChoiceMode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v1, 0x2

    return v1

    :pswitch_1
    const/4 v1, 0x1

    return v1

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return v0
.end method

.method getWidthForPosition(I)I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    sub-int v2, p1, v0

    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    return v4

    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    return v4
.end method

.method protected handleDataChanged()V
    .locals 12

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->confirmCheckedPositionsById()V

    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_f

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    if-eqz v6, :cond_a

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_2
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_7

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_3

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    goto :goto_0

    :cond_4
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    goto :goto_1

    :cond_5
    move v10, v8

    :goto_1
    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_6

    if-gt v10, v8, :cond_6

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    :cond_7
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_8

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->findSyncPosition()I

    move-result v6

    if-ltz v6, :cond_a

    invoke-virtual {p0, v6, v5}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    if-ne v9, v6, :cond_a

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    goto :goto_2

    :cond_9
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v6

    if-lt v6, v0, :cond_b

    add-int/lit8 v6, v0, -0x1

    :cond_b
    if-gez v6, :cond_c

    const/4 v6, 0x0

    :cond_c
    invoke-virtual {p0, v6, v5}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_d

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_d
    invoke-virtual {p0, v6, v4}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_f

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_e
    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_f

    return-void

    :cond_f
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    move v3, v5

    :goto_4
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedRowId:J

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->checkSelectionChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onScroll(III)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScroll(Landroid/widget/SemHorizontalAbsListView;III)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->onScrollChanged(IIII)V

    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->semIsInMouseStylusMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/AdapterView;->isInTouchMode()Z

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

.method public isItemChecked(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method protected isSemUsingAdapterView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_4
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_5
    :goto_0
    if-eqz v3, :cond_7

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_6

    new-instance v5, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$1;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    goto :goto_1

    :cond_6
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 9

    const-string/jumbo v0, "obtainView"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v2, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_1
    move-object v6, v5

    check-cast v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eq v2, v3, :cond_3

    invoke-direct {p0, v2, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_3
    aput-boolean v4, p2, v0

    return-object v3

    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    if-eqz v5, :cond_8

    if-eq v6, v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-virtual {v6}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_2

    :cond_7
    aput-boolean v4, p2, v0

    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    :cond_8
    :goto_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_a
    invoke-direct {p0, v6, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_2
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/widget/SemHorizontalAbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v1

    const/4 v2, -0x1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    aget v4, v1, v3

    if-ne v4, v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    add-int/lit8 v3, v2, 0x1

    array-length v4, v1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    :cond_9
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p0, v2, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    :cond_4
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v5

    if-nez v5, :cond_5

    return v4

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_6

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v3

    :cond_5
    :goto_0
    goto :goto_2

    :pswitch_1
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->stopNestedScroll()V

    goto :goto_2

    :pswitch_2
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v4, v1, :cond_8

    const/4 v1, 0x5

    if-ne v4, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v6

    const/4 v7, 0x4

    if-eq v4, v7, :cond_7

    if-ltz v6, :cond_7

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v8, v6, v8

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    :cond_7
    const/high16 v8, -0x80000000

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initOrResetVelocityTracker()V

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    if-ne v4, v7, :cond_a

    return v3

    :cond_8
    :goto_1
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    return v3

    :cond_9
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    :cond_a
    :goto_2
    return v2

    :cond_b
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    const-string v0, "SemHorizontalAbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v4, v5, v6}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    return v3

    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_2

    :sswitch_1
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_2

    :sswitch_2
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    goto :goto_2

    :sswitch_3
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    if-nez v1, :cond_3

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_0

    :cond_3
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    :cond_6
    :goto_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->markChildrenDirty()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollMax:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onItemCountChanged(II)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->useDefaultSelector()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v7, v1

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_3

    if-gt v6, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    :cond_4
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {v6}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    invoke-virtual {v6, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    if-eqz v9, :cond_1

    neg-int v0, v7

    neg-int v1, v7

    invoke-virtual {v6, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v7

    const/4 v1, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v10

    sub-int/2addr v0, v2

    move v12, v0

    move v11, v2

    goto :goto_1

    :cond_2
    move v12, v0

    move v11, v1

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, v11

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->onScrollChanged(IIII)V

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setAdapter(Landroid/widget/Adapter;)V

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-class v1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    nop

    :goto_0
    nop

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncHeight:J

    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    goto :goto_1

    :cond_1
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    :cond_2
    :goto_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setFilterText(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_3
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_4
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    return-void

    :cond_6
    const-string v0, "SemHorizontalAbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemHorizontalAbsListView.onRestoreInstanceState() is of neither SavedState type nor Bundle type, but of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/SemHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemId()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    iput v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_2

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v7, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lt v8, v9, :cond_3

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    :cond_3
    iput v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_4
    iput v4, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput v4, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    :goto_1
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    :cond_5
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iput-boolean v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    :cond_7
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_9

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    nop

    :goto_3
    if-ge v4, v7, :cond_8

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    iput-object v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    :cond_9
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v3
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSizeChanged(IIII)V

    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_3
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_6

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_6
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    invoke-virtual {p0, v2, v4}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_8

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_7
    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v2

    if-ltz v2, :cond_9

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    :cond_9
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->onTouchCancel()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    nop

    :goto_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_b
    :goto_2
    return v2

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

.method public onTouchModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_4
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    if-ne v0, v1, :cond_5

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_5

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-nez p1, :cond_6

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    :cond_6
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    neg-int v3, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    return v1

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    return v1

    :cond_4
    return v3
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 12

    move-object v0, p0

    move v7, p2

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v2, :cond_b

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v3

    move v11, v1

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v7, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v11, :cond_1

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :goto_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, v7

    move-wide v4, p3

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v8, 0x0

    :cond_4
    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_a

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v3, :cond_a

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_7

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_7
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :cond_9
    :goto_2
    const/4 v10, 0x1

    :cond_a
    :goto_3
    if-eqz v10, :cond_c

    invoke-direct {v0}, Landroid/widget/SemHorizontalAbsListView;->updateOnScreenCheckedViews()V

    goto :goto_4

    :cond_b
    move v9, v1

    :cond_c
    :goto_4
    if-eqz v8, :cond_d

    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v9, v1

    :cond_d
    return v9
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const v1, 0xc369

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_0

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    :cond_0
    invoke-virtual {p0, p2, v3}, Landroid/widget/SemHorizontalAbsListView;->setItemChecked(IZ)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->performHapticFeedback(I)Z

    :cond_1
    return v3

    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_5
    const-string v1, "SemHorizontalAbsListView"

    const-string v2, " does not need vibration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v0
.end method

.method public pointToPosition(II)I
    .locals 7

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    instance-of v1, p0, Landroid/widget/SemHorizontalListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/widget/SemHorizontalListView;

    iget v1, v1, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-lez v1, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/widget/SemHorizontalListView;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_1
    if-ltz v4, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v6, v4

    return v6

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    const/4 v4, -0x1

    return v4
.end method

.method public pointToRowId(II)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->access$5200(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method rememberSyncState()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncStateHorizontal()V

    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    return-void
.end method

.method public reportScrollStateChange(I)V
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollingByScrollbar:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_2
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldSelectedRowId:J

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method public resetPressItemListArray()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mLeft:I

    sub-int/2addr v6, v7

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    if-lt v8, v7, :cond_3

    add-int v11, v7, v1

    if-ge v8, v11, :cond_3

    move v11, v8

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v12, v11, v12

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v3, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v13

    add-int v3, v5, v13

    goto :goto_0

    :cond_1
    if-le v4, v6, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v6, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    :cond_2
    :goto_0
    goto/16 :goto_7

    :cond_3
    if-ge v8, v7, :cond_8

    move v11, v7

    move v12, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-nez v3, :cond_5

    move v4, v14

    move v5, v15

    if-gtz v7, :cond_4

    if-ge v14, v12, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v16

    add-int v12, v12, v16

    :cond_5
    if-lt v14, v12, :cond_6

    add-int v11, v7, v3

    move v4, v14

    move v5, v15

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    move v3, v4

    move v4, v5

    move v5, v12

    goto :goto_7

    :cond_8
    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    const/4 v9, 0x0

    add-int v12, v7, v1

    sub-int/2addr v12, v10

    add-int/lit8 v13, v1, -0x1

    :goto_3
    if-ltz v13, :cond_d

    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/lit8 v2, v1, -0x1

    if-ne v13, v2, :cond_b

    move v2, v15

    move v3, v10

    add-int v4, v7, v1

    if-lt v4, v11, :cond_a

    if-le v10, v6, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    move v4, v3

    move v3, v2

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    sub-int/2addr v6, v4

    goto :goto_4

    :cond_b
    :goto_6
    if-gt v10, v6, :cond_c

    add-int v2, v7, v13

    move v3, v15

    move v4, v10

    nop

    move v11, v2

    goto :goto_7

    :cond_c
    add-int/lit8 v13, v13, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_3

    :cond_d
    move v11, v12

    :goto_7
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v10, :cond_e

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_e
    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_f

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    goto :goto_8

    :cond_f
    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    :goto_8
    invoke-virtual {v0, v11, v9}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-lt v2, v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v2, v10, :cond_10

    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    goto :goto_9

    :cond_10
    const/4 v2, -0x1

    :goto_9
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    if-ltz v2, :cond_11

    const/16 v17, 0x1

    goto :goto_a

    :cond_11
    move/from16 v17, v10

    :goto_a
    return v17
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected semGetItemCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    :goto_0
    return v1
.end method

.method protected semIsHorizontalScrollBarHidden()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected semIsShowingScrollbar()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public semSetClickableInMultiSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    return-void
.end method

.method public semSetCustomMultiChoiceMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return-void
.end method

.method public semSetDragBlockEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    return-void
.end method

.method public semSetEnableVibrationAtLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return-void
.end method

.method public semSetHoverScrollEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public semSetMultiFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return-void
.end method

.method public semSetSelection(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    sub-int p1, v0, v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    return-void
.end method

.method public semSmoothScrollBy(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$1;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    if-lez p1, :cond_2

    :goto_0
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p1, v3, :cond_3

    const/16 v3, 0x3e

    if-eq p1, v3, :cond_2

    const/16 v3, 0x42

    if-eq p1, v3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :cond_1
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    const/4 v2, 0x0

    nop

    :goto_1
    if-eqz v2, :cond_e

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    move-object v3, p3

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x72

    const/16 v7, 0x71

    const/16 v8, 0x3c

    const/16 v9, 0x3b

    packed-switch v5, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    :pswitch_2
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v3}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eq p1, v9, :cond_a

    if-ne p1, v8, :cond_8

    goto :goto_2

    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v6, :cond_e

    :cond_9
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    :cond_a
    :goto_2
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto :goto_4

    :pswitch_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v3}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eq p1, v9, :cond_d

    if-ne p1, v8, :cond_b

    goto :goto_3

    :cond_b
    if-eq p1, v7, :cond_c

    if-ne p1, v6, :cond_e

    :cond_c
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    :cond_d
    :goto_3
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    :cond_e
    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChoiceMode(I)V
    .locals 5

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setLongClickable(Z)V

    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_5

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v3, :cond_7

    :cond_6
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$2;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setFastScrollStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    :goto_0
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    :cond_1
    return v0
.end method

.method public setFriction(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->access$2100(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SemHorizontalAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_a

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_6
    if-eqz p2, :cond_8

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_7
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto/16 :goto_5

    :cond_8
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_9
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_5

    :cond_a
    :goto_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_c
    :goto_3
    if-eq v0, p2, :cond_e

    if-eqz p2, :cond_d

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_4

    :cond_d
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :cond_e
    :goto_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v6, p1

    move-wide v7, v1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_f
    nop

    :cond_10
    :goto_5
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez v0, :cond_11

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    :cond_11
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    :cond_12
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/SemHorizontalAbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingTop:I

    iput p2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingBottom:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    return-void
.end method

.method public setRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->access$5202(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setAdapter(Landroid/widget/Adapter;)V

    :cond_1
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method public setSelectionFromStart(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_2
    :goto_0
    if-ltz p1, :cond_6

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    :cond_6
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

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

.method public showContextMenu(FFI)Z
    .locals 5

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    :goto_0
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 10

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    :cond_0
    if-nez v9, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    :cond_1
    return v9

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 8

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    add-int v2, v0, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    if-eqz p1, :cond_6

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_2

    if-ltz p1, :cond_6

    :cond_2
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_3

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v2, v7, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v4, :cond_3

    if-gtz p1, :cond_6

    :cond_3
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v4, :cond_4

    if-gtz p1, :cond_6

    :cond_4
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_5

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v2, v7, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_5

    if-gez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_7
    :goto_2
    return-void
.end method

.method smoothScrollByOffset(I)V
    .locals 9

    const/4 v0, -0x1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v4

    add-int v5, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public startMultiChoiceMode()V
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v14, 0x22

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_1

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v13

    sub-int/2addr v13, v12

    iget-boolean v15, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v15, :cond_2

    sub-int v15, v8, v13

    sub-int v16, v11, v9

    goto :goto_0

    :cond_2
    sub-int v15, v11, v6

    sub-int v16, v7, v13

    :goto_0
    move/from16 v17, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v16

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int v16, v16, v5

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    sub-int v16, v16, v5

    if-gez v1, :cond_3

    add-int/lit8 v5, v16, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    goto :goto_2

    :cond_3
    add-int/lit8 v5, v16, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :goto_2
    if-gez v2, :cond_4

    add-int/lit8 v5, v16, -0x1

    neg-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_3
    goto :goto_4

    :cond_4
    add-int/lit8 v5, v16, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    :goto_4
    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v5, :cond_6

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    iget v4, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v8

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_5

    :cond_5
    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v4

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_5

    :cond_6
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    :goto_5
    add-int v4, v5, v3

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v4, v14, :cond_8

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_7

    iget v4, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v9

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_6

    :cond_7
    iget v4, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v7

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_6

    :cond_8
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    :goto_6
    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_c

    add-int v4, v5, v3

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v4, v14, :cond_9

    iget v4, v10, Landroid/graphics/Rect;->left:I

    if-lt v9, v4, :cond_9

    if-ltz v2, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    if-nez v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v14

    move/from16 v18, v4

    iget v4, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v4

    if-gt v8, v14, :cond_b

    if-gtz v2, :cond_b

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    move/from16 v18, v4

    :cond_b
    const/4 v4, 0x0

    :goto_8
    goto :goto_b

    :cond_c
    if-nez v5, :cond_d

    iget v4, v10, Landroid/graphics/Rect;->left:I

    if-lt v6, v4, :cond_d

    if-ltz v2, :cond_d

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    add-int v14, v5, v3

    move/from16 v19, v4

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v14, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    iget v14, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v14

    if-gt v7, v4, :cond_e

    if-gtz v2, :cond_e

    const/4 v4, 0x1

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    :goto_a
    move/from16 v18, v19

    :goto_b
    if-nez v18, :cond_32

    if-eqz v4, :cond_f

    move/from16 v32, v1

    move/from16 v31, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v11

    move/from16 v9, v17

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1f

    :cond_f
    if-gez v2, :cond_10

    const/4 v14, 0x1

    goto :goto_c

    :cond_10
    const/4 v14, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    :cond_11
    move/from16 v20, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeaderViewsCount()I

    move-result v4

    move/from16 v21, v6

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFooterViewsCount()I

    move-result v22

    sub-int v6, v6, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v7

    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_1b

    if-eqz v14, :cond_16

    neg-int v7, v2

    move/from16 v25, v8

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    move/from16 v26, v9

    const/16 v9, 0x22

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_12

    iget v8, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    :cond_12
    add-int/lit8 v8, v3, -0x1

    :goto_d
    if-ltz v8, :cond_15

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move/from16 v27, v11

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    if-lt v11, v7, :cond_13

    goto :goto_f

    :cond_13
    move/from16 v22, v8

    add-int/lit8 v23, v23, 0x1

    add-int v11, v5, v8

    invoke-virtual {v9}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v11, v4, :cond_14

    if-ge v11, v6, :cond_14

    move/from16 v28, v7

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v9, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_e

    :cond_14
    move/from16 v28, v7

    :goto_e
    add-int/lit8 v8, v8, -0x1

    move/from16 v11, v27

    move/from16 v7, v28

    goto :goto_d

    :cond_15
    move/from16 v27, v11

    :goto_f
    move/from16 v31, v3

    goto/16 :goto_18

    :cond_16
    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v9, 0x22

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_17

    iget v8, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    :cond_17
    const/4 v8, 0x0

    :goto_10
    if-ge v8, v3, :cond_1a

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    if-gt v11, v7, :cond_18

    goto :goto_12

    :cond_18
    add-int/lit8 v23, v23, 0x1

    add-int v11, v5, v8

    invoke-virtual {v9}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v11, v4, :cond_19

    if-ge v11, v6, :cond_19

    move/from16 v29, v7

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v9, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_11

    :cond_19
    move/from16 v29, v7

    :goto_11
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v29

    goto :goto_10

    :cond_1a
    :goto_12
    goto :goto_f

    :cond_1b
    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v11

    if-eqz v14, :cond_20

    neg-int v7, v2

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v9, 0x22

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_1c

    iget v8, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    :cond_1c
    const/4 v8, 0x0

    :goto_13
    if-ge v8, v3, :cond_1f

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    if-lt v11, v7, :cond_1d

    goto :goto_15

    :cond_1d
    add-int/lit8 v23, v23, 0x1

    add-int v11, v5, v8

    invoke-virtual {v9}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v11, v4, :cond_1e

    if-ge v11, v6, :cond_1e

    move/from16 v30, v7

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v9, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_14

    :cond_1e
    move/from16 v30, v7

    :goto_14
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v30

    goto :goto_13

    :cond_1f
    :goto_15
    goto :goto_f

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v9, 0x22

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_21

    iget v8, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    :cond_21
    add-int/lit8 v8, v3, -0x1

    :goto_16
    if-ltz v8, :cond_24

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    if-gt v11, v7, :cond_22

    goto/16 :goto_f

    :cond_22
    move/from16 v22, v8

    add-int/lit8 v23, v23, 0x1

    add-int v11, v5, v8

    invoke-virtual {v9}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v11, v4, :cond_23

    if-ge v11, v6, :cond_23

    move/from16 v31, v3

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v3, v9, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_17

    :cond_23
    move/from16 v31, v3

    :goto_17
    add-int/lit8 v8, v8, -0x1

    move/from16 v3, v31

    goto :goto_16

    :cond_24
    move/from16 v31, v3

    :goto_18
    move/from16 v7, v22

    move/from16 v3, v23

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    add-int/2addr v8, v1

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewNewLeft:I

    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    if-lez v3, :cond_25

    invoke-virtual {v0, v7, v3}, Landroid/widget/SemHorizontalAbsListView;->detachViewsFromParent(II)V

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    move-result v8

    if-nez v8, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_26
    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->semOffsetChildrenLeftAndRight(I)V

    iget-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_27

    if-nez v14, :cond_27

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v8, v3

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    goto :goto_19

    :cond_27
    iget-boolean v8, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v8, :cond_28

    if-eqz v14, :cond_28

    iget v8, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v8, v3

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    :cond_28
    :goto_19
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_2a

    if-lt v15, v8, :cond_29

    move/from16 v9, v17

    if-ge v9, v8, :cond_2c

    goto :goto_1a

    :cond_29
    move/from16 v9, v17

    :goto_1a
    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->fillGapRTL(Z)V

    goto :goto_1b

    :cond_2a
    move/from16 v9, v17

    if-lt v15, v8, :cond_2b

    if-ge v9, v8, :cond_2c

    :cond_2b
    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->fillGap(Z)V

    :cond_2c
    :goto_1b
    const/4 v11, -0x1

    if-nez v19, :cond_2f

    move/from16 v32, v1

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-eq v1, v11, :cond_2e

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v11

    if-ltz v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v11

    if-ge v1, v11, :cond_2d

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    move/from16 v33, v3

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_1c

    :cond_2d
    move/from16 v33, v3

    :goto_1c
    goto :goto_1e

    :cond_2e
    move/from16 v33, v3

    goto :goto_1d

    :cond_2f
    move/from16 v32, v1

    move/from16 v33, v3

    :goto_1d
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v1, v11, :cond_31

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v3

    if-ltz v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_30

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    :cond_30
    goto :goto_1e

    :cond_31
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1e
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    return v1

    :cond_32
    move/from16 v32, v1

    move/from16 v31, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v11

    move/from16 v9, v17

    const/4 v1, 0x0

    const/4 v8, 0x1

    :goto_1f
    if-eqz v2, :cond_33

    move v1, v8

    nop

    :cond_33
    return v1
.end method

.method triggerDoubleFling(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_1
    if-gez p1, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    :cond_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->triggerDoubleFling(I)V

    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method updateScrollIndicators()V
    .locals 9

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_0

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_0

    goto :goto_0

    :goto_1
    if-nez v4, :cond_4

    if-lez v0, :cond_4

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    move v4, v6

    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v4, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_8

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_7

    :goto_5
    move v4, v2

    goto :goto_6

    :cond_7
    move v4, v3

    goto :goto_6

    :cond_8
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_7

    goto :goto_5

    :goto_6
    if-nez v4, :cond_b

    if-lez v0, :cond_b

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_a

    goto :goto_8

    :cond_a
    move v2, v3

    :goto_8
    move v4, v2

    :cond_b
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v4, :cond_c

    move v1, v3

    nop

    :cond_c
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method updateSelectorState()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
