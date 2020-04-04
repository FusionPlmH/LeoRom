.class Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;
.super Ljava/lang/Object;
.source "SmartTetherSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "SmartTetherSettings"

    const-string v1, "mAutoHotspotCustomPreferenceListener`s onDeleteClicked() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const-string v1, "SmartTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoHotspotCustomPreferenceListener`s onDeleteClicked() - smartWhiteList`s name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/SemWifiApSmartWhiteList;->removeWhiteList(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$700(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClicked(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "SmartTetherSettings"

    const-string v1, "mAutoHotspotCustomPreferenceListener`s onPreferenceClicked() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$402(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const-string v0, "SmartTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoHotspotCustomPreferenceListener`s onPreferenceClicked() - smartWhiteList`s name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$400(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$400(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$500(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$500(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SmartTetherSettings"

    const-string v1, "mDeviceNameDialog  is already shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$600(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;I)V

    goto :goto_0

    :cond_1
    const-string v0, "SmartTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoHotspotCustomPreferenceListener`s onPreferenceClicked() - other preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
