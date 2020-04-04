.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;,
        Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;,
        Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;,
        Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$OnFlingListener;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;,
        Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NESTED_SCROLLING_ATTRS:[I

.field static final POST_UPDATES_ON_ANIMATION:Z

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mAlwaysDisableHoverHighlight:Z

.field mAnimatedBlackTop:I

.field private final mAutoHide:Ljava/lang/Runnable;

.field mBlackTop:I

.field private mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field public mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field mClipToPadding:Z

.field private mCloseChildByBottom:Landroid/view/View;

.field private mCloseChildByTop:Landroid/view/View;

.field private mCloseChildPositionByBottom:I

.field private mCloseChildPositionByTop:I

.field private mContext:Landroid/content/Context;

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mDistanceFromCloseChildBottom:I

.field private mDistanceFromCloseChildTop:I

.field mDrawLastItemOutlineStoke:Z

.field mDrawLastOutLineStroke:Z

.field mDrawOutlineStroke:Z

.field mDrawRect:Z

.field mDrawReverse:Z

.field mDrawWhiteTheme:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mEnableGoToTop:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

.field private mFastScrollerEnabled:Z

.field private mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

.field mFirstLayoutComplete:Z

.field mGapWorker:Landroid/support/v7/widget/GapWorker;

.field private final mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopBottomPadding:I

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutStart:Z

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

.field private mGoToTopLastState:I

.field private mGoToTopMoved:Z

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSize:I

.field private mGoToTopState:I

.field private mGoToToping:Z

.field mHasFixedSize:Z

.field private mHasNestedScrollRange:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/os/Handler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveringEnabled:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTopOffsetOfScreen:I

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mIsArrowKeyPressed:Z

.field mIsAttached:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlKeyPressed:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenMoveEvent:Z

.field private mIsGoToTopShown:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsMouseWheel:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenDragBlockEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsPenSelectionEnabled:Z

.field private mIsSendHoverScrollState:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field mLastBlackTop:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private mNavigationBarHeight:I

.field private mNeedsHoverScroll:Z

.field private final mNestedOffsets:[I

.field private mNestedScroll:Z

.field private mNestedScrollRange:I

.field private mNewTextViewHoverState:Z

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOldHoverScrollDirection:I

.field private mOldTextViewHoverState:Z

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

.field private mPenDistanceFromTrackedChildTop:I

.field private mPenDragBlockBottom:I

.field private mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mPenDragBlockLeft:I

.field private mPenDragBlockRect:Landroid/graphics/Rect;

.field private mPenDragBlockRight:I

.field private mPenDragBlockTop:I

.field private mPenDragEndX:I

.field private mPenDragEndY:I

.field private mPenDragScrollTimeInterval:J

.field private mPenDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenDragSelectedViewPosition:I

.field private mPenDragStartX:I

.field private mPenDragStartY:I

.field private mPenTrackedChild:Landroid/view/View;

.field private mPenTrackedChildPosition:I

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field private mRectColor:I

.field private mRectPaint:Landroid/graphics/Paint;

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRemainNestedScrollRange:I

.field private mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private final mScrollConsumed:[I

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

.field private mSeslPagingTouchSlop:I

.field private mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

.field private mSeslTouchSlop:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSizeChnage:Z

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field private mStrokeColor:I

.field private mStrokeHeight:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mUsePagingTouchSlopForStylus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

.field private final mWindowOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$4;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v10, 0x0

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mSeslTouchSlop:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mSeslPagingTouchSlop:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    new-instance v0, Landroid/support/v7/widget/ViewInfoStore;

    invoke-direct {v0}, Landroid/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v1, -0x1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    const/4 v2, 0x1

    iput v2, v6, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    iput v2, v6, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v11, 0x1

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    new-instance v2, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v2, v6}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v2}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    new-instance v2, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v2, v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v3, v2, [I

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    new-array v3, v2, [I

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    new-array v3, v2, [I

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    new-array v3, v2, [I

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mNestedScroll:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mGoToToping:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mShowGTPAtFirstTime:Z

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    const/16 v3, 0x9c4

    iput v3, v6, Landroid/support/v7/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutStart:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsGoToTopShown:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mLastBlackTop:I

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, v6, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mHoveringEnabled:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mAlwaysDisableHoverHighlight:Z

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mOldTextViewHoverState:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollSpeed:I

    const-wide/16 v3, 0x0

    iput-wide v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    iput-wide v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    iput-wide v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const-wide/16 v12, 0x12c

    iput-wide v12, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollTimeInterval:J

    const-wide/16 v12, 0x1f4

    iput-wide v12, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    iput-wide v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_DELAY:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollEnable:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateChanged:Z

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mExtraPaddingInBottomHoverArea:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsCloseChildSetted:Z

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mOldHoverScrollDirection:I

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByTop:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByBottom:I

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    new-instance v0, Landroid/support/v7/widget/RecyclerView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v6, v3}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/os/Looper;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$3;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$11;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$11;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$12;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$12;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$13;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView$13;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v6, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_1
    iput-boolean v11, v6, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    :goto_1
    invoke-virtual {v6, v11}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    invoke-virtual {v6, v11}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->seslInitConfigurations(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v11

    goto :goto_2

    :cond_2
    move v0, v10

    :goto_2
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v6, v11}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    const/4 v12, 0x1

    const/high16 v0, 0x40000

    if-eqz v8, :cond_6

    const/4 v13, 0x0

    sget-object v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {v7, v8, v2, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v14, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v1, :cond_4

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_4
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v6

    move-object v1, v7

    move-object v2, v15

    move-object v3, v8

    move v4, v9

    move/from16 v16, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {v7, v8, v0, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v12, v1

    :cond_5
    goto :goto_3

    :cond_6
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sget v2, Landroid/support/v7/recyclerview/R$drawable;->sesl_pen_block_selection:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$attr;->goToTopStyle:I

    invoke-virtual {v2, v3, v1, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/recyclerview/R$attr;->roundedCornerColor:I

    invoke-virtual {v3, v4, v1, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_8

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v6, Landroid/support/v7/widget/RecyclerView;->mRectColor:I

    :cond_8
    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    iget v4, v6, Landroid/support/v7/widget/RecyclerView;->mRectColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/recyclerview/R$attr;->roundedCornerStrokeColor:I

    invoke-virtual {v3, v4, v1, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_9

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v6, Landroid/support/v7/widget/RecyclerView;->mStrokeColor:I

    :cond_9
    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    iget v4, v6, Landroid/support/v7/widget/RecyclerView;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setHostView(Landroid/view/View;)V

    new-instance v3, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {v6, v12}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/RecyclerView;J)J
    .locals 0

    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    return p1
.end method

.method static synthetic access$102(Landroid/support/v7/widget/RecyclerView;J)J
    .locals 0

    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$1202(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/RecyclerView;)F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mOldHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$1802(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mOldHoverScrollDirection:I

    return p1
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCloseChildSetted:Z

    return v0
.end method

.method static synthetic access$1902(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsCloseChildSetted:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    return p1
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    return v0
.end method

.method static synthetic access$2202(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    return p1
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByBottom:I

    return v0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    return v0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByTop:I

    return v0
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    return v0
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    return v0
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/support/v7/widget/RecyclerView;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return-void
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$3300(Landroid/support/v7/widget/RecyclerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$3502(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$4500(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$4800(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$5000(Landroid/support/v7/widget/RecyclerView;)[I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    return-object v0
.end method

.method static synthetic access$5100(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    return v0
.end method

.method static synthetic access$5300(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScroll:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/support/v7/widget/RecyclerView;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$5600()Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/SeslRecyclerViewFastScroller;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    return v0
.end method

.method static synthetic access$6100(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return v0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return p1
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v0, v2}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private adjustNestedScrollRange()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getLocationInWindow([I)V

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    :cond_0
    return-void
.end method

.method private adjustNestedScrollRangeBy(I)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    :cond_2
    :goto_0
    return-void
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-eq p1, p2, :cond_2

    if-eqz p6, :cond_1

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_3
    return-void
.end method

.method private autoHide(I)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private canScrollDown()Z
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "SeslRecyclerView"

    const-string v3, "No adapter attached; skipping canScrollDown"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    if-lez v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move v2, v4

    nop

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private canScrollUp()Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    if-ge v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private cancelTouch()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method private contentFits()Z
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 9

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    nop

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    sget-object v5, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p3, v6, v3

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v6

    nop

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :goto_1
    nop

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3, v5}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Error creating LayoutManager "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Class is not a LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot access non-public constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Unable to find LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v2

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v5

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v5, v6, v3}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    move v1, v2

    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ViewInfoStore;->isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v5

    const/16 v6, 0x2000

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-nez v6, :cond_5

    or-int/lit16 v5, v5, 0x1000

    :cond_5
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, v4, v5, v9}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    if-eqz v6, :cond_6

    invoke-virtual {p0, v4, v7}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    :cond_6
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v8, v4, v7}, Landroid/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 19

    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v8, 0x1

    iput v8, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v8

    :goto_0
    move v9, v0

    if-ltz v9, :cond_4

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v7, v10}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v11

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v10}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v13

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v11, v12}, Landroid/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v15

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v16

    if-eqz v15, :cond_1

    if-ne v14, v10, :cond_1

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_1
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ViewInfoStore;->popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v17

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ViewInfoStore;->popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v18

    if-nez v17, :cond_2

    invoke-direct {v7, v11, v12, v10, v14}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v0, v7

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    :goto_1
    goto :goto_2

    :cond_3
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :goto_2
    add-int/lit8 v0, v9, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewInfoStore;->process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    :cond_5
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastBlackTop:I

    const/4 v0, -0x1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    iget-boolean v1, v7, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v8

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-boolean v3, v1, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v3, :cond_6

    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    iget-boolean v3, v1, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_7

    iget-boolean v3, v1, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v3, :cond_8

    :cond_7
    iput-boolean v2, v7, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v0, -0x1

    :cond_8
    :goto_3
    if-ltz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v3

    if-gt v0, v3, :cond_a

    iget-object v3, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v7, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    :cond_9
    const-string v6, "SeslRecyclerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dispatchLayoutStep3, lastPosition : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mBlackTop : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " tempView bottom : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mDrawReverse : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v7, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iput-boolean v2, v7, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    iput-boolean v2, v7, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_b
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v0, :cond_c

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_c
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v2

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v1, v8

    invoke-direct {v7, v0, v1}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v7, v2, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v3, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_2

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private findFirstChildPosition()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v2

    aget v0, v2, v1

    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, -0x1

    aput v3, p1, v2

    aput v3, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ge v7, v4, :cond_2

    move v4, v7

    :cond_2
    if-le v7, v5, :cond_3

    move v5, v7

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    aput v4, p1, v2

    aput v5, p1, v1

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 6

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_3
    const/4 v4, 0x0

    if-ltz v3, :cond_6

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-nez v5, :cond_4

    return-object v4

    :cond_4
    iget-object v4, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_6
    return-object v4
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-ne v3, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "SeslRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be found but it is necessary for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initChildrenHelper()V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ChildHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    if-eq p2, p0, :cond_19

    if-ne p1, p2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_4

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gt v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_8

    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_8

    const/4 v3, -0x1

    :cond_8
    :goto_1
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_9

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_a

    :cond_9
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_a

    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_b

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_c

    :cond_b
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_c

    const/4 v4, -0x1

    :cond_c
    :goto_2
    const/16 v5, 0x11

    if-eq p3, v5, :cond_17

    const/16 v5, 0x21

    if-eq p3, v5, :cond_15

    const/16 v5, 0x42

    if-eq p3, v5, :cond_13

    const/16 v5, 0x82

    if-eq p3, v5, :cond_11

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid direction: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-gtz v4, :cond_e

    if-nez v4, :cond_d

    mul-int v5, v3, v2

    if-ltz v5, :cond_d

    goto :goto_3

    :cond_d
    goto :goto_4

    :cond_e
    :goto_3
    move v0, v1

    :goto_4
    return v0

    :pswitch_1
    if-ltz v4, :cond_10

    if-nez v4, :cond_f

    mul-int v5, v3, v2

    if-gtz v5, :cond_f

    goto :goto_5

    :cond_f
    goto :goto_6

    :cond_10
    :goto_5
    move v0, v1

    :goto_6
    return v0

    :cond_11
    if-lez v4, :cond_12

    move v0, v1

    nop

    :cond_12
    return v0

    :cond_13
    if-lez v3, :cond_14

    move v0, v1

    nop

    :cond_14
    return v0

    :cond_15
    if-gez v4, :cond_16

    move v0, v1

    nop

    :cond_16
    return v0

    :cond_17
    if-gez v3, :cond_18

    move v0, v1

    nop

    :cond_18
    return v0

    :cond_19
    :goto_7
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSupportGotoTop()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTalkBackIsRunning()Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private multiSelection(IIIIZ)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    if-eqz v0, :cond_2

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    int-to-float v0, p1

    int-to-float v3, p2

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v0, :cond_0

    int-to-float v0, p1

    int-to-float v3, p2

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "multiSelection, mPenTrackedChild is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStart(II)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-nez v0, :cond_4

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStart(II)V

    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    :cond_4
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-gez v0, :cond_5

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-le v0, p4, :cond_6

    iput p4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :cond_6
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    if-ge v0, v3, :cond_7

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    goto :goto_1

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    :goto_1
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v3, :cond_8

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    goto :goto_2

    :cond_8
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :goto_2
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    if-le v0, v3, :cond_9

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    goto :goto_3

    :cond_9
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    :goto_3
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-le v0, v3, :cond_a

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_4

    :cond_a
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    :goto_4
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    const/4 p5, 0x1

    :cond_b
    if-eqz p5, :cond_13

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v0, p3

    if-gt p2, v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_c

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_d
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v0, p4, v0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, v3

    if-lt p2, v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v0, :cond_e

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_f
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_10
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iput-wide v3, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v0, v1, :cond_11

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_11
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_12
    :goto_5
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_13
    return-void
.end method

.method private multiSelectionEnd(II)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStop(II)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pageScroll(I)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v2, "No adapter attached; skipping pageScroll"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    sub-int/2addr v1, v3

    nop

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_2
    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/RecyclerView$15;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/RecyclerView$15;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playGotoToFadeIn()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playGotoToFadeOut()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iput-boolean v1, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    sub-float v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    cmpg-float v2, p4, v1

    if-gez v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-float v3, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    cmpl-float v2, p4, v1

    if-lez v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p1, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    cmpl-float v2, p2, v1

    if-nez v2, :cond_4

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :cond_4
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    :cond_7
    :goto_1
    if-eqz v1, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v5, v2

    cmp-long v2, v5, v3

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v1, v2

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    return-void

    :cond_a
    :goto_2
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v3, 0x1

    xor-int/lit8 v9, v2, 0x1

    if-nez p2, :cond_3

    move v10, v3

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetTouch()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private saveFocusInfo()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide/16 v3, -0x1

    :goto_1
    iput-wide v3, v2, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_2
    iput v3, v2, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    :goto_3
    return-void
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return-void
.end method

.method private setupGoToTop(I)V
    .locals 12

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollDown()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 p1, 0x1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eq p1, v0, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    div-int/2addr v8, v1

    sub-int v8, v5, v8

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    sub-int v9, v3, v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    div-int/2addr v10, v1

    add-int/2addr v10, v5

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int v11, v3, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    goto :goto_2

    :pswitch_1
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v7, v1, :cond_a

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    :cond_a
    :goto_2
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v7, v1, :cond_b

    iput v6, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-ne p1, v0, :cond_d

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_d
    iput-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/view/SeslInputDeviceReflector;->setPointerType(Landroid/view/InputDevice;I)V

    const/4 v0, 0x1

    return v0
.end method

.method private stopScrollersInternal()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v9

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iput v8, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v0, :cond_0

    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string/jumbo v1, "updateLongPressMultiSelection, mPenTrackedChild is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    return-void

    :cond_0
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    invoke-interface {v0, v7, v8}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    :cond_1
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iput-boolean v10, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, v6, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v2, :cond_3

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    :goto_0
    move v12, v0

    move v11, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    goto :goto_0

    :goto_1
    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iput v8, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-gez v0, :cond_4

    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_2

    :cond_4
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-le v0, v11, :cond_5

    iput v11, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :cond_5
    :goto_2
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    int-to-float v0, v0

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    int-to-float v1, v1

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/support/v7/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v1, "SeslRecyclerView"

    const-string/jumbo v2, "updateLongPressMultiSelection, touchedView is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move-object v13, v0

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    iput v14, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-ge v0, v1, :cond_7

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    :goto_3
    move v4, v0

    goto :goto_4

    :cond_7
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    goto :goto_3

    :goto_4
    move v5, v1

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    if-ge v0, v1, :cond_8

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    goto :goto_5

    :cond_8
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    :goto_5
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v1, :cond_9

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    goto :goto_6

    :cond_9
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :goto_6
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    if-le v0, v1, :cond_a

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    goto :goto_7

    :cond_a
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    :goto_7
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-le v0, v1, :cond_b

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_8

    :cond_b
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    :goto_8
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    move v0, v10

    :goto_9
    move v3, v0

    if-ge v3, v9, :cond_10

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v4, v1, :cond_c

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v1, v5, :cond_c

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-eq v1, v10, :cond_c

    const/4 v0, 0x1

    :cond_c
    move v10, v0

    if-eqz v10, :cond_d

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-eq v0, v15, :cond_e

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_e

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v16

    move/from16 v18, v1

    move-object v1, v6

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v3, v18

    move/from16 v21, v4

    move/from16 v18, v5

    move-wide/from16 v4, v16

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V

    goto :goto_a

    :cond_d
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v18, v5

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-eq v0, v15, :cond_f

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_f

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    move-object/from16 v4, v19

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v16

    move-object v1, v6

    move-object v2, v4

    move-wide/from16 v4, v16

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V

    goto :goto_a

    :cond_e
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v18, v5

    :cond_f
    :goto_a
    add-int/lit8 v0, v20, 0x1

    move/from16 v5, v18

    move/from16 v4, v21

    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_10
    move/from16 v21, v4

    move/from16 v18, v5

    if-eqz p3, :cond_17

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v1, v12

    const/4 v2, 0x1

    if-gt v8, v1, :cond_12

    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_11

    iput-boolean v2, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_11

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v6, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_11
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 v1, 0x2

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    :cond_12
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v1, v11, v1

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v1, v3

    if-lt v8, v1, :cond_14

    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_13

    iput-boolean v2, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_13

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v6, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_13
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput v2, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_15

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_15

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v6, v3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_15
    const-wide/16 v4, 0x0

    iput-wide v4, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iput-wide v4, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-boolean v3, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v1, v2, :cond_16

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_16
    iput-boolean v3, v6, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_17
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void

    :cond_18
    const-string v1, "SeslRecyclerView"

    const-string/jumbo v2, "touchedPosition is NO_POSITION"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_2

    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clearOldPositions()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    nop

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastBlackTop:I

    if-eq v2, v4, :cond_7

    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    goto :goto_2

    :cond_3
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    :cond_5
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-ne v1, v4, :cond_6

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-eq v1, v2, :cond_8

    :cond_6
    const/4 v4, 0x0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v1, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v6

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(IIIILandroid/graphics/Canvas;)V

    goto :goto_3

    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v1

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {v6}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->getRoundedCornerRadius()I

    move-result v6

    add-int/2addr v6, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(IIIILandroid/graphics/Canvas;)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v3, "No adapter attached; skipping hover scroll"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    const/16 v0, 0x9

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v3, v6, :cond_1

    if-ne v3, v0, :cond_2

    :cond_1
    if-ne v5, v8, :cond_2

    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    goto :goto_0

    :cond_2
    if-ne v3, v7, :cond_3

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    :cond_3
    :goto_0
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->isTextViewHovered()Z

    move-result v10

    iput-boolean v10, v1, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    iget-boolean v10, v1, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    const/16 v11, 0x20

    if-nez v10, :cond_5

    iget-boolean v10, v1, Landroid/support/v7/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eqz v10, :cond_5

    iget-boolean v10, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v10, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-eq v10, v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-ne v10, v8, :cond_5

    :cond_4
    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    goto :goto_1

    :cond_5
    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    :goto_1
    iget-boolean v10, v1, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    iput-boolean v10, v1, Landroid/support/v7/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eq v3, v0, :cond_b

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateChanged:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    if-ne v3, v6, :cond_a

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v0, :cond_7

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v8, :cond_8

    :cond_7
    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_6

    :cond_9
    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_15

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v11, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v8, :cond_15

    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_6

    :cond_a
    if-ne v3, v7, :cond_15

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_6

    :cond_b
    :goto_2
    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateChanged:Z

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_c
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollEnable:Z

    if-nez v0, :cond_e

    :cond_d
    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_e
    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v0, :cond_14

    if-ne v5, v8, :cond_14

    invoke-static {}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v10, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_f

    move v0, v9

    goto :goto_3

    :cond_f
    move v0, v4

    :goto_3
    move v12, v0

    move v13, v4

    :try_start_0
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "car_mode_on"

    invoke-static {v0, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v9, :cond_10

    move v0, v9

    goto :goto_4

    :cond_10
    move v0, v4

    :goto_4
    move v13, v0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v14, "SeslRecyclerView"

    const-string v15, "dispatchHoverEvent car_mode_on SettingNotFoundException"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v12, :cond_11

    if-eqz v13, :cond_12

    :cond_11
    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_12
    if-eqz v12, :cond_14

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v11, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-ne v0, v8, :cond_14

    :cond_13
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    :cond_14
    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    if-ne v5, v0, :cond_15

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_15
    :goto_6
    iget-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-nez v0, :cond_16

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v15, v1, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v15, :cond_17

    iget-object v15, v1, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v15

    iget-object v7, v1, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v7

    :goto_7
    goto :goto_8

    :cond_17
    iget v13, v1, Landroid/support/v7/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    iget v15, v1, Landroid/support/v7/widget/RecyclerView;->mExtraPaddingInBottomHoverArea:I

    sub-int v15, v7, v15

    goto :goto_7

    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v7

    add-int/2addr v7, v12

    iget-object v14, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v14

    if-ge v7, v14, :cond_18

    move v7, v9

    goto :goto_9

    :cond_18
    move v7, v4

    :goto_9
    if-nez v7, :cond_1b

    if-lez v12, :cond_1b

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v1, v14}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v16

    iget-object v6, v1, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v16, v6

    if-gt v9, v6, :cond_1a

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    iget-object v11, v1, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    if-le v6, v9, :cond_19

    goto :goto_a

    :cond_19
    move v6, v4

    goto :goto_b

    :cond_1a
    :goto_a
    const/4 v6, 0x1

    :goto_b
    move v7, v6

    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v6

    if-lez v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_c

    :cond_1c
    move v6, v4

    :goto_c
    if-nez v6, :cond_1e

    if-lez v12, :cond_1e

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v14, v1, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v11, v14, :cond_1d

    const/4 v11, 0x1

    goto :goto_d

    :cond_1d
    move v11, v4

    :goto_d
    move v6, v11

    :cond_1e
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v8, :cond_1f

    const/4 v9, 0x1

    goto :goto_e

    :cond_1f
    move v9, v4

    :goto_e
    iget v11, v1, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v11, v13

    move/from16 v17, v5

    const-wide/16 v4, 0x0

    if-le v10, v11, :cond_21

    iget v11, v1, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v11, v15, v11

    iget v14, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v11, v14

    if-lt v10, v11, :cond_20

    goto :goto_10

    :cond_20
    :goto_f
    move/from16 v18, v9

    goto/16 :goto_13

    :cond_21
    :goto_10
    if-lez v0, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v11

    if-gt v0, v11, :cond_37

    if-nez v6, :cond_22

    if-eqz v7, :cond_20

    :cond_22
    if-lt v10, v13, :cond_23

    iget v11, v1, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v11, v13

    if-gt v10, v11, :cond_23

    if-nez v6, :cond_23

    iget-boolean v11, v1, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v11, :cond_20

    :cond_23
    iget v11, v1, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v11, v15, v11

    iget v14, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v11, v14

    if-lt v10, v11, :cond_24

    iget v11, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int v11, v15, v11

    if-gt v10, v11, :cond_24

    if-nez v7, :cond_24

    iget-boolean v11, v1, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v11, :cond_20

    :cond_24
    if-eqz v9, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/16 v14, 0x20

    if-eq v11, v14, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-eq v11, v8, :cond_20

    :cond_25
    if-eqz v9, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isLockScreenMode()Z

    move-result v11

    if-eqz v11, :cond_26

    goto :goto_f

    :cond_26
    iget-boolean v11, v1, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v11, :cond_27

    iget v11, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v11, :cond_27

    iget v11, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v14, v1, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v11, v14, :cond_27

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_27
    iget-boolean v11, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v11, :cond_28

    move/from16 v18, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    goto :goto_11

    :cond_28
    move/from16 v18, v9

    :goto_11
    const/4 v8, 0x7

    if-eq v3, v8, :cond_2d

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    iget-object v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_29
    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2a

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_2a
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v8

    invoke-direct {v1, v2, v8}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    iput-boolean v9, v1, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    iget v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v4, :cond_2b

    iput v9, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v4, :cond_2b

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v4, v1, v9}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_2b
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :pswitch_1
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-lt v10, v13, :cond_2c

    iget v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v4, v13

    if-gt v10, v4, :cond_2c

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const/4 v4, 0x2

    iput v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :cond_2c
    iget v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v4, v15, v4

    iget v5, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v4, v5

    if-lt v10, v4, :cond_36

    iget v4, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int v4, v15, v4

    if-gt v10, v4, :cond_36

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const/4 v4, 0x1

    iput v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :cond_2d
    iget-boolean v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v8, :cond_2e

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :cond_2e
    if-lt v10, v13, :cond_31

    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v8, v13

    if-gt v10, v8, :cond_31

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iget-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v4, :cond_2f

    iget v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    :cond_2f
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    :cond_30
    const/4 v4, 0x2

    iput v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    :cond_31
    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v8, v15, v8

    iget v9, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v8, v9

    if-lt v10, v8, :cond_34

    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int v8, v15, v8

    if-gt v10, v8, :cond_34

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iget-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v4, :cond_32

    iget v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    :cond_32
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    :cond_33
    const/4 v4, 0x1

    iput v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    :cond_34
    const/4 v8, 0x0

    iget-object v9, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget v9, v1, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_35

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_35
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v8

    invoke-direct {v1, v2, v8}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    nop

    :cond_36
    :goto_12
    const/4 v4, 0x1

    return v4

    :cond_37
    move/from16 v18, v9

    :goto_13
    iget-boolean v8, v1, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v8, :cond_38

    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v8, :cond_38

    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v9, v1, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v8, v9, :cond_38

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_38
    iget-object v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_39

    iget-object v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v8

    invoke-direct {v1, v2, v8}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_39

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_39
    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v8, v13

    if-le v10, v8, :cond_3a

    iget v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v8, v15, v8

    iget v9, v1, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v8, v9

    if-lt v10, v8, :cond_3b

    :cond_3a
    if-lez v0, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v8

    if-le v0, v8, :cond_3c

    :cond_3b
    const/4 v8, 0x0

    iput-boolean v8, v1, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    :cond_3c
    iget-boolean v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v8, :cond_3d

    iget-wide v8, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3e

    :cond_3d
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v8

    invoke-direct {v1, v2, v8}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    :cond_3e
    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    iput-wide v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    iput-boolean v4, v1, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    const/16 v5, 0xa

    if-ne v3, v5, :cond_3f

    iget v5, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v5, :cond_3f

    iput v4, v1, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v5, :cond_3f

    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v5, v1, v4}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_3f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsArrowKeyPressed:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method dispatchLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "SeslRecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v2, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iput v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getItemAnimationTypeInternal()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "dispatchTouchEvent : itemAnimator is running, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "SeslRecyclerView"

    const-string v1, "No layout manager attached; skipping gototop & multiselection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    :cond_2
    iget-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    move v12, v5

    move v13, v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    move v12, v5

    move v13, v6

    :goto_0
    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v12

    move v9, v13

    move v10, v11

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->multiSelection(IIIIZ)V

    goto/16 :goto_7

    :pswitch_1
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->isTextSelectionProgressing()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    goto :goto_2

    :cond_5
    :goto_1
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v1, :cond_1a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    goto/16 :goto_7

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-eqz v6, :cond_a

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-ne v6, v1, :cond_6

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    :cond_6
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v7, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_3

    :pswitch_3
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v5, :cond_7

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v12

    move v9, v13

    move v10, v11

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v2

    :cond_7
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v5, :cond_8

    invoke-direct {p0, v3, v4, v2}, Landroid/support/v7/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return v2

    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-ne v5, v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_9

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    :cond_9
    return v2

    :cond_a
    :goto_3
    :pswitch_4
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v6, :cond_b

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->multiSelectionEnd(II)V

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    return v2

    :cond_b
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    invoke-interface {v6, v3, v4}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    :cond_c
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const/4 v6, -0x1

    iput v6, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v6, v2, :cond_d

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_d
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    :cond_e
    :pswitch_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v6

    if-eqz v6, :cond_15

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-ne v6, v1, :cond_15

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

    invoke-interface {v1, p0}, Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;->onGoToTopClick(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    const-string v1, "SeslRecyclerView"

    const-string v6, " can scroll top "

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v6, :cond_10

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v6, v5, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_5

    :cond_10
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToping:Z

    if-lez v1, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v6

    if-ge v1, v6, :cond_12

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v6, v6, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6, v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_4

    :cond_11
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_12
    :goto_4
    new-instance v6, Landroid/support/v7/widget/RecyclerView$14;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/RecyclerView$14;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :goto_5
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v6, :cond_13

    const/high16 v6, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/16 v8, 0x96

    invoke-virtual {p0, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->seslShowGoToTopEdge(FFI)V

    goto :goto_6

    :cond_13
    const-string v6, "SeslRecyclerView"

    const-string v7, " There is no mTopGlow"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->seslHideGoToTop()V

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->playSoundEffect(I)V

    return v2

    :cond_15
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    if-eqz v1, :cond_16

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_16
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->multiSelectionEnd(II)V

    goto :goto_7

    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v6

    if-eqz v6, :cond_17

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToping:Z

    :cond_17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_18

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-eq v6, v1, :cond_18

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v2

    :cond_18
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    if-eqz v1, :cond_19

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v7, :cond_19

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v12

    move v9, v13

    move v10, v11

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v2

    :cond_19
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v1, :cond_1a

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    :cond_1a
    :goto_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    move v2, v6

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    or-int/2addr v2, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    goto :goto_4

    :cond_7
    move v6, v1

    :goto_4
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v7, v6

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v1

    :goto_5
    or-int/2addr v2, v7

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v3}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v1, v4

    nop

    :cond_b
    or-int/2addr v2, v1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v2, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    :cond_d
    if-eqz v2, :cond_e

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v1, :cond_f

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->drawGoToTop(Landroid/graphics/Canvas;)V

    :cond_f
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_15

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    if-nez v1, :cond_10

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-lt v4, v1, :cond_12

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-gt v4, v3, :cond_12

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-eqz v5, :cond_11

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    :cond_11
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    add-int/2addr v5, v4

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    :cond_12
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-ge v4, v5, :cond_13

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    goto :goto_7

    :cond_13
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :goto_7
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-le v4, v5, :cond_14

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_8

    :cond_14
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    :goto_8
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    :cond_15
    :goto_9
    return-void

    :cond_16
    :goto_a
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->access$4900(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/support/v7/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    iput v0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    const/4 p2, 0x0

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v4, v3

    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v4}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v5

    if-eqz v5, :cond_9

    return v3

    :cond_9
    if-eqz v4, :cond_c

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    or-int/lit8 v1, v1, 0x1

    :cond_a
    if-eqz v2, :cond_b

    or-int/lit8 v1, v1, 0x2

    :cond_b
    invoke-virtual {p0, v1, v3}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v5, v5

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v5, v5

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    return v3

    :cond_c
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    const/16 v5, 0x21

    const/16 v6, 0x82

    const/4 v7, 0x0

    if-eqz v1, :cond_d

    const/4 v8, 0x2

    if-eq p2, v8, :cond_2

    if-ne p2, v2, :cond_d

    :cond_2
    const/4 v9, 0x0

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_5

    if-ne p2, v8, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v5

    :goto_1
    invoke-virtual {v4, p0, p1, v10}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_4

    move v12, v2

    goto :goto_2

    :cond_4
    move v12, v3

    :goto_2
    move v9, v12

    sget-boolean v12, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v12, :cond_5

    move p2, v10

    :cond_5
    if-nez v9, :cond_a

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v10

    if-ne v10, v2, :cond_6

    move v10, v2

    goto :goto_3

    :cond_6
    move v10, v3

    :goto_3
    if-ne p2, v8, :cond_7

    move v8, v2

    goto :goto_4

    :cond_7
    move v8, v3

    :goto_4
    xor-int/2addr v8, v10

    if-eqz v8, :cond_8

    const/16 v8, 0x42

    goto :goto_5

    :cond_8
    const/16 v8, 0x11

    :goto_5
    invoke-virtual {v4, p0, p1, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    :goto_6
    move v9, v2

    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v2, :cond_a

    move p2, v8

    :cond_a
    if-eqz v9, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    return-object v7

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    :cond_c
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    :cond_d
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_e

    return-object v7

    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    :cond_f
    :goto_7
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2

    :cond_10
    invoke-direct {p0, v0, v7}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_11
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_12
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsArrowKeyPressed:Z

    if-eqz v2, :cond_15

    if-nez v0, :cond_15

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    if-ne p2, v6, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v6

    sub-int v2, v5, v6

    goto :goto_8

    :cond_13
    if-ne p2, v5, :cond_14

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getTop()I

    move-result v6

    sub-int v2, v5, v6

    :cond_14
    :goto_8
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v2, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIsArrowKeyPressed:Z

    :cond_15
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    nop

    :cond_1
    return-wide v1

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getItemDecorationCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public final getLongPressMultiSelectionListener()Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

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

.method initAdapterManager()V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/AdapterHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$7;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$7;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/FastScroller;

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_default_thickness:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_minimum_range:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Landroid/support/v7/widget/FastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isInScrollingContainer()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isLockScreenMode()Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move v3, v4

    return v3
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    move v2, p1

    move v3, p2

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    move v2, p2

    move v3, p1

    move v4, v1

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_4

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_3

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v2, :cond_3

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v8, v3, :cond_1

    goto :goto_3

    :cond_1
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v8, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    :cond_0
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v3, v4, v6, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GapWorker;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v7/widget/GapWorker;

    invoke-direct {v0}, Landroid/support/v7/widget/GapWorker;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    move v2, v3

    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v2

    float-to-long v4, v4

    iput-wide v4, v3, Landroid/support/v7/widget/GapWorker;->mFrameIntervalNs:J

    sget-object v3, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/GapWorker;->add(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->onDetach()V

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/GapWorker;->remove(Landroid/support/v7/widget/RecyclerView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeHeight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeHeight:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    :goto_1
    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/high16 v5, 0x400000

    and-int/2addr v2, v5

    if-eqz v2, :cond_7

    const/16 v2, 0x1a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_5

    neg-float v5, v2

    const/4 v6, 0x0

    :goto_2
    move v2, v5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    move v6, v2

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    nop

    move v6, v4

    goto :goto_2

    :goto_3
    move v5, v6

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    move v5, v4

    :goto_4
    cmpl-float v6, v2, v4

    if-nez v6, :cond_8

    cmpl-float v6, v5, v4

    if-eqz v6, :cond_a

    :cond_8
    cmpl-float v4, v2, v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move v3, v0

    :goto_5
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v0, v5

    float-to-int v7, v0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_a
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    return v4

    :cond_1
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v1, :cond_3

    const/16 v6, 0x2002

    invoke-static {v1, v6}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v10, :cond_5

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v10, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_5

    return v4

    :cond_5
    const/high16 v10, 0x3f000000    # 0.5f

    packed-switch v7, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v11, v3

    goto/16 :goto_d

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v11, v10

    float-to-int v11, v11

    iput v11, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v11, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v11, v10

    float-to-int v10, v11

    iput v10, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v10, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_1

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto :goto_1

    :pswitch_4
    iget v11, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    if-gez v11, :cond_6

    const-string v4, "SeslRecyclerView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error processing scroll; pointer index for id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v12, v10

    float-to-int v12, v12

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v13, v10

    float-to-int v10, v13

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v13, v12

    iget v14, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v14, v10

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v15, v4, :cond_c

    const/4 v15, 0x0

    if-eqz v2, :cond_8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_8

    if-lez v13, :cond_7

    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v13, v3

    goto :goto_2

    :cond_7
    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v13, v3

    :goto_2
    const/4 v15, 0x1

    :cond_8
    if-eqz v5, :cond_a

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_a

    if-lez v14, :cond_9

    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v14, v3

    goto :goto_3

    :cond_9
    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v14, v3

    :goto_3
    const/4 v15, 0x1

    :cond_a
    if-eqz v15, :cond_b

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_4

    :cond_b
    const/4 v3, 0x1

    goto :goto_4

    :cond_c
    move v3, v4

    :goto_4
    iget v4, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v4, v3, :cond_11

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v15, 0x0

    aget v4, v4, v15

    sub-int v4, v12, v4

    iput v4, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v3

    sub-int v3, v10, v4

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    if-nez v3, :cond_f

    if-eqz v2, :cond_d

    move v3, v13

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    if-eqz v5, :cond_e

    move v4, v14

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v0, v3, v4, v9}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v3, :cond_11

    if-nez v13, :cond_10

    if-eqz v14, :cond_11

    :cond_10
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v3, v0, v13, v14}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_11
    invoke-direct {v0, v14}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    goto :goto_8

    :pswitch_5
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    if-eqz v6, :cond_12

    const/4 v3, 0x1

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    nop

    :goto_8
    const/4 v11, 0x0

    goto/16 :goto_d

    :pswitch_6
    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    if-eqz v3, :cond_15

    const/16 v3, 0x4002

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mSeslPagingTouchSlop:I

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_a

    :cond_14
    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mSeslTouchSlop:I

    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    :cond_15
    :goto_a
    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_b

    :cond_16
    const/4 v4, 0x1

    :goto_b
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v11, 0x0

    aput v11, v10, v4

    aput v11, v3, v11

    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v3, :cond_17

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_17
    const/4 v3, 0x0

    if-eqz v2, :cond_18

    or-int/lit8 v3, v3, 0x1

    :cond_18
    if-eqz v5, :cond_19

    or-int/lit8 v3, v3, 0x2

    :cond_19
    if-eqz v6, :cond_1a

    const/4 v4, 0x1

    goto :goto_c

    :cond_1a
    move v4, v11

    :goto_c
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    nop

    :goto_d
    iget v3, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    goto :goto_e

    :cond_1b
    move v4, v11

    :goto_e
    return v4

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    :sswitch_2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_4
        0x5d -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onItemCountChanged(II)V

    :cond_0
    if-eqz p1, :cond_4

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    instance-of v3, v2, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget v3, v3, v0

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->getLocationInWindow([I)V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget v4, v4, v0

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    sub-int v5, v3, v5

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez v4, :cond_1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    :cond_1
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-nez v0, :cond_4

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v1, "SeslRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "auto = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fixedSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "SeslRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", ph ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_2

    if-ne v4, v5, :cond_2

    move v3, v2

    nop

    :cond_2
    if-nez v3, :cond_6

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v6, v2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v6, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v6, v7, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v5, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    :cond_5
    goto :goto_4

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    return-void

    :cond_8
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    :goto_1
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void

    :cond_b
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_3

    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v3, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2, v4, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    :goto_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onSizeChanged(IIII)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v8, 0x0

    if-nez v0, :cond_1e

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    return v9

    :cond_1
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v8

    :cond_2
    iput-boolean v8, v6, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    if-nez v14, :cond_4

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v8, v1, v9

    aput v8, v0, v8

    :cond_4
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v1, v9

    int-to-float v1, v1

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_8

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-ne v0, v9, :cond_6

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;->onPressed(F)V

    goto :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v9, :cond_7

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-nez v0, :cond_7

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;->onReleased(F)V

    :cond_7
    :goto_0
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_8

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_8

    :pswitch_4
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_9

    const-string v0, "SeslRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_9
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v4, v1

    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v3, v1

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int v16, v0, v4

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int v2, v0, v3

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move-object v0, v6

    move-object/from16 v19, v1

    move/from16 v1, v16

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v0, v0, v8

    sub-int v16, v16, v0

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v0, v0, v9

    move/from16 v1, v20

    sub-int v2, v1, v0

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v9

    int-to-float v1, v1

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v8

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v8

    add-int/2addr v1, v3

    aput v1, v0, v8

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v9

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v9

    add-int/2addr v1, v3

    aput v1, v0, v9

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v0, v0, v9

    invoke-direct {v6, v0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    move v1, v2

    :goto_1
    move/from16 v0, v16

    goto :goto_2

    :cond_a
    move/from16 v1, v20

    invoke-direct {v6, v1}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    goto :goto_1

    :goto_2
    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v2, v9, :cond_f

    const/4 v2, 0x0

    if-eqz v10, :cond_c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v6, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_c

    if-lez v0, :cond_b

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v0, v3

    goto :goto_3

    :cond_b
    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v3

    :goto_3
    const/4 v2, 0x1

    :cond_c
    if-eqz v11, :cond_e

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v6, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_e

    if-lez v1, :cond_d

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v1, v3

    goto :goto_4

    :cond_d
    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v1, v3

    :goto_4
    const/4 v2, 0x1

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_f
    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v2, v9, :cond_14

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v8

    sub-int v4, v19, v2

    iput v4, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v9

    sub-int v3, v21, v2

    iput v3, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-boolean v2, v6, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    if-nez v2, :cond_12

    if-eqz v10, :cond_10

    move v2, v0

    goto :goto_5

    :cond_10
    move v2, v8

    :goto_5
    if-eqz v11, :cond_11

    move v8, v1

    nop

    :cond_11
    invoke-virtual {v6, v2, v8, v13}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v2, :cond_14

    if-nez v0, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v2, v6, v0, v1}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_14
    goto/16 :goto_8

    :pswitch_5
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v12, 0x1

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_15

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_6

    :cond_15
    move v1, v0

    :goto_6
    if-eqz v11, :cond_16

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_7

    :cond_16
    move v2, v0

    :goto_7
    cmpl-float v3, v1, v0

    if-nez v3, :cond_17

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_18

    :cond_17
    float-to-int v0, v1

    float-to-int v3, v2

    invoke-virtual {v6, v0, v3}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_19
    const-string v0, "SeslRecyclerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchUp() velocity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    goto :goto_8

    :pswitch_6
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    iget-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_1a

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_1a
    const/4 v0, 0x0

    if-eqz v10, :cond_1b

    or-int/lit8 v0, v0, 0x1

    :cond_1b
    if-eqz v11, :cond_1c

    or-int/lit8 v0, v0, 0x2

    :cond_1c
    invoke-virtual {v6, v0, v8}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    nop

    :goto_8
    if-nez v12, :cond_1d

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1d
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_1e
    :goto_9
    return v8

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

.method postAnimationRunner()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v5, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    nop

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, p1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v1, :cond_4

    move v2, p2

    nop

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v4, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v4, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    if-eqz v8, :cond_0

    iget-object v4, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v6, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v8, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    sub-int v0, v8, v2

    :cond_0
    if-eqz v9, :cond_1

    iget-object v4, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v6, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v9, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    sub-int v1, v9, v3

    iget v4, v7, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-nez v4, :cond_1

    invoke-direct {v7, v12}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    invoke-direct {v7, v12}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    :cond_2
    move v6, v0

    move v13, v1

    move v14, v2

    move v15, v3

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_3
    const/4 v0, 0x1

    iget-boolean v1, v7, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    if-eqz v1, :cond_4

    if-gez v13, :cond_4

    const/4 v0, 0x0

    :cond_4
    move/from16 v16, v0

    if-eqz v10, :cond_5

    const/16 v0, 0x2002

    invoke-static {v10, v0}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v12

    goto :goto_0

    :cond_5
    move v0, v11

    :goto_0
    move/from16 v17, v0

    if-eqz v16, :cond_8

    iget-object v5, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    if-eqz v17, :cond_6

    move/from16 v18, v12

    goto :goto_1

    :cond_6
    move/from16 v18, v11

    :goto_1
    move-object v0, v7

    move v1, v14

    move v2, v15

    move v3, v6

    move v4, v13

    move/from16 v19, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v11

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v12

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    if-eqz v10, :cond_7

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v11

    int-to-float v0, v0

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v12

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_7
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v11

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v12

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    aput v1, v0, v12

    iput-boolean v12, v7, Landroid/support/v7/widget/RecyclerView;->mNestedScroll:Z

    move/from16 v1, v19

    goto :goto_3

    :cond_8
    move/from16 v19, v6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    if-eqz v10, :cond_a

    if-nez v17, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move/from16 v1, v19

    int-to-float v2, v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v13

    invoke-direct {v7, v0, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    goto :goto_2

    :cond_a
    move/from16 v1, v19

    :goto_2
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_3

    :cond_b
    move/from16 v1, v19

    :goto_3
    if-nez v14, :cond_c

    if-eqz v15, :cond_d

    :cond_c
    invoke-virtual {v7, v14, v15}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_e
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v7, v12}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_10
    if-nez v14, :cond_12

    if-eqz v15, :cond_11

    goto :goto_4

    :cond_11
    goto :goto_5

    :cond_12
    :goto_4
    move v11, v12

    :goto_5
    return v11
.end method

.method public scrollTo(II)V
    .locals 2

    const-string v0, "SeslRecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    :cond_2
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public seslFindNearChildViewUnder(FF)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float v5, v1, v4

    float-to-int v5, v5

    add-float/2addr v4, v2

    float-to-int v4, v4

    move v6, v4

    const v7, 0x7fffffff

    const/4 v8, 0x0

    add-int/lit8 v9, v3, -0x1

    :goto_0
    if-ltz v9, :cond_2

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int v13, v11, v12

    div-int/lit8 v13, v13, 0x2

    if-ne v8, v13, :cond_0

    goto :goto_1

    :cond_0
    move v8, v13

    sub-int v14, v4, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-ge v14, v7, :cond_2

    move v7, v14

    move v6, v13

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int/lit8 v13, v3, -0x1

    :goto_2
    if-ltz v13, :cond_b

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    move/from16 v16, v4

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v19, v7

    add-int/lit8 v7, v3, -0x1

    if-ne v13, v7, :cond_3

    add-int/lit8 v11, v3, -0x1

    add-int/lit8 v12, v3, -0x1

    sub-int v7, v5, v17

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v7, v5, v18

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    :cond_3
    if-lt v6, v15, :cond_5

    if-gt v6, v4, :cond_5

    sub-int v7, v5, v17

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move/from16 v20, v3

    sub-int v3, v5, v18

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v7, v9, :cond_4

    move v11, v13

    move v9, v7

    :cond_4
    if-gt v3, v10, :cond_6

    move v12, v13

    move v10, v3

    goto :goto_3

    :cond_5
    move/from16 v20, v3

    :cond_6
    :goto_3
    if-gt v6, v4, :cond_7

    if-nez v13, :cond_a

    :cond_7
    if-ge v9, v10, :cond_8

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v11}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_8
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v12}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_9
    move/from16 v20, v3

    move/from16 v16, v4

    move/from16 v19, v7

    :cond_a
    add-int/lit8 v13, v13, -0x1

    move/from16 v4, v16

    move/from16 v7, v19

    move/from16 v3, v20

    goto :goto_2

    :cond_b
    move/from16 v20, v3

    move/from16 v16, v4

    move/from16 v19, v7

    const-string v3, "SeslRecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findNearChildViewUnder didn\'t find valid child view! "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method public seslHideGoToTop()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public seslInitConfigurations(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mSeslTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mSeslPagingTouchSlop:I

    nop

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    nop

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    nop

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v4, 0x1

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    nop

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->sesl_go_to_top_scrollable_view_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->sesl_go_to_top_scrollable_view_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mNavigationBarHeight:I

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->sesl_round_stroke_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeHeight:I

    return-void
.end method

.method public seslIsFastScrollerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    return v0
.end method

.method public seslSetFastScrollerEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;I)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_2
    return-void
.end method

.method public seslSetFastScrollerEventListener(Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    return-void
.end method

.method public seslSetFillBottomColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method public seslSetFillBottomEnabled(Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/recyclerview/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public seslSetGoToTopEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    return-void
.end method

.method public seslSetGoToTopEnabled(ZZ)V
    .locals 9

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/recyclerview/R$drawable;->sesl_list_go_to_top_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/4 v7, 0x0

    const v8, 0x3ea8f5c3    # 0.33f

    invoke-direct {v4, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/support/v7/widget/RecyclerView$8;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/RecyclerView$8;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8, v7, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$9;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$9;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$10;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$10;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void

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

.method public seslSetLastItemOutlineStrokeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public seslSetLastOutlineStrokeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    return-void
.end method

.method public seslSetOutlineStrokeEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetOutlineStrokeEnabled(ZZ)V

    return-void
.end method

.method public seslSetOutlineStrokeEnabled(ZZ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    new-instance v0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/recyclerview/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public seslSetPagingTouchSlopForStylus(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    return-void
.end method

.method public seslShowGoToTopEdge(FFI)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {p0, v1, v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->invalidate(IIII)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v0

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    nop

    :cond_3
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_8

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already attached to a RecyclerView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method setScrollState(I)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SeslRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting scroll state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const-string v1, "SeslRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): slopConstant["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetPagingTouchSlopForStylus(Z)V

    packed-switch p1, :pswitch_data_0

    const-string v1, "SeslRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method showGoToTop()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->showGoToTop()V

    :cond_5
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    return-void
.end method

.method startInterceptRequestLayout()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_1
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_3

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_1

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
