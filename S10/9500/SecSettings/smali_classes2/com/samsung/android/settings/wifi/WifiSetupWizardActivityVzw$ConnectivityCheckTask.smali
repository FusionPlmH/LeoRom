.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;
.super Landroid/os/AsyncTask;
.source "WifiSetupWizardActivityVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    :try_start_0
    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Waiting for 2 seconds to ensure DNS is setup to avoid UnknownHostException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiSetupWizardVzw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Exception in Thread sleep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Determine internet connection..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1302(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isWiFiConnectionAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WifiSetupWizardVzw"

    const-string v5, "Wi-Fi connection available"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isCaptivePortalNetwork()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "WifiSetupWizardVzw"

    const-string v6, "Captive portal detected..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiSetupWizardVzw"

    const-string v6, "Device is FRP enabled..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1302(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)I

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1302(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)I

    goto :goto_2

    :cond_2
    const-string v5, "WifiSetupWizardVzw"

    const-string v6, "Captive portal NOT detected..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1302(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)I

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v0

    const-string v4, "WifiSetupWizardVzw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time elapsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "WifiSetupWizardVzw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Exception in Thread sleep "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-wide/16 v4, 0x1f40

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    :goto_2
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const-string v0, "WifiSetupWizardVzw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " What is the Connection result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
