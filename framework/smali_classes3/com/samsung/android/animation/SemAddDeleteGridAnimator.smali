.class public Lcom/samsung/android/animation/SemAddDeleteGridAnimator;
.super Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.source "SemAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemAddDeleteGridAnimator"


# instance fields
.field private mDeletePending:Z

.field private mGridView:Landroid/widget/GridView;

.field private mInsertPending:Z

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

.field private mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setAddDeleteGridAnimator(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mHostView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Ljava/util/HashSet;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getNextAppearingViewPosition(Ljava/util/HashSet;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method private ensureAdapterAndListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SemAddDeleteGridAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getNextAppearingViewPosition(Ljava/util/HashSet;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private prepareDelete(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->ensureAdapterAndListener()V

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v12, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    invoke-virtual {v12}, Landroid/widget/GridView;->getChildCount()I

    move-result v14

    invoke-virtual {v12}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v15

    invoke-virtual {v12}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v16

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v14, :cond_0

    invoke-virtual {v12, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v3, v1, v15

    invoke-interface {v13, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    iget-object v5, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v8, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v18

    add-int v19, v1, v15

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v23}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v5, v6, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v12, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v17

    new-instance v8, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v12

    move/from16 v3, v17

    move v4, v15

    move/from16 v5, v16

    move-object v6, v13

    move-object v10, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/GridView;IIILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    iput-object v10, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private prepareInsert(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->ensureAdapterAndListener()V

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v8, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/GridView;->getChildCount()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v11

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v10, :cond_0

    invoke-virtual {v8, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v2, v11

    invoke-interface {v9, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iget-object v4, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-instance v15, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v3}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v16

    add-int v17, v2, v11

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v18

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v20

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v21

    move-object/from16 v22, v15

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v4, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v12, v2

    move v2, v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v4, v3, v2

    sub-int v13, v4, v11

    invoke-virtual {v8, v13}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    aput v0, v15, v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/16 v16, 0x1

    aput v0, v15, v16

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move/from16 v16, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    goto :goto_1

    :cond_2
    new-instance v13, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    move-object v0, v13

    move-object v1, v6

    move-object v2, v9

    move-object v3, v12

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v13, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public deleteFromAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

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

.method public insertIntoAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->deleteFromAdapterCompleted()V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->insertIntoAdapterCompleted()V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    return-void
.end method

.method public bridge synthetic setTransitionDuration(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->setTransitionDuration(I)V

    return-void
.end method
