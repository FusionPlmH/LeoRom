.class public Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "KnoxSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnificationConfirmationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newIntance(Z)Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;

    invoke-direct {v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "compliant"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "compliant"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->access$100()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->access$000()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v5

    const v6, 0x7f120d4a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eqz v2, :cond_2

    if-eqz v5, :cond_1

    const v8, 0x7f120c71

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    goto :goto_4

    :cond_1
    const v3, 0x7f120c70

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_4

    const/4 v8, 0x2

    if-eqz v1, :cond_3

    const v9, 0x7f120c6d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v3

    aput-object v6, v8, v4

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const v9, 0x7f120c6e

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v3

    aput-object v6, v8, v4

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const v3, 0x7f120c6b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    const v3, 0x7f120c6c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    goto :goto_1

    :goto_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f120c73

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f120c6f

    new-instance v8, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;

    invoke-direct {v8, p0, v1, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$2;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;ZLcom/samsung/android/settings/knox/KnoxSecuritySettings;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f12046e

    new-instance v8, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog$1;-><init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
