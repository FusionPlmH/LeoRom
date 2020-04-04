.class Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "AttAutoConnectionPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->access$100(Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->access$100(Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    const-string v2, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->access$100(Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;->access$100(Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
