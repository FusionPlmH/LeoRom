.class public Lcom/samsung/android/settings/iris/IrisSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onEditButtonClicked;


# static fields
.field private static isKeepEnrollSession:Z


# instance fields
.field private isDeletionBlock:Z

.field private lockDevice:Z

.field private mChangeBackupPassword:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisPreviewStyle:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyIrises:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mRegisterIriese:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSamsungPass:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSamsungPay:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

.field private mShowFmmPopupForBackupPPP:Z

.field private mStayOnLockscreen:Landroid/support/v14/preference/SecSwitchPreference;

.field private mTipsForIris:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mTokenIris:[B

.field private mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

.field private mUserId:I

.field private mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

.field private samsungaccount_objvalue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/iris/IrisSettings;->isKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$7;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/samsung/android/settings/iris/IrisSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/iris/IrisSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->updateIrisStayLockscreenPreferenceState()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/iris/IrisSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string v0, "IrisSettings"

    const-string v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/settings/iris/IrisSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/iris/IrisSettings;->isKeepEnrollSession:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finishIrisSettings()V

    :goto_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "IrisSettings"

    const-string v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f1500d2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisPreference()V

    return-object v0
.end method

.method private finishIrisSettings()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    :cond_1
    return-void
.end method

.method private getIrisSAConfirmed()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_samsungaccount_confirmed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    const-string v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIrisSAConfirmed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getIrisVerification()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_webpass"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    const-string v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIrisVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getUseIrisSA()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_used_samsungaccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    const-string v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isFingerprintEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isIrisEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isIrisEnrolled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "IrisSettings"

    const-string v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v2, "IrisSettings"

    const-string v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private isSupportSamsungPay()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.spay"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.spay.supportIrises"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "IrisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "IrisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return v1
.end method

.method private launchChooseLock()V
    .locals 1

    const/16 v0, 0x2bd

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return-void
.end method

.method private launchChooseLock(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "previousStage"

    const-string v2, "register_iris_request"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hw_auth_token_iris"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "previousStage"

    const-string v2, "lock_screen_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0x2c5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "from_IrisUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/16 v1, 0x2c3

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2c4

    if-ne p1, v1, :cond_3

    :cond_2
    const-string v1, "from_IrisFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v1, "keep_token"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "knox_userId"

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "from_irisSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchSamsungpassFromIris()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "biometricType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private launchTipNTutorial()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_iris_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityWrapper(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IrisSettings"

    const-string v2, "Activity Not Found !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setIrisPreference()V
    .locals 10

    const-string v0, "my_irises"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v1, "registered_iris"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setKey(Ljava/lang/String;)V

    const-string v0, "register_irises"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "change_reset_password"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "iris_preview_style"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "iris_web_signin"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "iris_samsung_account"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "iris_samsung_pay"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "iris_samsung_pass"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "iris_screen_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "tips_for_iris"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTipsForIris:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "use_iris_first_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "iris_stay_lockscreen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mStayOnLockscreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "biometrics_backup_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v3, "IrisSettings"

    const-string v5, "updateAddPreference [remove Change Reset Password]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisVerification()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v5, v6}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIrisLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f121b8c

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mStayOnLockscreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120c0f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v5

    if-ne v5, v4, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "IrisSettings"

    const-string v6, "disabling mUseIrisFirstLock option for SD case"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v5

    if-ne v5, v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    goto :goto_3

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "use_iris_firstlock"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mStayOnLockscreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "iris_stay_on_lock_screen"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_d

    move v7, v4

    goto :goto_5

    :cond_d
    move v7, v2

    :goto_5
    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mStayOnLockscreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getUseIrisSA()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v6

    if-eqz v6, :cond_e

    :try_start_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    goto :goto_7

    :cond_e
    :try_start_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.samsung.android.spay"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "IrisSettings"

    const-string v7, "Remove the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_8

    :cond_f
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isSupportSamsungPay()Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "IrisSettings"

    const-string v7, "Remove the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_10
    goto :goto_8

    :catch_3
    move-exception v6

    const-string v7, "IrisSettings"

    const-string v8, "Getting information of SamsungPay make the Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_9

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120c12

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120c11

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_13
    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_14
    :goto_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "IrisSettings"

    const-string v6, "Screen lock switch disable by Enterprise ID feature"

    invoke-static {v4, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->updateIrisStayLockscreenPreferenceState()V

    return-void
.end method

.method private setIrisSAConfirmed(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_samsungaccount_confirmed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIrisSAConfirmed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIrisVerification(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_webpass"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIrisVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUseIrisSA(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_used_samsungaccount"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showFmmPopupForBackupPPP()V
    .locals 4

    const-string v0, "IrisSettings"

    const-string v1, "=====showFmmPopupForBackupPPP()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mShowFmmPopupForBackupPPP:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->getUnlockRecoveryFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->getFmmDialogIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x2c7

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mShowFmmPopupForBackupPPP:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IrisSettings"

    const-string v3, "ActivityNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private showIrisDisclaimerActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromSettingsOption"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showIrisUnlockTurnOnDialog(ZZ)V
    .locals 5

    if-eqz p1, :cond_0

    const v0, 0x7f1202da

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const v0, 0x7f1202e1

    goto :goto_0

    :goto_1
    const v1, 0x7f1202e0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f1202d8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const v2, 0x7f1202d7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120517

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$9;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/iris/IrisSettings$9;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$8;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResultWrapper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/iris/IrisSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityWrapper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/iris/IrisSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityWrapperWithSessionClose : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/iris/IrisSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateIrisStayLockscreenPreferenceState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mStayOnLockscreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public deleteRegisteredIris()Z
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120bf7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120bf8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IrisSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserHandle user Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "IrisSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isFingerprintEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v3

    const v5, 0x7f120c9f

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120c9e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_4

    const v3, 0x7f120c9d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isFingerprintEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f120c8f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120c90

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, ""

    iget-boolean v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    if-eqz v5, :cond_5

    const v5, 0x7f120c8c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    if-nez v5, :cond_6

    const v5, 0x7f120518

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    const v5, 0x7f12105f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v5, Lcom/samsung/android/settings/iris/IrisSettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/iris/IrisSettings$4;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    if-eqz v5, :cond_8

    :cond_7
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/samsung/android/settings/iris/IrisSettings$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/iris/IrisSettings$5;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_8
    new-instance v5, Lcom/samsung/android/settings/iris/IrisSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/iris/IrisSettings$6;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v4
.end method

.method public editKeyPressed(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x207a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2077

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    if-nez v1, :cond_0

    const-string v1, "hw_auth_token_iris"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    :cond_0
    const-string v1, "show_fmm_popup"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mShowFmmPopupForBackupPPP:Z

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    goto/16 :goto_4

    :pswitch_2
    if-ne p2, v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_samsungpass_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :pswitch_3
    if-ne p2, v1, :cond_2

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    goto/16 :goto_4

    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :pswitch_4
    if-eq p2, v1, :cond_4

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    :goto_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    goto :goto_4

    :pswitch_5
    if-ne p2, v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2c3

    if-ne p1, v0, :cond_5

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_4

    :cond_5
    const/16 v0, 0x2c4

    if-ne p1, v0, :cond_6

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    goto :goto_4

    :cond_6
    const/16 v0, 0x2c6

    if-ne p1, v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.spay"

    const-string v2, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "previousStage"

    const-string v2, "IrisSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_4
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_3
    nop

    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "IrisSettings"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "IrisSettings"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tokenFromLock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    :cond_0
    const-string v2, "show_fmm_popup"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mShowFmmPopupForBackupPPP:Z

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v2, :cond_1

    const-string v2, "IrisSettings"

    const-string v3, "mIrisManager is null fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "IrisSettings"

    const-string v3, "mIrisManager is not null success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f120762

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string v0, "IrisSettings"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x2079

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x2078

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->showIrisDisclaimerActivity()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "IrisSettings"

    const-string v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->cancelAndSessionEnd()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    const-string v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "iris_web_signin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "iris_screen_lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "iris_samsung_account"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_3
    const-string v2, "use_iris_first_lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "iris_stay_lockscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mStayOnLockscreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "iris_stay_on_lock_screen"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    :pswitch_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v9, 0x100

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    move v2, v4

    :goto_2
    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->selecFirstlockDialog()V

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v9, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "use_iris_firstlock"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "use_iris_firstlock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x2080

    if-eqz v0, :cond_4

    move-wide v5, v7

    nop

    :cond_4
    invoke-static {v2, v3, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->updateIrisStayLockscreenPreferenceState()V

    goto/16 :goto_a

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_5

    :cond_5
    const/16 v2, 0x2c3

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x2082

    if-eqz v0, :cond_6

    move-wide v5, v7

    nop

    :cond_6
    invoke-static {v2, v3, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_a

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v9, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v2, v9, v10}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v9, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v9

    if-eqz v0, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v10

    if-nez v10, :cond_8

    :cond_7
    goto :goto_6

    :cond_8
    move v3, v4

    :goto_6
    if-eqz v0, :cond_c

    if-nez v2, :cond_b

    if-eqz v9, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v3, :cond_a

    const/16 v5, 0x2c5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return v4

    :cond_a
    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v10, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v10, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_8

    :cond_b
    :goto_7
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->showIrisUnlockTurnOnDialog(ZZ)V

    goto :goto_8

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->removeBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v10, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v10, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SecSwitchPreference;

    const v11, 0x7f121b8c

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v10

    const/16 v11, 0x207f

    if-eqz v0, :cond_d

    move-wide v5, v7

    nop

    :cond_d
    invoke-static {v10, v11, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->updateIrisStayLockscreenPreferenceState()V

    goto :goto_a

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v9, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v2, v9}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0x2c4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return v4

    :cond_e
    if-eqz v0, :cond_f

    iput-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v2

    return v2

    :cond_f
    :try_start_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    const-string v2, "IrisSettings"

    const-string v3, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x207d

    if-eqz v0, :cond_10

    move-wide v5, v7

    nop

    :cond_10
    invoke-static {v2, v3, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    nop

    :goto_a
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7311f52f -> :sswitch_4
        -0x3be051b2 -> :sswitch_3
        0xfb79abc -> :sswitch_2
        0x29b46ef2 -> :sswitch_1
        0x3627a299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const-string v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceTreeClick  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "iris_preview_style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "iris_samsung_pay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "tips_for_iris"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v2, "registered_iris"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "change_reset_password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "register_irises"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_6
    const-string v2, "iris_samsung_pass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchTipNTutorial()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x2081

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchSamsungpassFromIris()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x207c

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_3

    :pswitch_3
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v4, 0x7f120c03

    invoke-virtual {v2, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v2

    const/16 v4, 0x207b

    invoke-static {v2, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    sput-boolean v3, Lcom/samsung/android/settings/iris/IrisSettings;->isKeepEnrollSession:Z

    goto :goto_3

    :pswitch_4
    const-string v2, "com.android.settings"

    const-class v3, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "previousStage"

    const-string v3, "changepassword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "IrisSettings"

    const-string v3, "There is no Registered Irises."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2c6

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    goto :goto_3

    :cond_1
    const-string v2, "IrisSettings"

    const-string v3, "There is Registered Irises. Launch the SamsungPay"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.spay"

    const-string v3, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "previousStage"

    const-string v3, "IrisSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x207e

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_3

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock()V

    nop

    :goto_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x3b9e4a1e -> :sswitch_6
        -0x10d796e3 -> :sswitch_5
        0x928dbfa -> :sswitch_4
        0x22f9cfb0 -> :sswitch_3
        0x3d2d32f0 -> :sswitch_2
        0x58ea60b7 -> :sswitch_1
        0x6945974e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "IrisSettings"

    const-string v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120d50

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->showFmmPopupForBackupPPP()V

    return-void
.end method

.method protected removeIris()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->setActiveUser(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V

    :cond_0
    return-void
.end method

.method public selecFirstlockDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121b8b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121b8a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120c09

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$1;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$2;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$3;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 8

    const-string v0, "IrisSettings"

    const-string v1, "startDisclaimerFromSamsungAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "mypackage"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "OSP_VER"

    const-string v7, "OSP_02"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "MODE"

    const-string v7, "ADD_ACCOUNT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "Is_From_SA_Verify"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v6, 0x2c0

    :try_start_0
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    goto :goto_3

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "client_id"

    const-string v3, "s5d189ajvs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "client_secret"

    const-string v3, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Is_From_SA_Verify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    if-eqz v2, :cond_2

    const-string v2, "IrisSettings"

    const-string v3, "SamsungAccount set_value is true."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v2, "IrisSettings"

    const-string v3, "SamsungAccount set_value is false."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/16 v2, 0x2c1

    :try_start_3
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_3
    return v1
.end method
