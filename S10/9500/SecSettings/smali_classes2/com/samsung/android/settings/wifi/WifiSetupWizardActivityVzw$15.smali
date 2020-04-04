.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$15;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showConnProgressDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$15;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "WifiSetupWizardVzw"

    const-string v1, "Checking Network Dialog Cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$15;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$15;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$1100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$ConnectivityCheckTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$15;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetNetWork()V

    return-void
.end method
