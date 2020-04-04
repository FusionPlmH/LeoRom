.class Lcom/android/settings/wifi/WifiSettings$15;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->initSecureWifiLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$disableSecureWifiIntent:Landroid/content/Intent;

.field final synthetic val$enableSecureWifiIntent:Landroid/content/Intent;

.field final synthetic val$openSecureWifiEulaIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$openSecureWifiEulaIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$enableSecureWifiIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$disableSecureWifiIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    if-eqz p2, :cond_3

    const-string v0, "WifiSettings"

    const-string v1, "mCheckBoxSecureWifi is checked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->access$1700(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "Secure Wifi Eula is not agreed, launch Eula Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$openSecureWifiEulaIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->access$1800(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z

    move-result v0

    const v2, 0x7f1207f6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$1900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->access$2000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$enableSecureWifiIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$1900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$1900(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12165a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$15;->val$disableSecureWifiIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
