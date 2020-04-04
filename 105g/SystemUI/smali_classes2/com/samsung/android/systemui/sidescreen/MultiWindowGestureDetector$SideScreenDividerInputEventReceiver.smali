.class final Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MultiWindowGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SideScreenDividerInputEventReceiver"
.end annotation


# instance fields
.field private final TAP_TIMEOUT:I

.field private final VERTICAL_SCROLL_FACTOR:I

.field private mDownEventTime:J

.field private mDownEventX:I

.field private mDownEventY:I

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mSwipeFireable:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;


# direct methods
.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_e

    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v5}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$200(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_7

    :cond_0
    const-class v5, Landroid/view/MotionEvent;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1
    :try_start_1
    move-object v5, v2

    check-cast v5, Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getFlags()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-static {}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$400()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "MultiWindowGestureDetector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[MonitorChannel] onInputEvent : action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v8, :cond_6

    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v9}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$500(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->getWindowFrame()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-lt v6, v9, :cond_5

    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v9}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$500(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->getWindowFrame()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    if-le v6, v9, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mDownEventTime:J

    iput v6, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mDownEventX:I

    iput v7, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mDownEventY:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_6
    :try_start_3
    iget-boolean v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mSwipeFireable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v9, :cond_7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_7
    :goto_1
    :try_start_4
    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_8

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v9, v8, 0xff

    const-wide/16 v10, 0x12c

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iput-boolean v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mSwipeFireable:Z

    iget-object v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$1000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->recycleVelocityTracker()V

    goto/16 :goto_6

    :pswitch_1
    iget v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mDownEventX:I

    sub-int/2addr v9, v6

    if-ltz v9, :cond_9

    move v9, v3

    goto :goto_2

    :cond_9
    move v9, v0

    :goto_2
    iget v12, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mDownEventY:I

    sub-int/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->VERTICAL_SCROLL_FACTOR:I

    if-ge v12, v13, :cond_a

    move v12, v3

    goto :goto_3

    :cond_a
    move v12, v0

    :goto_3
    nop

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-wide v3, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mDownEventTime:J

    sub-long/2addr v13, v3

    cmp-long v3, v13, v10

    if-lez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_4

    :cond_b
    move v3, v0

    :goto_4
    if-eqz v9, :cond_c

    if-eqz v12, :cond_c

    if-nez v3, :cond_c

    iget-object v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v0, v5}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$600(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;)V

    goto :goto_6

    :cond_c
    iput-boolean v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mSwipeFireable:Z

    iget-object v4, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v4, v5, v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$700(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->recycleVelocityTracker()V

    goto :goto_6

    :pswitch_2
    iget-object v3, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    invoke-virtual {v3, v4, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v10, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mDownEventTime:J

    sub-long/2addr v12, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    iget v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->TAP_TIMEOUT:I

    int-to-long v9, v9

    cmp-long v9, v12, v9

    if-lez v9, :cond_d

    const-wide/16 v9, 0x12c

    cmp-long v9, v12, v9

    if-gez v9, :cond_d

    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v9}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$900(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v10}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$800(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v10, 0x1

    :try_start_6
    invoke-static {v9, v5, v10}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$700(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move v3, v10

    goto :goto_8

    :cond_d
    :try_start_7
    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v9, v5, v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$700(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;Z)V

    :goto_5
    iput-boolean v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mSwipeFireable:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->recycleVelocityTracker()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :pswitch_3
    const/4 v3, 0x1

    :try_start_8
    iput-boolean v3, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mSwipeFireable:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v0, v5}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$600(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;Landroid/view/MotionEvent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    nop

    :goto_6
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_7
    :try_start_a
    iget-boolean v3, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mSwipeFireable:Z

    if-eqz v3, :cond_f

    iput-boolean v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->mSwipeFireable:Z

    iget-object v0, v1, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$300(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_f
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_2
    move-exception v0

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
