.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;ILjava/util/HashMap;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$childCountBefore:I

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItemPosHash:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 52

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-le v6, v4, :cond_0

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v14}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->access$100(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v14

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v15

    add-int v10, v14, v15

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v12

    :goto_0
    const/4 v14, 0x1

    move v15, v2

    move/from16 v16, v15

    add-int/lit8 v17, v3, 0x1

    iget v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$childCountBefore:I

    sub-int/2addr v13, v6

    add-int v17, v17, v13

    move v13, v8

    const/4 v8, 0x0

    :goto_1
    const/16 v19, 0x1

    if-ge v8, v6, :cond_b

    move/from16 v20, v3

    add-int v3, v8, v2

    move/from16 v21, v13

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-interface {v13, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const/16 v24, 0x0

    move/from16 v25, v15

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    int-to-float v15, v15

    const-wide/16 v26, -0x1

    cmp-long v26, v11, v26

    move-object/from16 v28, v1

    if-nez v26, :cond_5

    if-ge v3, v4, :cond_1

    add-int/lit8 v1, v3, 0x1

    int-to-long v11, v1

    move/from16 v29, v4

    move/from16 v30, v5

    goto :goto_2

    :cond_1
    sub-int v1, v7, v5

    if-lt v3, v1, :cond_2

    add-int v1, v3, v5

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v29, v4

    move/from16 v30, v5

    int-to-long v4, v1

    neg-long v11, v4

    goto :goto_2

    :cond_2
    move/from16 v29, v4

    move/from16 v30, v5

    :goto_2
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v31, v7

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v4, v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    cmpl-float v4, v4, v15

    if-nez v4, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v7

    const-string v7, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", newY="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_4
    move/from16 v31, v7

    iget v4, v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    sub-float/2addr v4, v15

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v7, 0x0

    invoke-virtual {v5, v13, v7, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v7

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    const/4 v5, 0x0

    iget v7, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v7, v7

    cmpl-float v7, v7, v15

    if-nez v7, :cond_6

    nop

    move v14, v5

    move/from16 v13, v21

    goto/16 :goto_7

    :cond_6
    iget v7, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v7, v7

    sub-float/2addr v7, v15

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v32, v4

    const/4 v4, 0x0

    invoke-virtual {v14, v13, v4, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move v14, v5

    :goto_3
    move v13, v7

    goto/16 :goto_7

    :cond_7
    move-object/from16 v32, v4

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v15

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v7, 0x0

    invoke-virtual {v5, v13, v7, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_4
    move v13, v4

    goto/16 :goto_7

    :cond_8
    add-int v4, v8, v2

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v7, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    sub-int v5, v4, v1

    sub-int v7, v4, v5

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v19

    mul-int v24, v7, v10

    move/from16 v34, v1

    sub-int v1, v19, v24

    move/from16 v35, v5

    int-to-float v5, v1

    sub-float/2addr v5, v15

    move/from16 v36, v1

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v37, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v13, v7, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_5
    move/from16 v13, v21

    goto :goto_7

    :cond_9
    move-object/from16 v33, v1

    if-lez v16, :cond_a

    if-eqz v14, :cond_a

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    neg-int v1, v1

    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    :cond_a
    sub-int v1, v17, v3

    add-int/lit8 v17, v17, 0x1

    :goto_6
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v5

    mul-int v7, v1, v10

    add-int/2addr v5, v7

    int-to-float v7, v5

    sub-float/2addr v7, v15

    move/from16 v38, v1

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v39, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v20

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v15, v25

    move-object/from16 v1, v28

    move/from16 v4, v29

    move/from16 v5, v30

    move/from16 v7, v31

    goto/16 :goto_1

    :cond_b
    move-object/from16 v28, v1

    move/from16 v20, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v7

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v21, v13

    move/from16 v25, v15

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/graphics/Rect;

    iget v11, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v12, v22, v23

    iget v13, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v15, v22

    invoke-direct {v8, v15, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v12, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v12, v13, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v5

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v12, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    sub-int v12, v5, v2

    if-gez v12, :cond_d

    if-nez v6, :cond_c

    move-object/from16 v40, v1

    move-object/from16 v13, v28

    invoke-virtual {v13}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    move/from16 v41, v2

    goto :goto_9

    :cond_c
    move-object/from16 v40, v1

    move-object/from16 v13, v28

    move/from16 v41, v2

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    :goto_9
    iget v2, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    move/from16 v42, v1

    neg-int v1, v12

    mul-int/2addr v1, v10

    int-to-float v1, v1

    sub-float/2addr v2, v1

    nop

    move v1, v2

    goto :goto_c

    :cond_d
    move-object/from16 v40, v1

    move/from16 v41, v2

    move-object/from16 v13, v28

    if-lt v12, v6, :cond_f

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v13, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    iget v1, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    const/4 v2, 0x0

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    :goto_a
    goto :goto_b

    :cond_e
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v13, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_a

    :goto_b
    sub-int v2, v12, v6

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v10

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_c

    :cond_f
    invoke-virtual {v13, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_c
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v43, v4

    float-to-int v4, v1

    move/from16 v44, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v11, :cond_10

    sget v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    const/high16 v21, 0x40000000    # 2.0f

    div-float v1, v1, v21

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    sget v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v4, v22, v4

    div-float v4, v4, v21

    move/from16 v45, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v46, v6

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    move/from16 v47, v11

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v4

    move/from16 v48, v12

    iget v12, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v1

    move/from16 v49, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    invoke-direct {v5, v6, v11, v12, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v5

    const-string v1, "bounds"

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    aput-object v2, v11, v19

    invoke-static {v1, v5, v11}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v5, "alpha"

    new-array v11, v6, [I

    fill-array-data v11, :array_0

    invoke-static {v5, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iget-object v11, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v12

    aput-object v5, v6, v19

    invoke-static {v11, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_d

    :cond_10
    move/from16 v45, v5

    move/from16 v46, v6

    move/from16 v47, v11

    move/from16 v48, v12

    const/4 v6, 0x2

    const/4 v12, 0x0

    iget-object v1, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string v4, "bounds"

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v8, v6, v12

    aput-object v2, v6, v19

    invoke-static {v1, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_d
    if-nez v3, :cond_11

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x1

    :cond_11
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v28, v13

    move/from16 v22, v15

    move-object/from16 v1, v40

    move/from16 v2, v41

    move/from16 v21, v44

    move/from16 v6, v46

    goto/16 :goto_8

    :cond_12
    move-object/from16 v40, v1

    move/from16 v41, v2

    move/from16 v46, v6

    move/from16 v15, v22

    move-object/from16 v13, v28

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v11, v15, v23

    iget v8, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v6, v15, v7, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int v11, v15, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {v7, v15, v5, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string v11, "bounds"

    sget-object v12, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move-object/from16 v50, v1

    move-object/from16 v51, v2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v6, v2, v18

    aput-object v7, v2, v19

    invoke-static {v8, v11, v12, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-nez v3, :cond_13

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_13
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v1, v50

    goto :goto_e

    :cond_14
    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
