.class Landroid/widget/SemExpandableListView$8;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$animations:Ljava/util/ArrayList;

.field final synthetic val$expanded:[Z

.field final synthetic val$lastGroupIdBefore:I

.field final synthetic val$lastPositionBottomBefore:I


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    iput p4, p0, Landroid/widget/SemExpandableListView$8;->val$lastPositionBottomBefore:I

    iput-object p5, p0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    iput-object p6, p0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v3, v0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iget-object v3, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$4800(Landroid/widget/SemExpandableListView;)V

    return v2

    :cond_0
    iget-object v3, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget v4, v0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    invoke-static {v3, v4}, Landroid/widget/SemExpandableListView;->access$5300(Landroid/widget/SemExpandableListView;I)I

    move-result v3

    iget-object v4, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget v5, v0, Landroid/widget/SemExpandableListView$8;->val$lastPositionBottomBefore:I

    iget-object v6, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v6, v3}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Landroid/widget/SemExpandableListView;->access$3302(Landroid/widget/SemExpandableListView;I)I

    const/16 v4, 0x2bc

    iget-object v5, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    const/4 v6, 0x1

    move v8, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_6

    iget-object v9, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    add-int v10, v6, v5

    invoke-static {v9, v10}, Landroid/widget/SemExpandableListView;->access$4600(Landroid/widget/SemExpandableListView;I)Z

    move-result v9

    iget-object v10, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v10, v6}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11, v6}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v11

    iget-object v13, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/SemExpandableListView$ViewInfo;

    if-eqz v13, :cond_1

    iget v14, v13, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    goto :goto_1

    :cond_1
    iget-object v14, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v14}, Landroid/widget/SemExpandableListView;->access$3300(Landroid/widget/SemExpandableListView;)I

    move-result v14

    :goto_1
    invoke-static {v11, v12}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v15

    if-nez v9, :cond_2

    iget v7, v0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    if-gt v15, v7, :cond_2

    iget-object v7, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->access$5400(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v7

    aget-object v7, v7, v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/SemExpandableListView$CollapsingRect;->setFinishY(I)V

    :cond_2
    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    if-nez v9, :cond_4

    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    array-length v2, v2

    if-ge v15, v2, :cond_4

    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    aget-boolean v2, v2, v15

    const/4 v7, 0x1

    xor-int/2addr v2, v7

    and-int/2addr v2, v8

    iget-object v7, v0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    aget-boolean v7, v7, v15

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v8, 0x0

    invoke-static {v7, v10, v8, v4}, Landroid/widget/SemExpandableListView;->access$3800(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    :cond_3
    move v8, v2

    :cond_4
    if-nez v14, :cond_5

    move/from16 v18, v1

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    int-to-float v2, v14

    invoke-virtual {v10, v2}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move/from16 v18, v1

    const/4 v7, 0x1

    new-array v1, v7, [F

    const/16 v17, 0x0

    const/16 v16, 0x0

    aput v17, v1, v16

    invoke-static {v10, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v2, v7

    move/from16 v1, v18

    goto/16 :goto_0

    :cond_6
    move/from16 v18, v1

    new-instance v1, Landroid/widget/SemExpandableListView$8$1;

    invoke-direct {v1, v0}, Landroid/widget/SemExpandableListView$8$1;-><init>(Landroid/widget/SemExpandableListView$8;)V

    if-eqz v8, :cond_7

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 v2, 0x0

    return v2

    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v6, v6, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, v0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, v0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v9, v4

    invoke-virtual {v6, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->access$4100()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iget-object v7, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->access$3500(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->clear()V

    const/4 v7, 0x0

    return v7

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
