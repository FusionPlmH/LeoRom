.class Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexDoubleTapListener"
.end annotation


# instance fields
.field private mIsNotPrimaryButtonClicked:Z

.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$900(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$700(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1700(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1800(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1900(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$2000(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$2100(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$2200(Lcom/android/internal/widget/DecorCaptionView;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isFullScreenFreeform()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DMBY"

    const-string v3, "DMPA"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "MaximizedByDoubleTap"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v4}, Lcom/android/internal/widget/DecorCaptionView;->access$2300(Lcom/android/internal/widget/DecorCaptionView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v3}, Lcom/android/internal/widget/DecorCaptionView;->access$2400(Lcom/android/internal/widget/DecorCaptionView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    nop

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
