.class Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog$2;
.super Ljava/lang/Object;
.source "WifiSetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WifiSetupWizard"

    const-string v2, "Skip anyway!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;->mainAction(Z)V

    :cond_0
    return-void
.end method
