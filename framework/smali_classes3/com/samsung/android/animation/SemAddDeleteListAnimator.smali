.class public Lcom/samsung/android/animation/SemAddDeleteListAnimator;
.super Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.source "SemAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDeletePending:Z

.field private mInsertDeletePending:Z

.field private mInsertPending:Z

.field private mIsInsertDelete:Z

.field private mListView:Landroid/widget/ListView;

.field mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOldViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SemAddDeleteListAnimator"

    sput-object v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertPending:Z

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeletePending:Z

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeletePending:Z

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mIsInsertDelete:Z

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mHostView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getChildMaxHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private capturePreAnimationViewCoordinates()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_5

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    add-int v15, v8, v4

    invoke-interface {v2, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v26, v1

    move/from16 v27, v15

    goto/16 :goto_3

    :cond_0
    invoke-static {v9}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v23

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_3

    if-ge v15, v6, :cond_2

    add-int/lit8 v12, v15, 0x1

    int-to-long v10, v12

    :cond_1
    :goto_1
    move-wide v13, v10

    goto :goto_2

    :cond_2
    sub-int v12, v5, v7

    if-lt v15, v12, :cond_1

    add-int v12, v15, v7

    sub-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    neg-int v13, v12

    int-to-long v10, v13

    goto :goto_1

    :goto_2
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    const/16 v16, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v19

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v11, v23

    move-object/from16 v26, v1

    move-object v1, v12

    move v12, v15

    move-wide/from16 v20, v13

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v27, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v11, v24

    move-object/from16 v10, v25

    invoke-virtual {v1, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    move-object/from16 v26, v1

    move/from16 v27, v15

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    add-int v18, v8, v4

    const/16 v19, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v22

    move-object/from16 v16, v13

    move-object/from16 v17, v23

    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v1, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move-object/from16 v26, v1

    move/from16 v27, v15

    :goto_3
    sget-object v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDelete() child\'s one of dimensions is 0, i="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v26

    goto/16 :goto_0

    :cond_5
    move-object/from16 v26, v1

    return-void
.end method

.method private ensureAdapterAndListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SemAddDeleteListAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getChildMaxHeight()I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    add-int v5, v4, v2

    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v6

    sub-int v6, v1, v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-le v6, v3, :cond_1

    move v3, v6

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private prepareDelete(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeletePending:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->ensureAdapterAndListener()V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->capturePreAnimationViewCoordinates()V

    new-instance v11, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v10

    move v4, v9

    move v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v11, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private prepareInsert(Ljava/util/ArrayList;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertPending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->ensureAdapterAndListener()V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v1

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v9, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    invoke-virtual {v9}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v14

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v11, :cond_4

    add-int v3, v2, v13

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v23, v2

    invoke-interface {v10, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v15

    if-nez v15, :cond_0

    move/from16 v25, v11

    move/from16 v26, v12

    goto/16 :goto_2

    :cond_0
    invoke-static {v4}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v24

    const-wide/16 v15, -0x1

    cmp-long v15, v1, v15

    if-nez v15, :cond_2

    sub-int v15, v12, v14

    if-lt v3, v15, :cond_1

    add-int v15, v3, v14

    sub-int/2addr v15, v12

    add-int/2addr v15, v0

    iget-object v0, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move/from16 v25, v11

    move/from16 v26, v12

    int-to-long v11, v15

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    const/16 v18, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v27, v15

    move-object v15, v12

    move-object/from16 v16, v24

    move/from16 v17, v3

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v12, v23

    goto :goto_3

    :cond_2
    move/from16 v25, v11

    move/from16 v26, v12

    iget-object v0, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    const/16 v18, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v21

    move-object v15, v12

    move-object/from16 v16, v24

    move/from16 v17, v3

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move/from16 v12, v23

    goto :goto_3

    :cond_3
    move/from16 v25, v11

    move/from16 v26, v12

    :goto_2
    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setInsert() child\'s one of dimensions is 0, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v23

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    add-int/lit8 v2, v12, 0x1

    move/from16 v11, v25

    move/from16 v12, v26

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move/from16 v25, v11

    move/from16 v26, v12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v2, v1, v0

    sub-int v3, v2, v13

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v22, v0, 0x1

    goto :goto_4

    :cond_6
    new-instance v12, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;

    move-object v0, v12

    move-object v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v12, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeletePending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->ensureAdapterAndListener()V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v10, p1

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v1

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v12, p2

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v1

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    iget-object v1, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    invoke-interface {v14}, Landroid/widget/ListAdapter;->getCount()I

    move-result v16

    iget-object v1, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v17

    iget-object v1, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    iget-object v1, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v18

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v15, :cond_5

    add-int v3, v2, v17

    iget-object v4, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v26, v2

    invoke-interface {v14, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-nez v6, :cond_0

    move/from16 v27, v0

    move-wide/from16 v31, v1

    move/from16 v28, v7

    goto/16 :goto_3

    :cond_0
    invoke-static {v4}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    const-wide/16 v19, -0x1

    cmp-long v19, v1, v19

    if-nez v19, :cond_3

    if-ge v3, v7, :cond_1

    add-int/lit8 v0, v3, 0x1

    int-to-long v1, v0

    move/from16 v28, v7

    const/16 v27, 0x1

    goto :goto_1

    :cond_1
    sub-int v0, v16, v18

    if-lt v3, v0, :cond_2

    add-int v0, v3, v18

    sub-int v0, v0, v16

    const/16 v27, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v28, v7

    neg-int v7, v0

    int-to-long v1, v7

    goto :goto_1

    :cond_2
    move/from16 v28, v7

    const/16 v27, 0x1

    :goto_1
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-wide/from16 v29, v1

    new-instance v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    const/16 v22, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v25

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    move/from16 v21, v3

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move/from16 v27, v0

    move/from16 v28, v7

    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-wide/from16 v31, v1

    new-instance v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    const/16 v22, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v25

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    move/from16 v21, v3

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move/from16 v2, v26

    goto :goto_4

    :cond_4
    move/from16 v27, v0

    move-wide/from16 v31, v1

    move/from16 v28, v7

    :goto_3
    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInsert() child\'s one of dimensions is 0, i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v27

    move/from16 v7, v28

    goto/16 :goto_0

    :cond_5
    move/from16 v28, v7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v2, v1, v0

    move v3, v2

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v3, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    iget-object v2, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v4, v3, v17

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    new-instance v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    move-object v0, v6

    move-object v1, v9

    move-object v2, v14

    move v3, v15

    move-object v4, v7

    move-object v10, v6

    move-object v6, v11

    move-object/from16 v20, v7

    move/from16 v19, v28

    move-object v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;ILjava/util/HashMap;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v10, v9, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeleteRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public deleteFromAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeletePending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mDeletePending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public insertDeleteFromAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeletePending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertDeletePending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public insertIntoAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mInsertPending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public isInsertDeleting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mIsInsertDelete:Z

    return v0
.end method

.method public setDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->deleteFromAdapterCompleted()V

    return-void
.end method

.method public setDeletePending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->insertIntoAdapterCompleted()V

    return-void
.end method

.method public setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->insertIntoAdapterCompleted()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->deleteFromAdapterCompleted()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mIsInsertDelete:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mIsInsertDelete:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->insertDeleteFromAdapterCompleted()V

    :goto_0
    return-void
.end method

.method public setInsertDeletePending(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mIsInsertDelete:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mIsInsertDelete:Z

    :goto_0
    return-void
.end method

.method public setInsertPending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    return-void
.end method

.method public bridge synthetic setTransitionDuration(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->setTransitionDuration(I)V

    return-void
.end method
