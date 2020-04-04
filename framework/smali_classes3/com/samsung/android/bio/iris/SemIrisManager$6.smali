.class Lcom/samsung/android/bio/iris/SemIrisManager$6;
.super Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/iris/SemIrisManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onAcquired 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/bio/iris/SemIrisManager$6$1;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onAcquired 2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onAuthenticationFailed 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$6$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/iris/SemIrisManager$6$3;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onAuthenticationFailed 2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onAuthenticationSucceeded 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;

    invoke-direct {v1, p0, p3, p4}, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;Lcom/samsung/android/camera/iris/Iris;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onAuthenticationSucceeded 2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/camera/iris/Iris;

    const/4 v2, 0x0

    move-object v1, v7

    move v3, p4

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/iris/Iris;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JI)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onError 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1800(Lcom/samsung/android/bio/iris/SemIrisManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Bio.SemIrisManager"

    const-string v1, "BioPrompt onError 2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onIRImage(J[BII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p4, p5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRemoved(JII)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
