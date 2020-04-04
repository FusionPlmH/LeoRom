.class Landroid/widget/TextView$TouchMonitorListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchMonitorListener"
.end annotation


# instance fields
.field private final globalTimeForTouch:I

.field private mPressTime:J

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    iput p1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    const/16 p1, 0x3e8

    iput p1, p0, Landroid/widget/TextView$TouchMonitorListener;->globalTimeForTouch:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    sub-long/2addr v3, v5

    iget v5, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)F

    move-result v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)F

    move-result v9

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v8

    if-nez v8, :cond_2

    const-wide/16 v8, 0x3e8

    cmp-long v8, v3, v8

    if-gez v8, :cond_2

    if-eqz v7, :cond_2

    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->access$4200(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v10

    float-to-int v11, v1

    float-to-int v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_1

    return-void

    :cond_1
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isValidMultiSelection()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_1

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    iput v1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    iput v2, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    goto :goto_1

    :cond_3
    nop

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
