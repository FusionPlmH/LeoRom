.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "WifiSetupWizardVzw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip button clicked: Is Wi-Fi connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isDataAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isConnWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->isDataAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.setupwizard.B2B_CHECK_PROGRESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isLaunchedFromWifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mainAction(Z)V

    :goto_0
    return-void
.end method
