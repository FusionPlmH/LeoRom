.class public Lcom/samsung/android/settings/face/FaceLockSettings;
.super Landroid/app/Activity;
.source "FaceLockSettings.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFromSetupwizard:Z

.field private mHasEnrolledFaces:Z

.field private mIdentifyFace:Z

.field private mIrisLockEnabled:Z

.field private mIsAfw:Z

.field private mIsRelativeLink:Z

.field private mIsSearchEntry:Z

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mSmartScanLockEnabled:Z

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsRelativeLink:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSearchEntry:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/face/FaceLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/face/FaceLockSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$376(Lcom/samsung/android/settings/face/FaceLockSettings;I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/face/FaceLockSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/face/FaceLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    return-void
.end method

.method private checkOhterBiometricsLockEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

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

    const-string v0, "FcstFaceLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSessionAndFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "closeSessionAndFinish : Keep the Face session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "closeSessionAndFinish : Close Face Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "closeSessionAndFinish : fniish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->finish()V

    :goto_1
    return-void
.end method

.method private fromFaceSettings(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "key_face_settings_entry"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "FaceSettings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FaceSettings_register"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private initFaceLockSettings()V
    .locals 5

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    const-string v1, "fromSetupwizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string/jumbo v1, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    :cond_0
    const-string v1, "identifyFace"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    const-string v1, "relative_link"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsRelativeLink:Z

    const-string v1, "from_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSearchEntry:Z

    const-string v1, "FcstFaceLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviousStage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FcstFaceLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRelativeLink : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsRelativeLink:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FcstFaceLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSearchEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSearchEntry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FcstFaceLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromSetupwizard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    :cond_4
    const-string v2, "FcstFaceLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHasEnrolledFaces : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    :cond_5
    const-string v2, "FcstFaceLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIrisLockEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIrisLockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    :cond_6
    const-string v2, "FcstFaceLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSmartScanLockEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mSmartScanLockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private launchChooseLock()V
    .locals 5

    const-string v0, "FcstFaceLockSettings"

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

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "challenge"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lock_screen_face"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "screen_lock_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "key_face_settings_entry"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FaceSettings_register"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FaceSettings_unlock_switch"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "settings_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const-string v1, "lock_screen_face"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIdentifyFace:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x11

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FcstFaceLockSettings"

    const-string v4, "Activity Not Found !"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 9

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "launchConfirmLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_1

    const-string v1, "FcstFaceLockSettings"

    const-string v2, "launchConfirmLock : preEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    :cond_1
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    move v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "FcstFaceLockSettings"

    const-string v3, "Fail launchConfirmationActivity!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_2
    return-void
.end method

.method private processFaceRegistrationResult(I)V
    .locals 5

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "processFaceRegistrationResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    const-string v0, "face_register_external"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "face_register_external"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceUsefulFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceUsefulFeature()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_6
    const-string v0, "key_face_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_7
    const-string v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceUsefulFeature()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    :cond_a
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_b
    const-string v0, "key_face_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_c
    const-string v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_f
    const-string v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

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
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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

    const-string v3, "FcstFaceLockSettings"

    const-string/jumbo v4, "showCurrentLockTypeToast undefined lock type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v2, 0x7f1209c2

    goto :goto_0

    :cond_2
    const v2, 0x7f1209c4

    goto :goto_0

    :cond_3
    const v2, 0x7f1209c3

    nop

    :goto_0
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method private showFaceRetryDialog()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "showFaceRetryDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12095c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120959

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120958

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/FaceLockSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/face/FaceLockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsDisclaimer()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x11

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startBiometricsUnlockType()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsUnlockType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x11

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsUnlockType : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    const-string v2, "key_face_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startFaceRegister(Z)V
    .locals 7

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "There is no enrolled face. Run startFaceRegister!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209dd

    new-array v1, v1, [Ljava/lang/Object;

    const v4, 0x7f120b6e

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1209ba

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/face/FaceLockSettings$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/FaceLockSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1209d8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    nop

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.bio.face.service"

    const-string v4, "com.samsung.android.bio.face.service.enroll.FaceEnrollActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "face_enroll_retry"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "fromSetupwizard"

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    const/16 v4, 0x11

    :try_start_0
    iput v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v4, 0x3ec

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "FcstFaceLockSettings"

    const-string v6, "runRegister : Activity Not Found !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private startFaceSettings(Landroid/content/Context;)V
    .locals 6

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    if-nez v0, :cond_0

    const-string v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "startFragment : context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, ":settings:fragment_args_key"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v2, :cond_1

    const-string/jumbo v2, "tokenFromLock"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    const-string v2, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "hw_auth_token"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsRelativeLink:Z

    if-eqz v3, :cond_2

    const-string v3, "FcstFaceLockSettings"

    const-string v4, "from relative link"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$FaceSettingsActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "relative_link"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, ":settings:top_level_tile_id"

    const-string v4, "biometrics_and_security_settings"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/samsung/android/settings/face/FaceSettings;

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

    :goto_0
    return-void
.end method

.method private startFaceUsefulFeature()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Run startFaceUsefulFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.face.FaceUsefulFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x11

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startFaceUsefulFeature : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startFasterRecognition()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Run FasterRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.face.FaceFasterRecognition"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x11

    :try_start_0
    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startFasterRecognition : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startRedactionInterstitial()V
    .locals 3

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startRedactionInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fromSetupWizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "FcstFaceLockSettings"

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

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const-string/jumbo v0, "setupwizard_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    if-eqz p3, :cond_5

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "intent is not null! Copy the token to result_intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_3

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2

    const-string v0, "hw_auth_token_face"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    goto :goto_1

    :cond_2
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_3
    const-string v0, "FcstFaceLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: tokenFace="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

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
    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "default : Not consider this case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_6
    const-string v0, "key_face_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_7
    const-string v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :pswitch_1
    if-ne p2, v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_5

    :cond_a
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5

    :cond_b
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceUsefulFeature()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceUsefulFeature()V

    goto/16 :goto_5

    :cond_d
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_e
    const-string v0, "key_face_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/face/FaceLockSettings;->processFaceRegistrationResult(I)V

    goto/16 :goto_5

    :pswitch_4
    if-ne p2, v0, :cond_10

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "start chooseLockGeneric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_5

    :cond_10
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :pswitch_5
    const/4 v1, -0x2

    if-ne p2, v1, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceRetryDialog()V

    goto/16 :goto_5

    :cond_11
    const/16 v1, 0x20e0

    invoke-static {v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    const-string/jumbo v2, "setupwizard_face"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x20e7

    if-eqz v2, :cond_12

    const-wide/16 v5, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_3

    :cond_12
    const-wide/16 v5, 0x2

    invoke-static {v1, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_3
    if-ne p2, v0, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceStayOnLockScreen(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v0, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v3, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    :cond_13
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceFasterRecognition()Z

    move-result v1

    if-eqz v1, :cond_14

    if-ne p2, v0, :cond_14

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {p0, v3, v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFaceUsefulFeature()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFasterRecognition()V

    goto/16 :goto_5

    :cond_14
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/face/FaceLockSettings;->processFaceRegistrationResult(I)V

    goto/16 :goto_5

    :pswitch_6
    if-ne p2, v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_5

    :cond_15
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :pswitch_7
    if-ne p2, v3, :cond_31

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->getToastMsgForBiometricsBackUpPassword(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    :goto_4
    const-string/jumbo v1, "setupwizard_face"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_5

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_19
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_1a
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5

    :cond_1b
    const-string v1, "key_face_settings_entry"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_1e
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5

    :cond_1f
    const-string v1, "lock_screen_face"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_5

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startRedactionInterstitial()V

    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_23
    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5

    :cond_24
    const-string v1, "face_register_external"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_5

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_26
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_27
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_5

    :cond_28
    const-string v1, "FaceSettings_unlock_switch"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v2, "previousStage"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsUnlockType()V

    goto/16 :goto_5

    :cond_29
    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_2a
    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_5

    :cond_2b
    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto :goto_5

    :cond_2c
    const-string v1, "FaceSettings_register"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->checkOhterBiometricsLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsUnlockType()V

    goto :goto_5

    :cond_2d
    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_5

    :cond_2e
    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_5

    :cond_2f
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V

    goto :goto_5

    :cond_30
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "This is wrong case! Couldn\'t be exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_5

    :cond_31
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Set lockscreen failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    nop

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const-string v0, "FcstFaceLockSettings"

    const v1, 0x7f1202b1

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->initFaceLockSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "mPreviousStage is null! Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "face_register_external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "setupwizard_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "FaceSettings_register"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "lock_screen_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "key_face_settings_entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    goto :goto_0

    :sswitch_5
    const-string v2, "FaceSettings_unlock_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_1

    :cond_3
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Wrong Case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer() : no enrolled face"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_1

    :cond_6
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Wrong Case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_1

    :cond_8
    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer() : no enrolled face"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_1

    :cond_9
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Wrong Case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_1

    :cond_b
    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer() : no enrolled face"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v0, :cond_c

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Wrong Case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_c
    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer() : no enrolled face"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_e

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_1

    :cond_e
    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Wrong case! Face and digital lock already exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_1

    :cond_10
    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer() : no enrolled face"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsDisclaimer()V

    nop

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7defbfb0 -> :sswitch_5
        -0x68750668 -> :sswitch_4
        0x189ed3c -> :sswitch_3
        0x25783a42 -> :sswitch_2
        0x2c243a14 -> :sswitch_1
        0x7fc7f085 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
