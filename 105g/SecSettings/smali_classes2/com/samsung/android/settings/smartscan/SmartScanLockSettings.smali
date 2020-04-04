.class public Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;
.super Landroid/app/Activity;
.source "SmartScanLockSettings.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mFaceLockEnabled:Z

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSetupwizard:Z

.field private mHasEnrolledFaces:Z

.field private mIdentifyBiometrics:Z

.field private mIrisErrorPopup:Landroid/app/AlertDialog;

.field private mIrisLockEnabled:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsRelativeLink:Z

.field private mIsSearchEntry:Z

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedLockConfirm:Z

.field private mPreviousStage:Ljava/lang/String;

.field private mReigstredBiometrics:I

.field private mTokenFace:[B

.field private mTokenIris:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->key:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceLockEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisLockEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsRelativeLink:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSearchEntry:Z

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mHasEnrolledFaces:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRegister(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private checkOhterBiometricsLockEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceLockEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisLockEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private closeSessionAndFinish()V
    .locals 3

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSessionAndFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "closeSessionAndFinish : Keep the Face session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "closeSessionAndFinish : Close Face Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "closeSessionAndFinish : Keep the Iris session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "closeSessionAndFinish : Close Iris Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "closeSessionAndFinish : fniish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->finish()V

    :goto_2
    return-void
.end method

.method private fromSmartScanSettings(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "intelligentscan_settings_entry"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "intelligentscan_settings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "intelligentscan_settings_register"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_intelligentscan_web_signin"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_intelligentscan_samsung_account"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_intelligentscan_samsung_pay"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private initSmartScanLockSettings()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "previousStage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    const-string v2, "hw_auth_token_face"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    const-string v2, "hw_auth_token_iris"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    const-string v2, "password"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserPassword:Ljava/lang/String;

    const-string v2, "identifyBiometricAuth"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    const-string v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    const-string v2, "relative_link"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsRelativeLink:Z

    const-string v2, "from_search"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSearchEntry:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token_face"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    :cond_0
    const-string v0, "SsstSmartScanLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreviousStage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRelativeLink : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsRelativeLink:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsSearchEntry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSearchEntry:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFromSetupwizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->key:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mHasEnrolledFaces:Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceLockEnabled:Z

    :cond_5
    const-string v0, "SsstSmartScanLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFaceLockEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceLockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisLockEnabled:Z

    :cond_6
    const-string v0, "SsstSmartScanLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIrisLockEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisLockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/2addr v0, v2

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-nez v0, :cond_9

    :cond_8
    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_a
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    return-void
.end method

.method private launchChooseLock()V
    .locals 5

    const-string v0, "SsstSmartScanLockSettings"

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

    const-string v1, "for_smartscan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "challenge"

    iget-wide v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "lock_screen_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "screen_lock_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "intelligentscan_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "intelligentscan_settings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "intelligentscan_settings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "settings_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string v1, "lock_screen_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v1, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "SsstSmartScanLockSettings"

    const-string v4, "Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 9

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "launchConfirmLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    move v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SsstSmartScanLockSettings"

    const-string v3, "Fail launchConfirmationActivity!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :cond_2
    return-void
.end method

.method private processSmartScanRegistrationResult()V
    .locals 5

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "processSmartScanRegistrationResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    const-string v0, "intelligentscan_register_external"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x11

    if-nez v0, :cond_a

    const-string v0, "key_intelligentscan_samsung_account"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "key_intelligentscan_samsung_pay"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    const-string v0, "intelligentscan_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_4

    const-string v0, "lock_screen_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "intelligentscan_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_6
    const-string v0, "intelligentscan_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_9

    const-string v0, "lock_screen_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "intelligentscan_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "lock_screen_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_2
    return-void
.end method

.method private setKeepSessionAndActivityValue()V
    .locals 2

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_3
    :goto_1
    return-void
.end method

.method private showCurrentLockTypeToast()V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    if-eq v1, v3, :cond_3

    const/high16 v3, 0x20000

    if-eq v1, v3, :cond_2

    const/high16 v3, 0x30000

    if-eq v1, v3, :cond_2

    const/high16 v3, 0x40000

    if-eq v1, v3, :cond_1

    const/high16 v3, 0x50000

    if-eq v1, v3, :cond_1

    const/high16 v3, 0x60000

    if-eq v1, v3, :cond_1

    const-string v3, "SsstSmartScanLockSettings"

    const-string v4, "showCurrentLockTypeToast undefined lock type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v2, 0x7f1209c8

    goto :goto_0

    :cond_2
    const v2, 0x7f1209ca

    goto :goto_0

    :cond_3
    const v2, 0x7f1209c9

    nop

    :goto_0
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method private showFaceRetryDialog()V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "showFaceRetryDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120962

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12095f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12095e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showIrisErrorPopup(I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    const/16 v2, -0x6d

    const v3, 0x7f120bf9

    if-eq p1, v2, :cond_1

    const/16 v2, -0x6a

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f120c04

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f120c06

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f120c07

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f120c00

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f120c07

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v0, :cond_2

    const v3, 0x7f120bfb

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120ddd

    new-instance v4, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$4;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisErrorPopup:Landroid/app/AlertDialog;

    return-void

    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startBiometricsDisclaimer()V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fromSetupwizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x111

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "SsstSmartScanLockSettings"

    const-string v3, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startBiometricsRegister()V
    .locals 2

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsRegister : check Rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRegister(ZZ)V

    return-void
.end method

.method private startBiometricsRegister(ZZ)V
    .locals 5

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBiometricsRegister : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const-string v2, "SsstSmartScanLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRotationGuide()V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "SsstSmartScanLockSettings"

    const-string v2, "Wrong case!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startIntelligentScanRegister(Z)V

    :goto_1
    return-void
.end method

.method private startBiometricsRotationGuide()V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsRotationGuide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsRotationGuide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.SuwBiometricsRotationGuide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x111

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "SsstSmartScanLockSettings"

    const-string v3, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startBiometricsUnlockType()V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsUnlockType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsUnlockType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x101

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "SsstSmartScanLockSettings"

    const-string v3, "startBiometricsUnlockType : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    const-string v2, "intelligentscan_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SsstSmartScanLockSettings"

    const-string v3, "Exception occured!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startIntelligentScanRegister(Z)V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startIntelligentScanRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.biometrics.service"

    const-string v2, "com.samsung.android.biometrics.service.enroll.IntelligentScanEnrollActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "for_smartscan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hw_auth_token_face"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "smartscan_enroll_retry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mHasEnrolledFaces:Z

    if-nez v1, :cond_0

    const-string v1, "iris_enroll_retry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x111

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SsstSmartScanLockSettings"

    const-string v2, "ActivityNotFoundException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startLandscapeUnlockTipsForIS()V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startLandscapeUnlockTipsForIS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.smartscan.SmartScanTip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.smartscan.SuwSmartScanTip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "SsstSmartScanLockSettings"

    const-string v3, "startLandscapeUnlockTipsForIS : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startRedactionInterstitial()V
    .locals 3

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startRedactionInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fromSetupWizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startSmartScanIntroduce()V
    .locals 4

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startSmartScanIntroduce"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportSmartScanIntroduce()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.smartscan.SmartScanIntroduce"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "SsstSmartScanLockSettings"

    const-string v3, "startSmartScanIntroduce : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "SmartScan introduce doesn\'t supported at SecSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRegister()V

    :goto_1
    return-void
.end method

.method private startSmartScanSettings(Landroid/content/Context;)V
    .locals 6

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startSmartScanSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    if-nez v0, :cond_0

    const-string v1, "SsstSmartScanLockSettings"

    const-string v2, "startFragment : context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, ":settings:fragment_args_key"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "from_search"

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSearchEntry:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "hw_auth_token_face"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "lock_screen_intelligentscan"

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "need_fmm_popup"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "need_fmm_popup"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsRelativeLink:Z

    if-eqz v2, :cond_2

    const-string v2, "SsstSmartScanLockSettings"

    const-string v4, "from relative link"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$SmartScanSettingsActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "relative_link"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, ":settings:top_level_tile_id"

    const-string v4, "biometrics_and_security_settings"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const/16 v3, 0x2347

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    const v3, 0x7f1202b7

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data is NULL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    if-eqz p3, :cond_9

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "intent is not null! Copy the token to result_intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-nez v0, :cond_3

    const-string v0, "hw_auth_token_face"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, "hw_auth_token_face"

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: tokenFace="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, "NULL"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-nez v0, :cond_5

    const-string v0, "hw_auth_token_iris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, "hw_auth_token_iris"

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "SsstSmartScanLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: tokenIris="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const-string v4, "NULL"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-nez v0, :cond_8

    :cond_7
    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    goto :goto_3

    :cond_8
    iput-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    :cond_9
    :goto_3
    const/4 v0, -0x1

    const/16 v1, 0x11

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "default : Not consider this case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :pswitch_1
    if-ne p2, v0, :cond_a

    invoke-direct {p0, v3, v3}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRegister(ZZ)V

    goto/16 :goto_f

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_c

    const-string v0, "lock_screen_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_c
    :goto_4
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_2
    if-ne p2, v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchChooseLock()V

    goto/16 :goto_f

    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_f

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRegister()V

    goto/16 :goto_f

    :cond_10
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_12
    const-string v0, "intelligentscan_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_15

    const-string v0, "lock_screen_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    goto :goto_5

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "intelligentscan_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_15
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->processSmartScanRegistrationResult()V

    goto/16 :goto_f

    :pswitch_5
    if-ne p2, v0, :cond_16

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRegister()V

    goto/16 :goto_f

    :cond_16
    const-string v0, "SsstSmartScanLockSettings"

    const-string v2, "onActivityResult: Finish the activity!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_17
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_19

    const-string v0, "lock_screen_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_19
    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_6
    if-ne p2, v0, :cond_1a

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "start chooseLockGeneric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchChooseLock()V

    goto/16 :goto_f

    :cond_1a
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_7
    const/16 v4, -0xb

    if-ne p2, v4, :cond_1b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showFaceRetryDialog()V

    goto/16 :goto_f

    :cond_1b
    const/16 v4, -0x66

    if-eq p2, v4, :cond_27

    const/16 v4, -0x67

    if-eq p2, v4, :cond_27

    const/16 v4, -0x68

    if-eq p2, v4, :cond_27

    const/16 v4, -0x6a

    if-eq p2, v4, :cond_27

    const/16 v4, -0x6d

    if-ne p2, v4, :cond_1c

    goto/16 :goto_a

    :cond_1c
    if-ne p2, v0, :cond_21

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v1, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceStayOnLockScreen(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v0, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    :cond_1d
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v1, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValueForSmartScan(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    :cond_1e
    const/16 v0, 0x20e0

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    const-string v1, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x20e7

    if-eqz v1, :cond_1f

    const-wide/16 v3, 0x3

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_7

    :cond_1f
    const-wide/16 v3, 0x4

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_7
    invoke-static {}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->isSupportLandscapeUnlockTipsForIS()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startLandscapeUnlockTipsForIS()V

    goto/16 :goto_f

    :cond_20
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->processSmartScanRegistrationResult()V

    goto/16 :goto_f

    :cond_21
    const/16 v0, -0x6b

    if-ne p2, v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121ae0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :cond_22
    if-eqz p2, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121adf

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_23
    :goto_8
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_24

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_24
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_26

    const-string v0, "lock_screen_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    goto :goto_9

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_26
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_27
    :goto_a
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showIrisErrorPopup(I)V

    goto/16 :goto_f

    :pswitch_8
    if-ne p2, v0, :cond_28

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-eq v0, v1, :cond_28

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto :goto_b

    :cond_28
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_29

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_29
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_b
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    goto/16 :goto_f

    :pswitch_9
    if-ne p2, v2, :cond_4f

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v2, :cond_2a

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->getToastMsgForBiometricsBackUpPassword(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_2a
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showCurrentLockTypeToast()V

    :goto_c
    const-string v2, "setupwizard_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v2, v1, :cond_2d

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_e

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_2d
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_e

    :cond_2e
    const-string v2, "intelligentscan_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v2, v1, :cond_31

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_e

    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_31
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_e

    :cond_32
    const-string v2, "lock_screen_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v2, v1, :cond_37

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_e

    :cond_33
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_34
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_35
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_36
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_37
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_e

    :cond_38
    const-string v2, "intelligentscan_register_external"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v2, v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_e

    :cond_39
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_3a
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_3b
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_3c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_3d
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_e

    :cond_3e
    const-string v2, "intelligentscan_settings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v2, v1, :cond_43

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_e

    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_40
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_41
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_42
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_43
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_e

    :cond_44
    const-string v2, "intelligentscan_settings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v2, v1, :cond_49

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_e

    :cond_45
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_46
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_47
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_48
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_e

    :cond_49
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto :goto_e

    :cond_4a
    const-string v2, "key_intelligentscan_web_signin"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "key_intelligentscan_samsung_account"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "key_intelligentscan_samsung_pass"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "key_intelligentscan_samsung_pay"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_d

    :cond_4b
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "This is wrong case! Couldn\'t be exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_e

    :cond_4c
    :goto_d
    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v2, v1, :cond_4e

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFmmBackupPasswordPopup()V

    :cond_4d
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_e

    :cond_4e
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto :goto_e

    :cond_4f
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Set lockscreen failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_e
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_50
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const-string v0, "SsstSmartScanLockSettings"

    const v1, 0x7f1202b7

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->initSmartScanLockSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "mPreviousStage is null! Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "key_intelligentscan_samsung_account"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "key_intelligentscan_samsung_pay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "intelligentscan_settings_unlock_switch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v3, "intelligentscan_register_external"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v3, "setupwizard_intelligentscan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v3, "intelligentscan_settings_entry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :sswitch_6
    const-string v3, "key_intelligentscan_web_signin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v3, "lock_screen_intelligentscan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "intelligentscan_settings_register"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    const/16 v2, 0x11

    packed-switch v0, :pswitch_data_0

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Wrong previous case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_2

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_2

    :cond_3
    const-string v0, "SsstSmartScanLockSettings"

    const-string v2, "Wrong case!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    if-ne v0, v4, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : All biometrics doesn\'t registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_2

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_6

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_2

    :cond_6
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Wrong case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    if-ne v0, v4, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_2

    :cond_8
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : All biometrics doesn\'t registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_2

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v2, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_9

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_2

    :cond_9
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Wrong Case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    if-ne v0, v4, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_2

    :cond_b
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : All biometrics doesn\'t registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v2, :cond_c

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Wrong case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_2

    :cond_c
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : All biometrics doesn\'t registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v2, :cond_f

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_e

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    goto :goto_2

    :cond_e
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Wrong case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_2

    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mNeedLockConfirm:Z

    if-ne v0, v4, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto :goto_2

    :cond_10
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "startBiometricsDisclaimer() : All biometrics doesn\'t registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsDisclaimer()V

    nop

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a656ecc -> :sswitch_8
        -0x649fc6cb -> :sswitch_7
        -0x2d93cb88 -> :sswitch_6
        -0x2862e87f -> :sswitch_5
        -0x187e0aa3 -> :sswitch_4
        0xe1723dc -> :sswitch_3
        0x44e8709e -> :sswitch_2
        0x45380ab8 -> :sswitch_1
        0x692e5c3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :cond_0
    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "SsstSmartScanLockSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
