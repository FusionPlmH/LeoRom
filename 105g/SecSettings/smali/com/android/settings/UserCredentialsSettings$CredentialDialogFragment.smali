.class public Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static isKeyChainInstalledAlias(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    const-string v2, "knox_ccm_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "CredentialDialogFragment"

    const-string v3, "Failed to get CCM System service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CredentialDialogFragment"

    const-string v3, "Check keychain installed alias for CCM"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static show(Landroid/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "credential"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CredentialDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CredentialDialogFragment"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x215

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "credential"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d03c4

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a01e2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0d0288

    const/4 v5, 0x1

    invoke-static {v0, v4, v2, v3, v5}, Lcom/android/settings/UserCredentialsSettings;->getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f121bac

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f12079f

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v5, "no_config_credentials"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "no_config_credentials"

    invoke-static {v7, v8, v6}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;

    invoke-direct {v7, p0, v6, v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment$1;-><init>(Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/UserCredentialsSettings$Credential;)V

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result v8

    const v9, 0x7f1216c7

    if-eqz v8, :cond_0

    invoke-virtual {v2, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isKnox()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$100(Lcom/android/settings/UserCredentialsSettings$Credential;)I

    move-result v8

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential;->access$200()I

    move-result v10

    if-ne v8, v10, :cond_1

    iget-object v8, v0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->isKeyChainInstalledAlias(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/android/settings/Utils;->isUserRemoveCertificateAllowedAsUser(Landroid/content/Context;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-object v7
.end method
