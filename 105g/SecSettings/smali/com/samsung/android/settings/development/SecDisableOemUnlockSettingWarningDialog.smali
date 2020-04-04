.class public Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecDisableOemUnlockSettingWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SecDisableOemUnlockSettingWarningDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    const-string v2, "SecDisableOemUnlockSettingWarningDialog"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c4

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockDialogHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    invoke-static {}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSkeymasterSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;->sendIntentMasterClear(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lcom/android/settings/development/OemUnlockDialogHost;->onOemUnlockDialogConfirmed(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/settings/development/OemUnlockDialogHost;->onOemUnlockDialogDismissed()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1213fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1213fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12074b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockDialogHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/settings/development/OemUnlockDialogHost;->onOemUnlockDialogDismissed()V

    return-void
.end method

.method public sendIntentMasterClear(Z)V
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SecDisableOemUnlockSettingWarningDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentMasterClear : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FROM_OEM_UNLOCK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "OEM_UNLOCK_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/SecDisableOemUnlockSettingWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f120e49

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method
