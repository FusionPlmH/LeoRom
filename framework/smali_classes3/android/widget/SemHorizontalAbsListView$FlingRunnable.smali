.class Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;-><init>(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$2700(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$2800(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, v1, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, v1, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-lez p1, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->access$2900(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->access$3000(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_1
    nop

    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method endFling()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$3100(Landroid/widget/SemHorizontalAbsListView;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$2400(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$2400(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->access$2402(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_b

    packed-switch v1, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    return-void

    :pswitch_0
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :pswitch_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v1, v1, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_1
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iget v6, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v6, v5

    if-lez v6, :cond_3

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v8, v8, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iput v8, v7, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v9}, Landroid/widget/SemHorizontalAbsListView;->access$3200(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v9}, Landroid/widget/SemHorizontalAbsListView;->access$3300(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_3
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v4

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v10}, Landroid/widget/SemHorizontalAbsListView;->access$3400(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v10}, Landroid/widget/SemHorizontalAbsListView;->access$3500(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v4

    neg-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_0
    iget-object v7, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v8, v8, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    :cond_4
    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9, v6, v6}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v6, :cond_5

    move v3, v4

    nop

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v8

    sub-int v4, v6, v4

    neg-int v4, v4

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v12, 0x0

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v11}, Landroid/widget/SemHorizontalAbsListView;->access$3600(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v11, v11, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v11

    move v11, v4

    invoke-static/range {v10 .. v19}, Landroid/widget/SemHorizontalAbsListView;->access$3700(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    :cond_6
    if-eqz v2, :cond_13

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_7

    :cond_7
    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    if-eqz v9, :cond_8

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_8
    iput v5, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :goto_1
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->access$3800(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->access$3900()I

    move-result v10

    if-ne v4, v10, :cond_13

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v4, :cond_13

    if-nez v6, :cond_13

    if-nez v2, :cond_13

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->access$4000()I

    move-result v10

    invoke-static {v4, v10}, Landroid/widget/SemHorizontalAbsListView;->access$3802(Landroid/widget/SemHorizontalAbsListView;I)I

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->access$4100(Landroid/widget/SemHorizontalAbsListView;)V

    goto/16 :goto_7

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    return-void

    :cond_b
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->access$4200(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v15

    sub-int v16, v15, v2

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v12, v6, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v6, v16

    move v8, v2

    invoke-static/range {v5 .. v14}, Landroid/widget/SemHorizontalAbsListView;->access$4300(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_11

    if-gtz v2, :cond_c

    if-lez v15, :cond_c

    move v5, v4

    goto :goto_3

    :cond_c
    move v5, v3

    :goto_3
    if-ltz v2, :cond_d

    if-gez v15, :cond_d

    move v3, v4

    nop

    :cond_d
    if-nez v5, :cond_f

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_5

    :cond_f
    :goto_4
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    if-eqz v3, :cond_10

    neg-int v4, v4

    :cond_10
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    nop

    :goto_5
    goto :goto_6

    :cond_11
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_6
    goto :goto_7

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    nop

    :cond_13
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method start(I)V
    .locals 10

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v2, v0

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$2400(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const-string v2, "SemHorizontalAbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/SemHorizontalAbsListView;->access$2402(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method startOverfling(I)V
    .locals 13

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$2600(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v11

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method startScroll(IIZ)V
    .locals 7

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v2, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method startSpringback()V
    .locals 7

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->access$2500(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    :goto_0
    return-void
.end method
