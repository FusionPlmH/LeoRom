.class public Lcom/samsung/android/settings/security/DataProtectionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataProtectionSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static mActivity:Lcom/android/settings/SettingsActivity;

.field private static mChecked:Z

.field private static mHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "DataProtectionSettings"

    const-string v4, "Alert::Please check the precondition again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DataProtectionSettings"

    const-string v4, "Alert::Please check the desktop mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120d4f

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1
    sget-object v3, Lcom/samsung/android/settings/security/DataProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DataProtectionSettings"

    const-string v4, "Alert::Please check the multi window mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120d50

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v2

    :cond_2
    sget-object v2, Lcom/samsung/android/settings/security/DataProtectionSettings;->mHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const v3, 0x7f120597

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .locals 5

    const-string v0, "DataProtectionSettings"

    const-string v1, "update Encryption Password for FBE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/security/DataProtectionSettings;->mHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/security/DataProtectionSettings;->mHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget v3, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v4}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DataProtectionSettings"

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


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5b

    return v0
.end method

.method public isChecked()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v0

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    sput-object v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/samsung/android/settings/security/DataProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    sget-object v1, Lcom/samsung/android/settings/security/DataProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    sput-object v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    sget-object v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0278

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/security/DataProtectionSettings;->setHeaderView(Landroid/view/View;Z)V

    sget-object v1, Lcom/samsung/android/settings/security/DataProtectionSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "DataProtectionSettings"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    return-void

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "strong_protection"

    sget-boolean v4, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x1e8e

    sget-boolean v4, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/security/DataProtectionSettings;->updateEncryptionPassword(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15012c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->isChecked()Z

    move-result v1

    if-ne p2, v1, :cond_0

    const-string v1, "DataProtectionSettings"

    const-string v2, "skip to set strong protection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-boolean p2, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "strong_protection"

    sget-boolean v3, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x1e8e

    sget-boolean v3, Lcom/samsung/android/settings/security/DataProtectionSettings;->mChecked:Z

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/security/DataProtectionSettings;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "DataProtectionSettings"

    const-string v2, "Alert::Keyguard confirmation failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/security/DataProtectionSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/DataProtectionSettings;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method
