.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dontshowmemhsfirsttime"

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_4

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "helphub:section"

    const-string v5, "tethering_tmo"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v4, "helphub:section"

    const-string v5, "tethering_mtr"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v4, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/RestrictedSettingsFragment;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/RestrictedSettingsFragment;

    invoke-virtual {v4, v3}, Lcom/android/settings/RestrictedSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:appid"

    const-string v5, "tethering"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v4, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/RestrictedSettingsFragment;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/RestrictedSettingsFragment;

    invoke-virtual {v4, v3}, Lcom/android/settings/RestrictedSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v3, "WifiApSwitchEnabler"

    const-string v4, "Help info == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "WifiApSwitchEnabler"

    const-string v5, "Exception!! help NameNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$56;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_2
    return-void
.end method
