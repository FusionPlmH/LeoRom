.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;,
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private mParentFragment:Landroid/app/Fragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 2

    new-instance v0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;

    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    iput-object p3, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "remove_account"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "remove_account"

    return-object v0
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_modify_accounts"

    iget-object v2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->show(Landroid/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    return-void
.end method
