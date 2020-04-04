.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;
.super Landroid/os/Handler;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed. error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$202(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;[B)[B

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$200(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$200(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v2, "byte buffer is empty. failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$300(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "BLOB_SET_DONE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;->onSetBlobFinished(Z)V

    goto :goto_2

    :pswitch_1
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "BLOB_GET_DONE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$200(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$200(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$200(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->parseOperationName([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$402(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$400(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "Blob policy file data not received : Failed!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->access$400(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;->onGetBlobFinished(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
