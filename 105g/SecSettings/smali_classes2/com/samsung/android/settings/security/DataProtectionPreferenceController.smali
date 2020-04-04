.class public Lcom/samsung/android/settings/security/DataProtectionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DataProtectionPreferenceController.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final KEY_DATA_PROTECTION:Ljava/lang/String; = "strong_protection"

.field private static final MY_USER_ID:I

.field private static final TAG:Ljava/lang/String; = "DataProtectionPreferenceController"

.field private static mChecked:Z


# instance fields
.field private final mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/OtherSecuritySettings;)V
    .locals 2

    const-string v0, "strong_protection"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "DataProtectionPreferenceController"

    const-string v1, "DataProtectionPreferenceController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "DataProtectionPreferenceController"

    const-string v4, "Alert::Please check the precondition again"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DataProtectionPreferenceController"

    const-string v4, "Alert::Please check the desktop mode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120d4f

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DataProtectionPreferenceController"

    const-string v4, "Alert::Please check the multi window mode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120d50

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v3

    :cond_2
    const v2, 0x7f120597

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .locals 5

    const-string v0, "DataProtectionPreferenceController"

    const-string v1, "update Encryption Password for FBE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    iget v3, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v4}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V

    sget v2, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DataProtectionPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateSummaryText()V
    .locals 6

    const-string v0, "DataProtectionPreferenceController"

    const-string v1, "updateSummaryText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    :try_start_0
    sget v2, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->isFbeSecure(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DataProtectionPreferenceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v3, 0x7f121a13

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v3, 0x7f1219df

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "DataProtectionPreferenceController"

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "strong_protection"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "strong_protection"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "strong_protection"

    sget-boolean v4, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v2, 0x1197

    const/16 v3, 0x1e8e

    sget-boolean v4, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->updateEncryptionPassword(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->updateSummaryText()V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "DataProtectionPreferenceController"

    const-string v1, "onPreferenceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "DataProtectionPreferenceController"

    const-string v3, "skip to set strong protection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sput-boolean v0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "strong_protection"

    sget-boolean v5, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mHost:Lcom/samsung/android/settings/security/OtherSecuritySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/security/OtherSecuritySettings;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x1e8e

    sget-boolean v5, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mChecked:Z

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    :goto_0
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->runKeyguardConfirmation(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "DataProtectionPreferenceController"

    const-string v3, "Alert::Keyguard confirmation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    const/4 v2, 0x0

    return v2

    :cond_3
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDAREnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    const-string v0, "DataProtectionPreferenceController"

    const-string v1, "updateState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->mPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/DataProtectionPreferenceController;->updateSummaryText()V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
