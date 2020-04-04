.class Lcom/samsung/android/directpeninput/SemDirectPenInput$4;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;->createPopupCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$700(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v4, p1, v5, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$800(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/view/View;FF)Z

    move-result v4

    const-wide/16 v5, 0x96

    if-nez v4, :cond_2

    const-string v4, "DirectPenInput"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Close DirectPenInput cue : 1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v8}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$900(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$900(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$902(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    const/4 v7, -0x1

    const/16 v8, -0x100

    const/16 v9, 0x140

    invoke-virtual {v2, v7, v8, v9}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v7

    if-nez v7, :cond_3

    const-string v1, "DirectPenInput"

    const-string v5, "Close DirectPenInput cue : 2"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$400(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$200(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$200(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/directpeninput/PopupCue;->isAirButtonClicked()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v1, "DirectPenInput"

    const-string v5, "Close DirectPenInput cue : 3"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$400(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    goto :goto_0

    :cond_4
    const-string v4, "DirectPenInput"

    const-string v7, "Close DirectPenInput cue : 4"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$4;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return v3
.end method
