.class Landroid/support/v7/widget/SeslRecyclerViewFastScroller;
.super Ljava/lang/Object;
.source "SeslRecyclerViewFastScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static LEFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static RIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAP_TIMEOUT:J

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalBottomPadding:I

.field private mAdditionalTouchArea:F

.field private mAlwaysShow:Z

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private mOrientation:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMarginEnd:I

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mTrackPadding:I

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$5;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    new-instance v2, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$1;-><init>(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    new-instance v2, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;-><init>(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollBarStyle()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setStyle(I)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroll_preview_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroll_thumb_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroll_additional_touch_area:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroller_track_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroller_additional_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v2, v2, [I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private beginDrag()V
    .locals 2

    const-string v0, "SeslFastScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelFling()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method private cancelFling()V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_0

    iget-object v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v5, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_11

    if-nez v3, :cond_2

    move-object/from16 v22, v4

    goto/16 :goto_9

    :cond_2
    const/4 v6, 0x0

    if-eqz v4, :cond_3

    iget-object v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    array-length v7, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    if-eqz v7, :cond_e

    iget-boolean v9, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    if-nez v9, :cond_4

    move-object/from16 v22, v4

    goto/16 :goto_8

    :cond_4
    iget v9, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    sub-int/2addr v1, v9

    if-gez v1, :cond_5

    return v5

    :cond_5
    iget v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    sub-int/2addr v3, v5

    iget-object v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v6, 0x0

    :goto_2
    nop

    invoke-interface {v4, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    iget-object v11, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    array-length v11, v11

    add-int/lit8 v12, v11, -0x1

    if-ge v9, v12, :cond_9

    add-int/lit8 v12, v9, 0x1

    if-ge v12, v11, :cond_8

    add-int/lit8 v12, v9, 0x1

    invoke-interface {v4, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    goto :goto_3

    :cond_8
    add-int/lit8 v12, v3, -0x1

    :goto_3
    sub-int/2addr v12, v10

    goto :goto_4

    :cond_9
    sub-int v12, v3, v10

    :goto_4
    if-nez v12, :cond_a

    const/4 v13, 0x0

    goto :goto_5

    :cond_a
    int-to-float v13, v1

    add-float/2addr v13, v6

    int-to-float v14, v10

    sub-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    :goto_5
    int-to-float v14, v9

    add-float/2addr v14, v13

    int-to-float v15, v11

    div-float/2addr v14, v15

    if-lez v1, :cond_d

    add-int v15, v1, v2

    if-ne v15, v3, :cond_d

    iget-object v15, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v15, v8}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v15, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v15

    move/from16 v17, v1

    iget-object v1, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    move/from16 v18, v1

    iget-object v1, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v1, v1, v19

    move/from16 v21, v3

    move/from16 v3, v18

    goto :goto_6

    :cond_b
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v15

    move/from16 v20, v1

    iget-object v1, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v1, v1, v18

    move/from16 v21, v3

    move/from16 v3, v20

    :goto_6
    if-lez v1, :cond_c

    if-lez v3, :cond_c

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v14

    move-object/from16 v22, v4

    int-to-float v4, v1

    move/from16 v23, v1

    int-to-float v1, v3

    div-float/2addr v4, v1

    mul-float v16, v16, v4

    add-float v14, v14, v16

    goto :goto_7

    :cond_c
    move-object/from16 v22, v4

    goto :goto_7

    :cond_d
    move/from16 v17, v1

    move/from16 v21, v3

    move-object/from16 v22, v4

    :goto_7
    return v14

    :cond_e
    move-object/from16 v22, v4

    :goto_8
    if-ne v2, v3, :cond_10

    iget-object v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v4, :cond_f

    if-eqz v1, :cond_f

    iget-object v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v6

    if-eqz v6, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    :cond_f
    return v5

    :cond_10
    int-to-float v4, v1

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    return v4

    :cond_11
    move-object/from16 v22, v4

    :goto_9
    return v5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float v0, p1, v0

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/support/v4/math/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    iput-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPointInsideX(F)Z
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private isPointInsideY(F)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private layoutThumb()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutTrack()V
    .locals 13

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    nop

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v4}, Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/view/View;->measure(II)V

    iget v7, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v8, v9

    move v12, v8

    move v8, v7

    move v7, v12

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    iget v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v7

    iget v10, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int v7, v9, v10

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    add-int v11, v10, v9

    invoke-virtual {v0, v10, v8, v11, v7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v9, v6, v1

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    nop

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static {v11, v8}, Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v8

    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v2

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    sub-int v16, v6, v13

    div-int/lit8 v16, v16, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v16, v0

    move/from16 v17, v1

    add-int v1, v0, v13

    move/from16 v18, v2

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v14, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    iget v2, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    const/4 v4, 0x0

    :goto_0
    goto :goto_1

    :cond_0
    iget v2, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    move v2, v3

    :goto_1
    const/4 v5, 0x0

    iget-object v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-nez p2, :cond_3

    move v8, v7

    :goto_2
    goto :goto_3

    :cond_3
    iget-boolean v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v8, v7, v8

    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v10, v8, v4

    sub-int/2addr v10, v2

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    nop

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-static {v12, v3}, Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v3

    move-object/from16 v12, p1

    invoke-virtual {v12, v11, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-boolean v14, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v14, :cond_6

    if-nez p2, :cond_5

    iget v14, v6, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    :goto_4
    sub-int/2addr v14, v2

    sub-int v15, v14, v13

    goto :goto_6

    :cond_6
    if-nez p2, :cond_7

    iget v14, v6, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    :goto_5
    add-int v15, v14, v4

    add-int v14, v15, v13

    :goto_6
    move/from16 v16, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v16

    add-int v1, v0, v17

    move/from16 v18, v2

    move-object/from16 v2, p4

    invoke-virtual {v2, v15, v0, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->stop()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private postAutoHide()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iget-object v3, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    iget-object v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    array-length v5, v4

    :goto_0
    if-eqz v4, :cond_8

    if-lez v5, :cond_8

    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int/lit8 v7, v5, -0x1

    invoke-static {v6, v2, v7}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result v6

    move v7, v6

    iget-object v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v8, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    move v9, v7

    move v10, v3

    move v11, v8

    move v12, v7

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v5, -0x1

    if-ge v7, v14, :cond_1

    iget-object v14, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v15, v7, 0x1

    invoke-interface {v14, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    :cond_1
    if-ne v10, v8, :cond_4

    :cond_2
    if-lez v7, :cond_4

    add-int/lit8 v7, v7, -0x1

    iget-object v14, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v14, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    if-eq v11, v8, :cond_3

    move v12, v7

    move v9, v7

    goto :goto_1

    :cond_3
    if-nez v7, :cond_2

    const/4 v9, 0x0

    nop

    :cond_4
    :goto_1
    add-int/lit8 v14, v13, 0x1

    :goto_2
    if-ge v14, v5, :cond_5

    iget-object v15, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    if-ne v15, v10, :cond_5

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    int-to-float v15, v12

    int-to-float v2, v5

    div-float/2addr v15, v2

    int-to-float v2, v13

    move-object/from16 v16, v4

    int-to-float v4, v5

    div-float/2addr v2, v4

    if-nez v3, :cond_6

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v17, v5

    goto :goto_3

    :cond_6
    const/high16 v4, 0x3e000000    # 0.125f

    move/from16 v17, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    :goto_3
    if-ne v12, v6, :cond_7

    sub-float v5, v1, v15

    cmpg-float v5, v5, v4

    if-gez v5, :cond_7

    move v5, v11

    goto :goto_4

    :cond_7
    sub-int v5, v10, v11

    int-to-float v5, v5

    sub-float v18, v1, v15

    mul-float v5, v5, v18

    sub-float v18, v2, v15

    div-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v5, v11

    :goto_4
    add-int/lit8 v8, v3, -0x1

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v5, v2, v8}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result v4

    goto :goto_5

    :cond_8
    move-object/from16 v16, v4

    move/from16 v17, v5

    int-to-float v4, v3

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v2, v5}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result v4

    const/4 v9, -0x1

    :goto_5
    move v2, v9

    iget-object v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v5, v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v5, :cond_9

    iget-object v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    iget v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    add-int/2addr v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    iget-object v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_6
    iget-object v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v5

    iget-object v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    iput v2, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-direct {v0, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    move-result v5

    const-string v6, "SeslFastScroller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    if-nez v6, :cond_a

    if-eqz v5, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToDragging()V

    goto :goto_7

    :cond_a
    iget-boolean v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    if-eqz v6, :cond_b

    if-nez v5, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    :cond_b
    :goto_7
    return-void
.end method

.method private setState(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToHidden()V

    nop

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    mul-float/2addr v3, p1

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    move v6, v3

    int-to-float v7, v1

    add-float/2addr v7, v5

    int-to-float v8, v2

    sub-float/2addr v8, v5

    invoke-static {v6, v7, v8}, Landroid/support/v4/math/MathUtils;->constrain(FFF)F

    move-result v9

    sub-float v10, v9, v5

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v11, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v11, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget-boolean v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v7, v4}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v0, v7, v4}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const-string v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-ne v8, v10, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v9

    return v8

    :cond_3
    :goto_1
    iget-object v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    iget-object v12, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->left:I

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->top:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v12, v14

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v4}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v12

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    sub-int v13, v16, v17

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    if-le v14, v13, :cond_5

    int-to-float v15, v13

    int-to-float v8, v14

    div-float/2addr v15, v8

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setScaleX(F)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v18, v9

    const-wide/16 v8, 0x64

    invoke-virtual {v15, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v8, v18

    invoke-virtual {v8, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_5
    move-object v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setScaleX(F)V

    :goto_2
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    if-le v9, v14, :cond_6

    int-to-float v15, v14

    int-to-float v1, v9

    div-float/2addr v15, v1

    invoke-static {v6, v15}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    :cond_6
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    :goto_3
    iget-object v1, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v15, 0x3e99999a    # 0.3f

    move-object/from16 v21, v2

    move-object/from16 v22, v6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v15, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1
.end method

.method private transitionToDragging()V
    .locals 8

    const-string v0, "SeslFastScroller"

    const-string/jumbo v1, "transitionToDragging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0xa7

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v3, v5, v6, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToHidden()V
    .locals 8

    const-string v0, "SeslFastScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionToHidden() mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v0, 0xa7

    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v4, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private transitionToVisible()V
    .locals 10

    const-string v0, "SeslFastScroller"

    const-string/jumbo v1, "transitionToVisible()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0xa7

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v5, v6, v9, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateAppearance()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$attr;->colorPrimary:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mWidth:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOrientation:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 3

    const/4 v0, 0x1

    if-lez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-eq v2, v1, :cond_2

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_2
    return-void
.end method

.method private updateOffsetAndRange()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    :goto_0
    move v2, v4

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float v4, v2, v3

    iput v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    return-void
.end method


# virtual methods
.method public canScrollList(I)Z
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_3

    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v6, v2, v0

    iget-object v7, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-lt v6, v7, :cond_2

    iget-object v7, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    return v1

    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-gtz v2, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v1, v4

    :goto_3
    return v1
.end method

.method getEffectState()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    const-string v1, "SeslFastScroller"

    const-string v2, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :pswitch_2
    const-string v0, "SeslFastScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->startPendingDrag()V

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    :cond_0
    iput p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    :cond_3
    return-void
.end method

.method public onScroll(III)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    if-eq v1, p1, :cond_4

    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v1, v2, :cond_4

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    :cond_4
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return v8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    iget v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v7, v12, :cond_1

    invoke-direct {v0, v8}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    :cond_1
    iput v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    iput v11, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto/16 :goto_2

    :pswitch_1
    const-string v7, "SeslFastScroller"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mInitialTouchY="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v14, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v7, v14, v9

    if-ltz v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v9, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iget v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v9, v2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    iget v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v9, v3

    cmpg-float v7, v7, v9

    if-gez v7, :cond_4

    const-string v7, "SeslFastScroller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", min="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", max="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v9, v2

    add-float/2addr v9, v5

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    int-to-float v7, v2

    add-float/2addr v7, v5

    iput v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_0

    :cond_2
    iget v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_3

    iput v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    :cond_3
    :goto_0
    iput v13, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    :cond_4
    iget v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v7, v12, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    iget-boolean v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_5

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    :cond_5
    iget v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v9, v2

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    iget v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v9, v3

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    const-string v8, "SeslFastScroller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", min="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", max="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v9, v2

    add-float/2addr v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    int-to-float v8, v2

    add-float/2addr v8, v5

    iput v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_1

    :cond_6
    iget v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_7

    iput v6, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    :cond_7
    :goto_1
    iput v13, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    :cond_8
    return v13

    :pswitch_2
    iget-wide v14, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v7, v14, v9

    if-ltz v7, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    invoke-direct {v0, v7}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    iput v13, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    const-string v9, "SeslFastScroller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v7, v12, :cond_a

    iget-object v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {v0, v13}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    iput v8, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    iput v11, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v13

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v0, v7, v9}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iput v13, v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    const-string v7, "SeslFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_a
    :goto_2
    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 3

    const-string v0, "SeslFastScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move p1, v1

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method public setStyle(I)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/recyclerview/R$styleable;->FastScroll:[I

    const/4 v2, 0x0

    const v3, 0x10103f7

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_e

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_position:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    goto/16 :goto_1

    :cond_0
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_backgroundLeft:I

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v2

    goto/16 :goto_1

    :cond_1
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_backgroundRight:I

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    goto/16 :goto_1

    :cond_2
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbDrawable:I

    if-ne v4, v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_3
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_trackDrawable:I

    if-ne v4, v5, :cond_4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_textAppearance:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    goto :goto_1

    :cond_5
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_textColor:I

    if-ne v4, v5, :cond_6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_6
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_textSize:I

    if-ne v4, v5, :cond_7

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    goto :goto_1

    :cond_7
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_minWidth:I

    if-ne v4, v5, :cond_8

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    :cond_8
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_minHeight:I

    if-ne v4, v5, :cond_9

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    :cond_9
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbMinWidth:I

    if-ne v4, v5, :cond_a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    goto :goto_1

    :cond_a
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbMinHeight:I

    if-ne v4, v5, :cond_b

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    goto :goto_1

    :cond_b
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_padding:I

    if-ne v4, v5, :cond_c

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    goto :goto_1

    :cond_c
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbPosition:I

    if-ne v4, v5, :cond_d

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    :cond_d
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateAppearance()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateContainerRect()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->layoutThumb()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->layoutTrack()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
