.class public Lcom/android/settings/security/EncryptionStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "EncryptionStatusPreferenceController.java"


# static fields
.field static final PREF_KEY_ENCRYPTION_DETAIL_PAGE:Ljava/lang/String; = "encryption_and_credentials_encryption_status"

.field static final PREF_KEY_ENCRYPTION_SECURITY_PAGE:Ljava/lang/String; = "encryption_and_credential"


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption_and_credentials_encryption_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMODEEnabled()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/security/EncryptionStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    nop

    :cond_4
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encryption_and_credentials_encryption_status"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/samsung/android/settings/encryption/CryptKeeperInterstitial$CryptKeeperInterstitialFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f12080f

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v1, 0x7f120598

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/security/EncryptionStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encryption_and_credentials_encryption_status"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Lcom/android/settings/security/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f120685

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
