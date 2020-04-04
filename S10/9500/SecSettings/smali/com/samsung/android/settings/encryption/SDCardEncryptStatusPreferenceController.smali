.class public Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SDCardEncryptStatusPreferenceController.java"


# static fields
.field public static final PREF_KEY_SDCARD_ENCRYPT_DETAIL_PAGE:Ljava/lang/String; = "sdcard_encrypt_status"


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mSse:Lcom/samsung/android/security/SemSdCardEncryption;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdcard_encrypt_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f121300

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v2, 0x7f121303

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v3

    const v5, 0x7f121301

    if-eqz v3, :cond_5

    const v3, 0x7f1212f3

    const v6, 0x7f1212f2

    if-nez v0, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v7}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v2, 0x7f121306

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_1
    const-class v2, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
