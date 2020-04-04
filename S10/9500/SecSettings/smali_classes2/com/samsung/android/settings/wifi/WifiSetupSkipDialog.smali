.class public Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;
.super Landroid/app/DialogFragment;
.source "WifiSetupSkipDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "messageRes"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageRes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121ed0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;)V

    const v3, 0x7f121ece

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupSkipDialog;)V

    const v3, 0x7f121dc5

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
