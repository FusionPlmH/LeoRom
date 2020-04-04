.class Landroid/widget/SemExpandableListView$6;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$expanded:[Z


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/widget/SemExpandableListView$6;->val$expanded:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v3, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$3200(Landroid/widget/SemExpandableListView;)V

    iget-object v3, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_0
    const/16 v3, 0x2bc

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$4300(Landroid/widget/SemExpandableListView;)I

    move-result v6

    if-ge v6, v5, :cond_1

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->access$3200(Landroid/widget/SemExpandableListView;)V

    return v2

    :cond_1
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v7, v6}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v9

    add-int/lit8 v10, v9, 0x1

    new-array v10, v10, [I

    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    add-int/lit8 v12, v9, 0x1

    new-array v12, v12, [Landroid/graphics/RectF;

    invoke-static {v11, v12}, Landroid/widget/SemExpandableListView;->access$4402(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    add-int/lit8 v12, v9, 0x1

    new-array v12, v12, [Landroid/widget/SemExpandableListView$ExpandingRect;

    invoke-static {v11, v12}, Landroid/widget/SemExpandableListView;->access$4502(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v13, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v13}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v12, v13}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v12, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/SemExpandableListView$ViewInfo;

    if-nez v12, :cond_3

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v13

    iget-object v15, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/SemExpandableListView$ViewInfo;

    if-nez v15, :cond_2

    iget-object v2, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2, v11}, Landroid/widget/SemExpandableListView;->access$3302(Landroid/widget/SemExpandableListView;I)I

    move/from16 v16, v5

    goto :goto_0

    :cond_2
    iget-object v2, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move/from16 v16, v5

    iget v5, v15, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    sub-int v5, v11, v5

    invoke-static {v2, v5}, Landroid/widget/SemExpandableListView;->access$3302(Landroid/widget/SemExpandableListView;I)I

    :goto_0
    goto :goto_1

    :cond_3
    move/from16 v16, v5

    iget-object v2, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget v5, v12, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    sub-int v5, v11, v5

    invoke-static {v2, v5}, Landroid/widget/SemExpandableListView;->access$3302(Landroid/widget/SemExpandableListView;I)I

    :goto_1
    const/4 v2, 0x1

    move v13, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_e

    iget-object v14, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v14, v2}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move/from16 v17, v6

    invoke-virtual {v15, v2}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v5

    iget-object v15, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-static {v5, v6}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v18

    if-nez v18, :cond_4

    move-wide/from16 v19, v7

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7, v2}, Landroid/widget/SemExpandableListView;->access$4600(Landroid/widget/SemExpandableListView;I)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v7

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-static {v5, v6}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v8

    move/from16 v21, v9

    if-eqz v15, :cond_a

    iget-object v9, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v9

    move-wide/from16 v22, v5

    iget v5, v15, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    sub-int/2addr v9, v5

    if-eqz v7, :cond_8

    aput v9, v10, v8

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->access$4400(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    aput-object v6, v5, v8

    add-int/lit8 v5, v8, 0x1

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    move/from16 v24, v11

    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11, v5, v6}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v11

    if-lt v11, v1, :cond_6

    move/from16 v25, v1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v1

    goto :goto_4

    :cond_6
    move/from16 v25, v1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v11}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_4
    move-wide/from16 v26, v5

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->val$expanded:[Z

    aget-boolean v5, v5, v8

    and-int/2addr v13, v5

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->val$expanded:[Z

    aget-boolean v5, v5, v8

    if-nez v5, :cond_7

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v6, 0x1

    invoke-static {v5, v14, v6, v3}, Landroid/widget/SemExpandableListView;->access$3800(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v15, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    int-to-float v6, v6

    move/from16 v28, v11

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v29, v12

    iget v12, v15, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    int-to-float v12, v12

    move/from16 v30, v13

    int-to-float v13, v1

    invoke-direct {v5, v6, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$4500(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v6

    new-instance v11, Landroid/widget/SemExpandableListView$ExpandingRect;

    iget v12, v15, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    iget-object v13, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13}, Landroid/widget/SemExpandableListView;->access$4400(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v13

    aget-object v13, v13, v8

    invoke-direct {v11, v12, v5, v13}, Landroid/widget/SemExpandableListView$ExpandingRect;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v11, v6, v8

    goto :goto_5

    :cond_7
    move-object/from16 v29, v12

    move/from16 v30, v13

    :goto_5
    move/from16 v13, v30

    goto :goto_6

    :cond_8
    move/from16 v25, v1

    move/from16 v24, v11

    move-object/from16 v29, v12

    :goto_6
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v1

    iget v5, v15, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    if-ne v1, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    neg-int v1, v9

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v6, v11

    invoke-static {v14, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move/from16 v25, v1

    move-wide/from16 v22, v5

    move/from16 v24, v11

    move-object/from16 v29, v12

    const/4 v5, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    if-nez v7, :cond_c

    new-instance v1, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v1, v14}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$3700(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    aget v9, v10, v8

    neg-int v9, v9

    invoke-static {v6, v9, v1}, Landroid/widget/SemExpandableListView;->access$4700(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "How on Earth this is possible?"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v17

    move-wide/from16 v7, v19

    move/from16 v9, v21

    move/from16 v11, v24

    move/from16 v1, v25

    move-object/from16 v12, v29

    goto/16 :goto_2

    :cond_e
    move/from16 v25, v1

    move/from16 v17, v6

    move-wide/from16 v19, v7

    move/from16 v21, v9

    move/from16 v24, v11

    move-object/from16 v29, v12

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_f

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->access$3300(Landroid/widget/SemExpandableListView;)I

    move-result v7

    invoke-static {v6, v7, v5}, Landroid/widget/SemExpandableListView;->access$3900(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->access$4000(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    new-instance v2, Landroid/widget/SemExpandableListView$6$1;

    invoke-direct {v2, v0}, Landroid/widget/SemExpandableListView$6$1;-><init>(Landroid/widget/SemExpandableListView$6;)V

    if-eqz v13, :cond_10

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 v5, 0x0

    return v5

    :cond_10
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v6, v6, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->access$4100()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->clear()V

    const/4 v7, 0x0

    return v7

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
