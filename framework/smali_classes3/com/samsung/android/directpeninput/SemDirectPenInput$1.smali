.class Lcom/samsung/android/directpeninput/SemDirectPenInput$1;
.super Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;
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

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultReceived(ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceCallback onResultReceived() clientID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onTextDeleted(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DirectPenInput"

    const-string/jumbo v1, "mServiceCallback onTextDeleted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onTextInserted(IILjava/lang/CharSequence;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DirectPenInput"

    const-string/jumbo v1, "mServiceCallback onTextInserted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onUpdateDialog(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DirectPenInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mServiceCallback onUpdateDialog() clientID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$000(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$1;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v0}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->access$100(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
