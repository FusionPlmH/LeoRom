.class public Lcom/android/settings/security/ConfigureKeyGuardDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfigureKeyGuardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mConfigureConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f2

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/security/ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    :goto_3
    move v2, v3

    :goto_4
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    const v6, 0x7f121405

    invoke-virtual {p0, v6}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    goto :goto_6

    :cond_5
    const v6, 0x7f121404

    invoke-virtual {p0, v6}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_7

    const v6, 0x7f121406

    invoke-virtual {p0, v6}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    const v6, 0x7f121403

    invoke-virtual {p0, v6}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f12142a

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/security/ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/security/ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    invoke-virtual {p0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->startPasswordSetup()V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/security/ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "ConfigureKeyGuardDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDexMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f1202b8

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f12171e

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method startPasswordSetup()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
