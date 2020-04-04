.class Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;
.super Ljava/lang/Object;
.source "SemTelephoneManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SemTelephoneManager$ServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;


# direct methods
.method constructor <init>(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "ServiceBindHelper"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->access$300(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;I)V

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-static {p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->access$402(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    :try_start_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->access$400(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getRevision()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->access$502(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ServiceBindHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: getRevision: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "ServiceBindHelper"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->access$300(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;I)V

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager$ServiceBindHelper;->access$402(Landroid/telephony/SemTelephoneManager$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$ServiceBindHelper$1;->this$0:Landroid/telephony/SemTelephoneManager$ServiceBindHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
