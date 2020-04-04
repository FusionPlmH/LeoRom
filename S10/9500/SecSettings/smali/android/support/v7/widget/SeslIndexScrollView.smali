.class public Landroid/support/v7/widget/SeslIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "SeslIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;,
        Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;,
        Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;,
        Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:Ljava/lang/String;

.field private mHasOverlayChild:Z

.field private mIndexBarGravity:I

.field mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

.field private mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

.field private mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

.field private final mIndexerObserver:Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

.field private mIsSimpleIndexScroll:Z

.field private mNumberOfLanguages:I

.field private mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

.field private mRegisteredDataSetObserver:Z

.field private mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

.field private mTouchY:F

.field private mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexBarGravity:I

    new-instance v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;-><init>(Landroid/support/v7/widget/SeslIndexScrollView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexerObserver:Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    const v0, -0x39e3c400    # -9999.0f

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mTouchY:F

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    iput-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexBarGravity:I

    new-instance v1, Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;-><init>(Landroid/support/v7/widget/SeslIndexScrollView;)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexerObserver:Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    const v1, -0x39e3c400    # -9999.0f

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mTouchY:F

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexBarGravity:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->init()V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SeslIndexScrollView;)F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mTouchY:F

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/SeslIndexScrollView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexBarGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslIndexScrollView;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mNumberOfLanguages:I

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslAbsIndexer;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SeslIndexScrollView;)Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    return-object v0
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslAbsIndexer;->getCurrentLang()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslAbsIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/SeslAbsIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v2, v1, :cond_1

    return v2

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslAbsIndexer;->getCurrentLang()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslAbsIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/SeslAbsIndexer;->getLangbyIndex(I)I

    move-result v4

    if-eq v0, v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v1, v2, -0x1

    sub-int/2addr v1, v3

    return v1

    :cond_2
    return v1
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslAbsIndexer;->getCachingValue(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v6, v2

    float-to-int v7, v1

    invoke-virtual {v4, v6, v7}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    iget-boolean v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_7

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_3

    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-boolean v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v3

    :goto_0
    if-eq v3, v5, :cond_7

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_3

    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    iget-object v7, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setEffectText(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->drawEffect(F)V

    iput v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mTouchY:F

    :cond_3
    iget-boolean v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v3

    :goto_1
    if-eq v3, v5, :cond_7

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    goto :goto_3

    :pswitch_1
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->close()V

    const v4, -0x39e3c400    # -9999.0f

    iput v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mTouchY:F

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v4, v1}, Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    goto :goto_3

    :pswitch_2
    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-nez v6, :cond_5

    return v4

    :cond_5
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/SeslIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v3

    :goto_2
    if-eq v3, v5, :cond_7

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SeslIndexScrollView;->notifyIndexChange(I)V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->invalidate()V

    const/4 v4, 0x1

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;-><init>(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    new-instance v0, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    iget-object v3, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexBarGravity:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;-><init>(Landroid/support/v7/widget/SeslIndexScrollView;Landroid/content/Context;III)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    return-void
.end method

.method private notifyIndexChange(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;->onIndexChanged(I)V

    :cond_0
    return-void
.end method

.method private setSimpleIndexWidth(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setDimensions(II)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->setLayout(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->invalidate()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexerObserver:Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslAbsIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mHasOverlayChild:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexerObserver:Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslAbsIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEffectBackgroundColor(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p1, v2}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$400(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    return-void
.end method

.method public setEffectTextColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScrollPreview:Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    return-void
.end method

.method public setIndexBarBackgroundColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$200(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$202(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIndexBarGravity(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexBarGravity:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setPosition(I)V

    return-void
.end method

.method public setIndexBarPressedTextColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$000(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$102(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;I)I

    return-void
.end method

.method public setIndexBarTextColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$302(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;I)I

    return-void
.end method

.method public setIndexer(Landroid/support/v7/widget/SeslAbsIndexer;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    iget-object v2, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexerObserver:Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslAbsIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexerObserver:Landroid/support/v7/widget/SeslIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslAbsIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mRegisteredDataSetObserver:Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$000(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v0}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$000(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {v1}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->access$100(Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslAbsIndexer;->cacheIndexInfo()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexScroll:Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;

    iget-object v1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslAbsIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Landroid/support/v7/widget/SeslIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/SeslIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIsSimpleIndexScroll:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslAbsIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mIndexer:Landroid/support/v7/widget/SeslAbsIndexer;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslAbsIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mNumberOfLanguages:I

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeslIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnIndexBarEventListener(Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslIndexScrollView;->mOnIndexBarEventListener:Landroid/support/v7/widget/SeslIndexScrollView$OnIndexBarEventListener;

    return-void
.end method
