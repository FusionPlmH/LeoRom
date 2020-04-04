.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$defaultHeight:I

.field final synthetic val$defaultTop:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$firstVisiblePosBefore:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;IIIILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultTop:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultHeight:I

    iput p5, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$firstVisiblePosBefore:I

    iput p6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$childCountBefore:I

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-le v2, v5, :cond_0

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$100(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v13

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v14

    add-int v10, v13, v14

    invoke-virtual {v1, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v1, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v12

    goto :goto_0

    :cond_0
    iget v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultTop:I

    iget v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultHeight:I

    :goto_0
    const/4 v13, 0x1

    iget v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$firstVisiblePosBefore:I

    sub-int/2addr v14, v3

    move v15, v14

    add-int/lit8 v16, v4, 0x1

    move/from16 v17, v4

    iget v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$childCountBefore:I

    sub-int/2addr v4, v2

    add-int v16, v16, v4

    move/from16 v18, v16

    move/from16 v16, v8

    const/4 v8, 0x0

    :goto_1
    const/16 v19, 0x1

    if-ge v8, v2, :cond_8

    invoke-virtual {v1, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v20, v1

    add-int v1, v8, v3

    move/from16 v21, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move/from16 v22, v3

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    move/from16 v23, v11

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    const/16 v24, 0x0

    const-wide/16 v25, -0x1

    cmp-long v25, v2, v25

    if-nez v25, :cond_3

    if-ge v1, v5, :cond_1

    move/from16 v27, v5

    add-int/lit8 v5, v1, 0x1

    int-to-long v2, v5

    move/from16 v28, v6

    goto :goto_2

    :cond_1
    move/from16 v27, v5

    sub-int v5, v7, v6

    if-lt v1, v5, :cond_2

    add-int v5, v1, v6

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    move/from16 v28, v6

    neg-int v6, v5

    int-to-long v2, v6

    goto :goto_2

    :cond_2
    move/from16 v28, v6

    :goto_2
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    goto :goto_3

    :cond_3
    move/from16 v27, v5

    move/from16 v28, v6

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    const/4 v13, 0x0

    iget v6, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_4

    goto :goto_8

    :cond_4
    iget v6, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v11

    move/from16 v29, v1

    move-wide/from16 v30, v2

    goto :goto_7

    :cond_5
    if-lez v15, :cond_6

    if-eqz v13, :cond_6

    neg-int v6, v14

    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    :cond_6
    sub-int v6, v18, v1

    add-int/lit8 v18, v18, 0x1

    :goto_4
    const/16 v19, -0x1

    move/from16 v29, v1

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    mul-int v24, v6, v10

    sub-int v1, v1, v24

    :goto_5
    goto :goto_6

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    mul-int v24, v6, v10

    add-int v1, v1, v24

    goto :goto_5

    :goto_6
    move-wide/from16 v30, v2

    int-to-float v2, v1

    sub-float v6, v2, v11

    :goto_7
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v6, v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v6

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v11, v23

    move/from16 v5, v27

    move/from16 v6, v28

    goto/16 :goto_1

    :cond_8
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v23, v11

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v8, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    add-int v11, v23, v12

    move-object/from16 v32, v1

    move/from16 v1, v23

    invoke-direct {v5, v6, v1, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v8, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v6

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v11, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    sub-int v11, v6, v22

    if-ltz v11, :cond_a

    move/from16 v33, v1

    move/from16 v1, v21

    if-lt v11, v1, :cond_9

    move-object/from16 v34, v3

    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v3, v20

    goto :goto_a

    :cond_9
    move-object/from16 v34, v3

    move/from16 v35, v6

    move-object/from16 v3, v20

    invoke-virtual {v3, v11}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    move/from16 v36, v7

    iget v7, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move/from16 v37, v1

    goto :goto_e

    :cond_a
    move/from16 v33, v1

    move-object/from16 v34, v3

    move/from16 v35, v6

    move/from16 v36, v7

    move-object/from16 v3, v20

    move/from16 v1, v21

    :goto_a
    if-nez v1, :cond_c

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v6}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v6

    iget v7, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v37, v1

    iget v1, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    sub-int/2addr v7, v1

    sub-int/2addr v6, v7

    int-to-float v1, v6

    :goto_b
    goto :goto_c

    :cond_b
    move/from16 v37, v1

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    goto :goto_b

    :cond_c
    move/from16 v37, v1

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    :goto_c
    iget v6, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    sub-float v6, v1, v6

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v7}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_d

    neg-int v7, v11

    mul-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v6, v7

    goto :goto_d

    :cond_d
    neg-int v7, v11

    mul-int/2addr v7, v10

    int-to-float v7, v7

    sub-float/2addr v6, v7

    :goto_d
    nop

    :goto_e
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    float-to-int v7, v6

    move-object/from16 v38, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v8, :cond_e

    sget v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v3, v16

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    float-to-int v3, v3

    sget v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v7, v20, v7

    div-float v7, v7, v16

    move/from16 v39, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v7, v6

    float-to-int v6, v7

    new-instance v7, Landroid/graphics/Rect;

    move/from16 v40, v8

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v3

    move/from16 v41, v10

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    move/from16 v42, v11

    iget v11, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v3

    move/from16 v43, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    invoke-direct {v7, v8, v10, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v7

    goto :goto_f

    :cond_e
    move/from16 v39, v6

    move/from16 v40, v8

    move/from16 v41, v10

    move/from16 v42, v11

    :goto_f
    const-string v3, "bounds"

    sget-object v6, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v8, v10

    aput-object v1, v8, v19

    invoke-static {v3, v6, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v6, "alpha"

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v8, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v7, v10

    aput-object v6, v7, v19

    invoke-static {v8, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    if-nez v2, :cond_f

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x1

    :cond_f
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v1, v32

    move/from16 v23, v33

    move/from16 v7, v36

    move/from16 v21, v37

    move-object/from16 v20, v38

    move/from16 v16, v39

    move/from16 v10, v41

    goto/16 :goto_9

    :cond_10
    move-object/from16 v32, v1

    move/from16 v36, v7

    move/from16 v41, v10

    move-object/from16 v38, v20

    move/from16 v37, v21

    move/from16 v33, v23

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
