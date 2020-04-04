.class Landroid/view/ViewRootImpl$InputMethodAnimationRunner;
.super Lcom/samsung/android/view/IRemoteWindowAnimationRunner$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputMethodAnimationRunner"
.end annotation


# instance fields
.field private final mInputMethodAnimationCancel:Ljava/lang/Runnable;

.field private final mInputMethodAnimationReverse:Ljava/lang/Runnable;

.field private final mInputMethodAnimationStart:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    iput-object p1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner$Stub;-><init>()V

    new-instance v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;-><init>(Landroid/view/ViewRootImpl$InputMethodAnimationRunner;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->mInputMethodAnimationStart:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$2;-><init>(Landroid/view/ViewRootImpl$InputMethodAnimationRunner;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->mInputMethodAnimationCancel:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;-><init>(Landroid/view/ViewRootImpl$InputMethodAnimationRunner;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->mInputMethodAnimationReverse:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] InputMethodAnimationRunner.onAnimationCancelled, Started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$6300(Landroid/view/ViewRootImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$6100(Landroid/view/ViewRootImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->mInputMethodAnimationCancel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/view/RemoteWindowAnimationTarget;Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] InputMethodAnimationRunner.onAnimationStart, Started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$6300(Landroid/view/ViewRootImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$6100(Landroid/view/ViewRootImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Cancelled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$6200(Landroid/view/ViewRootImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->access$6502(Landroid/view/ViewRootImpl;Lcom/samsung/android/view/RemoteWindowAnimationTarget;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p2}, Landroid/view/ViewRootImpl;->access$6402(Landroid/view/ViewRootImpl;Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;)Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->mInputMethodAnimationStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVisibilityChangedAnimationStart(Z)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$6100(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$6500(Landroid/view/ViewRootImpl;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/view/RemoteWindowAnimationTarget;->isEntrance:Z

    if-eq v0, p1, :cond_2

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] InputMethodAnimationRunner.onVisibilityChangedAnimationStart, isEntrance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$6300(Landroid/view/ViewRootImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Running="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$6100(Landroid/view/ViewRootImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$7300(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$6100(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->mInputMethodAnimationReverse:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->mInputMethodAnimationReverse:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
