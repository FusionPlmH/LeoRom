.class Lcom/android/server/FMPlayerNativeBRCM$1;
.super Ljava/lang/Object;
.source "FMPlayerNativeBRCM.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBRCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMPlayerNativeBRCM;


# direct methods
.method constructor <init>(Lcom/android/server/FMPlayerNativeBRCM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "FMPlayerNative_brcm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onServiceConnected() name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNativeBRCM;->initService(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "FMPlayerNative_brcm"

    const-string v1, "Unable to create connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->access$000()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;

    iget-object v1, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;-><init>(Lcom/android/server/FMPlayerNativeBRCM;Lcom/android/server/FMPlayerNativeBRCM$1;)V

    invoke-static {v0}, Lcom/android/server/FMPlayerNativeBRCM;->access$002(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->access$200()Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    move-result-object v0

    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->access$000()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/FMPlayerNativeBRCM;->access$302(Z)Z

    :try_start_1
    iget-object v0, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBRCM;->notify_unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "FMPlayerNative_brcm"

    const-string v2, "ServiceConnection() InterruptedException ::"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "onServiceConnected() : on again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/FMPlayerNativeBRCM;->access$302(Z)Z

    iget-object v0, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-static {v0}, Lcom/android/server/FMPlayerNativeBRCM;->access$500(Lcom/android/server/FMPlayerNativeBRCM;)J

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "onServiceDisconnected :: disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/FMPlayerNativeBRCM;->access$202(Lcom/broadcom/fm/fmreceiver/IFmReceiverService;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-static {v0}, Lcom/android/server/FMPlayerNativeBRCM;->access$002(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-void
.end method
