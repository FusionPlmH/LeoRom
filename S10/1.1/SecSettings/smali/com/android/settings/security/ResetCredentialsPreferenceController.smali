.class public Lcom/android/settings/security/ResetCredentialsPreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "ResetCredentialsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V
    .locals 1

    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Landroid/security/KeyStore;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object p3, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/security/ResetCredentialsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "credentials_reset"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ResetCredentialsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x11a7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Landroid/security/KeyStore;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->isEmpty(II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v4, "isUserRemoveCertificatesAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "false"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v6, "isUserChangeProfilesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-eqz v2, :cond_2

    if-nez v4, :cond_3

    :cond_2
    const-string v5, "PrefControllerMixin"

    const-string v6, "onResume() UserChange(or Remove) has disallowed by IT admin."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
