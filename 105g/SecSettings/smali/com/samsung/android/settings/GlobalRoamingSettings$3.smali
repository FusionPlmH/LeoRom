.class Lcom/samsung/android/settings/GlobalRoamingSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "GlobalRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Airplane mode changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$300(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$100(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$400(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$100(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$300(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->access$300(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method
