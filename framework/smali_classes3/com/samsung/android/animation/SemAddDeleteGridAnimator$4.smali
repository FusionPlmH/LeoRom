.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;
.super Ljava/lang/Object;
.source "SemAddDeleteGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItemPositions:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->access$000(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-le v3, v7, :cond_0

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v1, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v8, v10, v11

    :cond_0
    move v10, v5

    move v5, v4

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_5

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    add-int v13, v4, v2

    invoke-interface {v12, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    add-int v11, v4, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    move/from16 v18, v3

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move/from16 v19, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v5, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    cmpl-float v5, v5, v15

    if-nez v5, :cond_1

    iget v5, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1

    nop

    move/from16 v24, v2

    move/from16 v5, v19

    goto/16 :goto_2

    :cond_1
    iget v5, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    move/from16 v20, v10

    iget v10, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, v9

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-virtual {v3, v14, v5, v10}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move/from16 v24, v2

    goto/16 :goto_2

    :cond_2
    move-object/from16 v21, v3

    move/from16 v20, v10

    if-eqz v11, :cond_3

    const/4 v3, 0x0

    aget v5, v11, v3

    sub-float/2addr v5, v15

    const/4 v3, 0x1

    aget v3, v11, v3

    sub-float/2addr v3, v9

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-virtual {v10, v14, v5, v3}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move/from16 v24, v2

    move v10, v3

    goto :goto_2

    :cond_3
    add-int v3, v4, v2

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v10}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v5

    sub-int v10, v3, v5

    div-int v16, v10, v7

    div-int v22, v3, v7

    sub-int v23, v22, v16

    move/from16 v24, v2

    rem-int v2, v10, v7

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v25

    mul-int v26, v23, v8

    move/from16 v27, v5

    sub-int v5, v25, v26

    move/from16 v28, v10

    int-to-float v10, v2

    sub-float/2addr v10, v15

    move/from16 v29, v2

    int-to-float v2, v5

    sub-float/2addr v2, v9

    move/from16 v30, v5

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move/from16 v31, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-virtual {v5, v14, v10, v2}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_1

    :cond_4
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-virtual {v5, v14, v10, v2}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v10

    move v10, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    move/from16 v2, v24

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    move/from16 v24, v2

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v10

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v3

    move v4, v3

    move v5, v4

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v5, v5, 0x1

    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget v11, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    div-int/2addr v11, v7

    div-int v12, v5, v7

    sub-int v13, v12, v11

    rem-int v14, v5, v7

    invoke-virtual {v1, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    iget v15, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    mul-int v21, v13, v8

    add-int v15, v15, v21

    int-to-float v15, v15

    move-object/from16 v32, v1

    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v33, v2

    iget v2, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v34, v3

    iget v3, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v35, v5

    iget v5, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v36, v7

    iget v7, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v1, v2, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v14

    float-to-int v5, v15

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v14

    float-to-int v7, v7

    move/from16 v37, v8

    float-to-int v8, v15

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v21

    add-int v8, v8, v21

    invoke-direct {v2, v3, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const-string v5, "bounds"

    sget-object v7, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v1, v8, v17

    const/16 v16, 0x1

    aput-object v2, v8, v16

    invoke-static {v3, v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_7

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x1

    move v4, v1

    :cond_7
    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    move/from16 v5, v35

    move/from16 v7, v36

    move/from16 v8, v37

    goto/16 :goto_3

    :cond_8
    move-object/from16 v32, v1

    move-object/from16 v33, v2

    move/from16 v34, v3

    move/from16 v36, v7

    move/from16 v37, v8

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
