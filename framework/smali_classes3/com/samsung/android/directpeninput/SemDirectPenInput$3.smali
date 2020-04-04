.class Lcom/samsung/android/directpeninput/SemDirectPenInput$3;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$200(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$200(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$200(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/directpeninput/PopupCue;->switchCueButton(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$300(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$400(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$502(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$1;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$3;)V

    const-wide/16 v5, 0x15e

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v1, "DirectPenInput"

    const-string v4, "Can not find IMM"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$600(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$2;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$3;)V

    const-wide/16 v5, 0x1c2

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1, v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$400(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    :cond_5
    :goto_1
    return v2
.end method
