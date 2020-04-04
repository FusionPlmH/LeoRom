.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-le v5, v3, :cond_0

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$100(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v9

    invoke-virtual {v1, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v1, v12}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v11

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v11

    :goto_0
    move v13, v7

    move v7, v12

    :goto_1
    if-ge v7, v5, :cond_9

    add-int v15, v7, v2

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move/from16 v17, v13

    invoke-interface {v12, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/16 v19, 0x0

    move/from16 v20, v3

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    const-wide/16 v21, -0x1

    cmp-long v21, v12, v21

    move/from16 v23, v10

    if-nez v21, :cond_3

    add-int v21, v15, v4

    sub-int v21, v21, v6

    const/16 v18, 0x1

    add-int/lit8 v10, v21, 0x1

    move/from16 v24, v11

    int-to-long v10, v10

    move/from16 v25, v4

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move/from16 v26, v5

    move/from16 v27, v6

    neg-long v5, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_2

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v28, v10

    const-string v10, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.left="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", newX="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-wide/from16 v28, v10

    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v10, 0x0

    invoke-virtual {v6, v14, v5, v10}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move/from16 v30, v2

    move v13, v5

    goto/16 :goto_7

    :cond_3
    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v24, v11

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v6, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    cmpl-float v6, v6, v3

    if-nez v6, :cond_4

    nop

    :goto_2
    move/from16 v30, v2

    move/from16 v13, v17

    goto/16 :goto_7

    :cond_4
    iget v6, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v11, 0x0

    invoke-virtual {v10, v14, v6, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_3
    move/from16 v30, v2

    move v13, v6

    goto :goto_7

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v11, 0x0

    invoke-virtual {v10, v14, v6, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    add-int v6, v7, v2

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v10

    sub-int v11, v6, v10

    sub-int v18, v6, v11

    const/16 v19, -0x1

    move/from16 v30, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v2

    mul-int v21, v18, v9

    add-int v2, v2, v21

    :goto_4
    goto :goto_5

    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v2

    mul-int v21, v18, v9

    sub-int v2, v2, v21

    goto :goto_4

    :goto_5
    move-object/from16 v31, v4

    int-to-float v4, v2

    sub-float/2addr v4, v3

    move/from16 v32, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move/from16 v33, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v4, v3}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-virtual {v2, v14, v4, v3}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_6
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v4

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v20

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v2, v30

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_9
    move/from16 v30, v2

    move/from16 v20, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v17, v13

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    add-int/lit8 v4, v4, 0x1

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v12, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getNewPositionForInsert(ILjava/util/ArrayList;)I

    move-result v11

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v12

    if-ge v11, v12, :cond_d

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v12, v11

    if-eqz v26, :cond_b

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v13

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v13

    :goto_9
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v14}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_c

    mul-int v14, v12, v9

    add-int/2addr v14, v13

    goto :goto_a

    :cond_c
    mul-int v14, v12, v9

    sub-int v14, v13, v14

    :goto_a
    move v13, v14

    goto :goto_b

    :cond_d
    iget v12, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    sub-int v12, v4, v12

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_e

    iget v13, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    mul-int v14, v12, v9

    sub-int/2addr v13, v14

    goto :goto_b

    :cond_e
    iget v13, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    mul-int v14, v12, v9

    add-int/2addr v13, v14

    :goto_b
    new-instance v14, Landroid/graphics/Rect;

    iget v15, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v7, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move-object/from16 v34, v1

    add-int v1, v23, v24

    move-object/from16 v35, v2

    move/from16 v2, v23

    invoke-direct {v14, v15, v2, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v14

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v15, v2

    invoke-direct {v7, v13, v2, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v14, v14, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string v15, "bounds"

    move/from16 v36, v3

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move/from16 v37, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v4, v16

    const/16 v18, 0x1

    aput-object v7, v4, v18

    invoke-static {v14, v15, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_f

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x1

    move v5, v1

    :cond_f
    move/from16 v23, v2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    goto/16 :goto_8

    :cond_10
    move-object/from16 v34, v1

    move-object/from16 v35, v2

    move/from16 v36, v3

    move/from16 v2, v23

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget v7, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/2addr v10, v9

    add-int/2addr v7, v10

    new-instance v10, Landroid/graphics/Rect;

    iget v11, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v12, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    add-int v13, v2, v24

    invoke-direct {v10, v11, v2, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v13, v2

    invoke-direct {v11, v7, v2, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v12, v12, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string v13, "bounds"

    sget-object v14, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move-object/from16 v38, v1

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v1, v16

    const/16 v18, 0x1

    aput-object v11, v1, v18

    invoke-static {v12, v13, v14, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-nez v5, :cond_11

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v12, v12, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v12}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_11
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v1, v38

    goto :goto_c

    :cond_12
    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
