.class public Lcom/android/settings/security/InstallCredentialsPreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "InstallCredentialsPreferenceController.java"


# instance fields
.field private final mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V
    .locals 1

    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/security/InstallCredentialsPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "credentials_install"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/InstallCredentialsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/InstallCredentialsPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x11a6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
