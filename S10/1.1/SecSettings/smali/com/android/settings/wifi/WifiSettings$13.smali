.class Lcom/android/settings/wifi/WifiSettings$13;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddNetworkPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    return-void
.end method

.method public onItemClick(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V
    .locals 4

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;Lcom/samsung/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    sget-boolean v2, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getSmartTethering()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, p1}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$13;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, p1}, Lcom/android/settings/wifi/WifiSettings;->access$1500(Lcom/android/settings/wifi/WifiSettings;Landroid/support/v7/preference/Preference;)V

    goto :goto_1

    :cond_5
    const-string v2, "WifiSettings"

    const-string v3, "no matched any accesspoint"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
