.class Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectionHandlerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "Destroy the popup, because connect again. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$000(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$002(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
