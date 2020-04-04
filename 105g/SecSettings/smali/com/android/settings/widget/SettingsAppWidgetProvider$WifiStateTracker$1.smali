.class Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    iput-object p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v1, 0x0

    return-object v1
.end method
