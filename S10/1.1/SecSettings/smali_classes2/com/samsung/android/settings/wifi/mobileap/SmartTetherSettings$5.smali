.class Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;
.super Ljava/lang/Object;
.source "SmartTetherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAddAllowedDeviceButton()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$800(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SmartTetherSettings"

    const-string v2, "mAddAllowedDevicesButton`s onClick() - Launching AutoHotspotAllowedDeviceList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f121d27

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_0
    const-string v1, "SmartTetherSettings"

    const-string v2, "mAddAllowedDevicesButton`s onClick() - Launching Family Group Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$900(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    :goto_0
    return-void
.end method
