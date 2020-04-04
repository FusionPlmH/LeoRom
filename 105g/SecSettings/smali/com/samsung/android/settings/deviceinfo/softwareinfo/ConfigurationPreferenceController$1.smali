.class Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigurationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "forced_config_udpate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "request_status"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
