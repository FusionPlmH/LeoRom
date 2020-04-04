.class public Lcom/android/settings/fingerprint/FingerprintLockSettings;
.super Landroid/app/Activity;
.source "FingerprintLockSettings.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableSystemKey:Z

.field private mDisplayKnoxName:Ljava/lang/String;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSetupwizard:Z

.field private mHasEnrolledFingerprint:Z

.field private mIdentifyFingerprint:Z

.field private mInitializedUI:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsAfw:Z

.field private mIsDirectionLock:Z

.field private mIsEnterpriseIdentityLock:Z

.field private mIsFromKnoxFingerprintPlus:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsKnoxLockPasswordScreen:Z

.field private mIsOneLock:Z

.field private mIsRelativeLink:Z

.field private mIsSearchEntry:Z

.field private mIsSecured:Z

.field private mIsSharedDevice:Z

.field private mKeepSessionAndActivity:I

.field private mKnoxIdentifyOnlyFingerprint:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxEnrolledFingerprint:Z

.field private mOnlyIdentifyFingerprint:Z

.field private mPreviousStage:Ljava/lang/String;

.field private mSelectedFingerIndex:I

.field private mStartUseFingerprint:Z

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsKnoxLockPasswordScreen:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsRelativeLink:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSearchEntry:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mChallenge:J

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private closeSessionAndFinish()V
    .locals 3

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSessionAndFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "closeSessionAndFinish : Keep the Fingerprint session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "Close fingerprint session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "closeSessionAndFinish : Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "closeSessionAndFinish : fniish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    :goto_1
    return-void
.end method

.method private deleteAllFingerprints()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "deleteAllFingerprints Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "deleteAllFingerprints Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private fromFingerprintSettings(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "fingerprint_entry"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "FingerprintSettings_register"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fingerprint_settings_set_screen_lock"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "support_samsung_account"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_fingerprint_samsung_pass"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "samsung_pay"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private initFingerprintLockSettings()V
    .locals 5

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "initFingerprintLockSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "identifyFingerprint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "onlyIdentify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "isAfw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "relative_link"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsRelativeLink:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "from_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSearchEntry:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "fingerIndex"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "mKnoxIdentifyOnly"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "fromSetupwizard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    const-string v0, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result v0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const v3, 0x10001

    if-ne v0, v3, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "isFromKnoxFingerprintPlus"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "is_knox"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "is_knox_two_step"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "displayKnoxName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "isSharedDevice"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDisplayKnoxName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsFromKnoxSetCases:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsFromKnoxTwoStep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[previousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[identifyFingerprint] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSecured] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fromSetupwizard] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hasEnrolledFingerprint] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[maxEnrolledFingerprint] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isDirectionLock] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mSelectedFingerIndex]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "disable_systemkey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsEnterpriseIdentityLock:Z

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    if-nez v0, :cond_7

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_7
    return-void
.end method

.method private launchChooseLock(J)V
    .locals 5

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchChooseLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "hide_disabled_prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "screen_lock_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v1, "fingerprint_entry"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fingerprint_settings_add_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fingerprint_settings_set_screen_lock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "settings_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v1, "lock_screen_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    if-nez v1, :cond_6

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string v1, "disable_systemkey"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDisableSystemKey:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x11

    :try_start_0
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "FpstFingerprintLockSettings"

    const-string v4, "Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 10

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v1, :cond_0

    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "launchConfirmLock : preEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mChallenge:J

    :cond_0
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v1, 0x11

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v3, 0x3ec

    const v1, 0x7f1216fd

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mChallenge:J

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FpstFingerprintLockSettings"

    const-string v3, "Fail launchConfirmationActivity!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_1
    return-void
.end method

.method private launchRedactionInterstitial()V
    .locals 4

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchRedactionInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "launchRedaction [startActivity]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "fromSetupWizard"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FpstFingerprintLockSettings"

    const-string v3, "launchRedactionInterstitial : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "RedactionInterstitial.createStartIntent is NULL."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private recognizeFingerprint()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "recognizeFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runRegister()V
    .locals 5

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "runRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "Mobile keyboard attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showMobileKeyboardToastMsg()V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f1202b1

    const-string v2, "FpstFingerprintLockSettings"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "isAfw"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "identifyFingerprint"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isFromKnoxSetupWizard"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isFromKnoxFingerprintPlus"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "is_knox"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "is_knox_two_step"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isSharedDevice"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "fromKnoxKeyguard"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "fromKnoxKeyguard"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "is_secure_folder"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "is_secure_folder"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "lock_screen_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "password"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :try_start_0
    const-string v0, "FpstFingerprintLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister hasEnrolledFingerprints "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-nez v0, :cond_5

    const/16 v0, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3f0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x3e8

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_7
    :goto_1
    return-void
.end method

.method private runRegisterForKnox()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3706

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private showChooseLockKnoxPassword(Z)V
    .locals 9

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "[KNOX FINGERPRINT] : showChooseLockKnoxPassword. [TODO] : needs to set more policy for knox bp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    const/high16 v2, 0x40000

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    :goto_0
    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v2, 0x50000

    goto :goto_0

    :cond_1
    nop

    :goto_1
    move v0, v2

    const-string v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    add-int v8, v2, v4

    if-le v8, v7, :cond_2

    add-int v7, v2, v4

    :cond_2
    add-int v8, v5, v6

    if-le v8, v3, :cond_3

    add-int v3, v5, v6

    :cond_3
    add-int v8, v7, v3

    if-le v8, v1, :cond_4

    add-int v1, v7, v3

    :cond_4
    return-void
.end method

.method private showDatabaseFailureDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1209bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMobileKeyboardToastMsg()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f12099e

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120a28

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 3

    const v0, 0x7f1209ce

    if-ne p1, v0, :cond_0

    const-string v0, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f1209cf

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v1, "google_setupwizard_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setIndicatorTransparency()V

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsLockSetup()V
    .locals 4

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x11

    :try_start_0
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "FpstFingerprintLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startFingerprintSettings(Landroid/content/Context;)V
    .locals 7

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startFingerprintSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v2, 0xa

    new-array v4, v2, [B

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string v1, "FpstFingerprintLockSettings"

    const-string v3, "onCreate DB Corrupt"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->deleteAllFingerprints()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f1209ce

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "startFragment : context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, ":settings:fragment_args_key"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-eqz v3, :cond_3

    const-string/jumbo v3, "tokenFromLock"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_3
    const-string v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "isAfw"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsRelativeLink:Z

    if-eqz v3, :cond_4

    const-string v3, "FpstFingerprintLockSettings"

    const-string v4, "from relative link"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$FingerprintSettingsActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "relative_link"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, ":settings:top_level_tile_id"

    const-string v4, "biometrics_and_security_settings"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const/16 v3, 0x2347

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v3, 0x7f1202b1

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_1
    return-void
.end method

.method private startUseBiometricsLockSettingsGeneric()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.samsung.android.settings.biometrics.UseBiometricsLockSettingsGenericDialog"

    goto :goto_0

    :cond_1
    const-string v2, "com.samsung.android.settings.biometrics.UseBiometricsLockSettingsGeneric"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "FpstFingerprintLockSettings"

    const-string/jumbo v4, "startUseBiometricsLockSettingsGeneric : Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    if-nez v1, :cond_4

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_4
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const-string v1, "google_setupwizard_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "intent is not null! Copy the token to result_intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_1
    const/16 v1, 0x384

    const/4 v2, 0x1

    if-eq p1, v1, :cond_46

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_14

    :pswitch_0
    if-ne p2, v1, :cond_d

    if-eqz p3, :cond_2

    const-string v3, "previousStage"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FpstFingerprintLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previousStage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "FpstFingerprintLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFromKnoxSetCases : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mKnoxIdentifyOnlyFingerprint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsFromKnoxTwoStep : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsFromKnoxSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    goto/16 :goto_14

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_5

    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSupportFingerprintPlus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v4, :cond_7

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startUseBiometricsLockSettingsGeneric()V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    :goto_1
    goto :goto_2

    :cond_8
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    :goto_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string v3, "fingerIndex"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_5

    :cond_d
    const-string v1, "FpstFingerprintLockSettings"

    const-string v3, "Fingerprint Registration failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_e
    :goto_5
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    :cond_f
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_10
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    goto/16 :goto_14

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_14

    :pswitch_2
    if-ne p2, v1, :cond_12

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "start chooseLockGeneric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto/16 :goto_14

    :cond_12
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :pswitch_3
    if-ne p2, v1, :cond_13

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_14

    :cond_13
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_14
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :pswitch_4
    if-ne p2, v2, :cond_49

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_14

    :pswitch_5
    if-ne p2, v2, :cond_2f

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v3, :cond_15

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->getToastMsgForBiometricsBackUpPassword(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    :cond_15
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f1209df

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    :cond_16
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v4

    const-string v5, "FpstFingerprintLockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordQuality : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x20000

    if-eq v4, v5, :cond_18

    const/high16 v5, 0x30000

    if-eq v4, v5, :cond_18

    const/high16 v5, 0x40000

    if-eq v4, v5, :cond_17

    const/high16 v5, 0x50000

    if-eq v4, v5, :cond_17

    const/high16 v5, 0x60000

    if-eq v4, v5, :cond_17

    packed-switch v4, :pswitch_data_2

    goto :goto_7

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1209af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1209b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1209b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1209b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    :goto_7
    if-eqz v3, :cond_19

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_19
    :goto_8
    const-string v3, "lock_screen_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_1b
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "There is no fingeprint Launch the RegisterFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_14

    :cond_1c
    const-string v3, "fingerprint_entry"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_1d

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startFingerprintSettings(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_1d
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_14

    :cond_1e
    const-string v3, "google_setupwizard_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_14

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_20
    const-string v3, "fingerprint_settings_set_screen_lock"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v3, :cond_23

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v3, :cond_22

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_9

    :cond_21
    const-string v1, "FpstFingerprintLockSettings"

    const-string v3, "This is wrong case!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_a

    :cond_22
    :goto_9
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    :goto_a
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_23
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_14

    :cond_24
    const-string v3, "FingerprintSettings_register"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "samsung_pay"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "key_fingerprint_samsung_pass"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string/jumbo v3, "support_web_signin"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string/jumbo v3, "support_samsung_account"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_b

    :cond_25
    const-string v3, "sec_setupwizard_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "DirectionLock is changed to P/P/P! Register Fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    return-void

    :cond_26
    const-string v3, "fingerprint_register_external"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-eqz v1, :cond_27

    const-string v1, "FpstFingerprintLockSettings"

    const-string v3, "Fingerprint already registered!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_27
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    return-void

    :cond_28
    const-string v0, "knox_fingerprint_entry"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "FpstFingerprintLockSettings"

    const-string v3, "Fingerprint already registered for KNOX!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    :cond_29
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_2a
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    return-void

    :cond_2b
    const-string v0, "FpstFingerprintLockSettings"

    const-string v3, "ChooseLock performed successfully! Enable Fingerprint lock"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_2c
    :goto_b
    const-string v0, "FingerprintSettings_register"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-eqz v0, :cond_2e

    goto :goto_c

    :cond_2d
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_2e

    :goto_c
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :cond_2e
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_14

    :cond_2f
    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "Set lockscreen failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_14

    :pswitch_8
    if-ne p2, v1, :cond_41

    if-eqz p3, :cond_30

    const-string v3, "previousStage"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FpstFingerprintLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previousStage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v3, :cond_33

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v3, :cond_31

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    goto/16 :goto_14

    :cond_31
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showChooseLockKnoxPassword(Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_d

    :cond_32
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_12

    :cond_33
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v3, :cond_34

    goto/16 :goto_10

    :cond_34
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSharedDevice:Z

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    :cond_35
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_12

    :cond_36
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz v3, :cond_3a

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSupportFingerprintPlus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v4, :cond_37

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startUseBiometricsLockSettingsGeneric()V

    goto :goto_e

    :cond_37
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    :goto_e
    goto :goto_f

    :cond_38
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    :goto_f
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_12

    :cond_39
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_12

    :cond_3a
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string/jumbo v3, "support_samsung_account"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string/jumbo v3, "support_web_signin"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "key_fingerprint_samsung_pass"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "samsung_pay"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    :cond_3b
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v3

    if-eqz v3, :cond_3c

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_3c
    const-string v2, "fingerprint_entry"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startFingerprintSettings(Landroid/content/Context;)V

    :cond_3d
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v2, :cond_3e

    const-string v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    :cond_3e
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string v3, "fingerIndex"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_12

    :cond_3f
    :goto_10
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_11

    :cond_40
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_11
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_12

    :cond_41
    if-ne p2, v2, :cond_42

    const-string v1, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "Register fingerprint is closed. Restart runRegister!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto :goto_14

    :cond_42
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v1, :cond_43

    const-string v1, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    :cond_43
    const-string v1, "FpstFingerprintLockSettings"

    const-string v3, "Fingerprint Registration failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_44

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_44
    :goto_12
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    if-nez v1, :cond_45

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_14

    :cond_45
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    goto :goto_14

    :cond_46
    if-ne p2, v2, :cond_48

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto :goto_13

    :cond_47
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    :goto_13
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "KNOXNOTICE_REQUEST_CODE got RESULT_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_48
    const-string v1, "FpstFingerprintLockSettings"

    const-string v2, "KNOXNOTICE_REQUEST_CODE got RESULT_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    nop

    :cond_49
    :goto_14
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ef
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10000
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->initFingerprintLockSettings()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "mPreviousStage is null! Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    const v0, 0x7f1202b1

    const-string v1, "FpstFingerprintLockSettings"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "mFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1209ce

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "sec_setupwizard_fingerprint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "google_setupwizard_fingerprint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "support_web_signin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "samsung_pay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "lock_screen_fingerprint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "knox_fingerprint_entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_7
    const-string v2, "lock_screen_pin_pattern_password_upgragde"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v2, "fingerprint_entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_0

    :sswitch_9
    const-string v2, "fingerprint_register_external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_a
    const-string v2, "FingerprintSettings_register"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_0

    :sswitch_b
    const-string/jumbo v2, "support_samsung_account"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_6

    :pswitch_0
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "KEY_KNOX_FINGERPRINT_SETTINGS_ENTRY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_8
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "FingerprintLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-eqz v0, :cond_9

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startFingerprintRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_9
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_6

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_6

    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_10
    :goto_2
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "[KNOX FINGERPRINT] : START recognizeFingerprint() in FingerExist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_6

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_11

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() :mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_11
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_12

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_6

    :cond_12
    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startFingerprintRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_13
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "This is wrong case! All fingerprint already enrolled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_6

    :pswitch_2
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "SEC Setupwizard - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-ne v0, v3, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_14
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_15
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :pswitch_3
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "Google Setupwizard - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_16

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() :mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_16
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_17

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_6

    :cond_17
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_18
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "This is wrong case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_6

    :pswitch_4
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "LockScreen - Fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v0, :cond_1b

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "There is no fingerprint. Register fingerprint!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_19

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_19
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "FingerprintLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-eqz v0, :cond_1a

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startFingerprintRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_1a
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_6

    :cond_1b
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_1c
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_1d
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_6

    :cond_1e
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v0, :cond_1f

    goto :goto_3

    :cond_1f
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_6

    :cond_20
    :goto_3
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "[KNOX FINGERPRINT] : START recognizeFingerprint() in FingerExist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_6

    :pswitch_5
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "LockScreen - OS Upgrade with P/P/P"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_21
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_6

    :pswitch_6
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "FingerprintSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_4

    :cond_22
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_23

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_6

    :cond_23
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_6

    :cond_24
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "This is wrong case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_6

    :cond_25
    :goto_4
    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() :mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    goto :goto_6

    :pswitch_7
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "FingerprintSettings - Entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mIsDirectionLock:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_5

    :cond_26
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_27

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto :goto_6

    :cond_27
    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startFingerprintRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->runRegister()V

    goto :goto_6

    :cond_28
    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "This is wrong case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startFingerprintSettings(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_6

    :cond_29
    :goto_5
    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() :mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->startBiometricsLockSetup()V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77be5188 -> :sswitch_b
        -0x70e29525 -> :sswitch_a
        -0x5bf1f0b4 -> :sswitch_9
        -0x5464e6a9 -> :sswitch_8
        -0x6de907 -> :sswitch_7
        0x18664664 -> :sswitch_6
        0x2a642925 -> :sswitch_5
        0x2ca112e3 -> :sswitch_4
        0x4ad7295d -> :sswitch_3
        0x5a88c147 -> :sswitch_2
        0x5b44575f -> :sswitch_1
        0x5effd7a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
