.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6fcd6bbb

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, -0x45e5283a

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iput-boolean v3, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiInternetAvailable:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->updateButton(I)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndUpdateButton(Z)V

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
