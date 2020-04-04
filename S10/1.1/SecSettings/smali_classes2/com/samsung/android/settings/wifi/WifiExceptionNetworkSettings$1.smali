.class Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiExceptionNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings$1;->this$0:Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_WCM_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ssid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiExceptionNetworkSettings"

    const-string v2, "ACTION_WCM_CONFIGURATION_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings$1;->this$0:Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->access$000(Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;)V

    :cond_0
    return-void
.end method
