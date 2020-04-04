.class public Lcom/samsung/android/settings/iris/IrisLockSettings;
.super Landroid/app/Activity;
.source "IrisLockSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mDisplayKnoxName:Ljava/lang/String;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mFromIrisFeature:Z

.field private mFromIrisSettings:Z

.field private mFromIrisUnlock:Z

.field private mFromOutside:Z

.field private mFromSetupWizard:Z

.field private mIntent:Landroid/content/Intent;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsEnterpriseIdentityLock:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsFromSecureFolder:Z

.field private mIsFromSharedDevice:Z

.field private mIsKnoxLockPasswordScreen:Z

.field private mIsKnoxManage:Z

.field private mKeepTokenIris:Z

.field private mKnoxUserId:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mRequestCode:I

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mShowFmmPopup:Z

.field private mTokenFace:[B

.field private mTokenIris:[B

.field private mTurnOffTransition:Z

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenFace:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mShowFmmPopup:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$1;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/iris/IrisLockSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(IZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/iris/IrisLockSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private afterProcessIrisEnrollResultOk(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_7

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsEnterpriseIdentityLock:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    goto/16 :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisLockSettingsActivity()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startRedactionInterstitial()V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisUnlock:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisFeature:Z

    if-nez v2, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisLockSettingsActivity()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mShowFmmPopup:Z

    :cond_a
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "show_fmm_popup"

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mShowFmmPopup:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "IrisLockSettings"

    const-string v4, "IRIS_REGISTER_REQUEST RESULT_OK -1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void
.end method

.method private static getIrisUserId(I)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return p0
.end method

.method private initLockSettings()V
    .locals 4

    const-string v0, "IrisLockSettings"

    const-string v1, "initIrisLockSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    const-string v0, "lock_screen_iris"

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mUserPassword:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "is_knox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "fromOutSide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "is_knox_two_step"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "is_secure_folder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "isFromSharedDevice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "displayKnoxName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "keep_token"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepTokenIris:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "from_irisSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "from_IrisUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisUnlock:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "from_IrisFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisFeature:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "knox_userId"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "isKnoxManage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    const-string v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[knox user id ] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[previousStage] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    :cond_1
    const-string v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KNOX IRIS] : init, was secure? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayKnoxName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsEnterpriseIdentityLock:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "iris_settings"

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private isFirstEnroll()I
    .locals 3

    const-string v0, "iris_setting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "isFirstIrisEnroll"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private launchBioAuth()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "for_iris_authentication"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x6a

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchChooseLock()V
    .locals 5

    const-string v0, "IrisLockSettings"

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

    const-string v1, "challenge"

    iget-wide v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "for_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "lock_screen_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "screen_lock_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "iris_settings"

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "settings_bio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IrisLockSettings"

    const-string v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 10

    const-string v0, "IrisLockSettings"

    const-string v1, "launchConfirmLock "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    nop

    const v0, 0x7f120c0b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v7, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    iget v9, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    const/16 v3, 0x63

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IrisLockSettings"

    const-string v1, "ConfirmLock Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private launchConfirmLockForKnox()V
    .locals 9

    const-string v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchConfirmLockForKnox : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", has Token ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-eqz v0, :cond_1

    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x69

    const v0, 0x7f120c0b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mChallenge:J

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IrisLockSettings"

    const-string v2, "Fail launchConfirmationActivity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private launchIrisSettings()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "relative_link"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    if-nez v3, :cond_6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v4, "tokenFromLock"

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepTokenIris:Z

    :cond_1
    const-string v4, "IrisLockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passing correct knox user id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ":settings:fragment_args_key"

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "show_fmm_popup"

    iget-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mShowFmmPopup:Z

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "android.intent.extra.USER_ID"

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "fromSearch"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    const-string v6, "iris_samsung_pay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    const-string v6, "iris_samsung_pass"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "IrisLockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startFragment subMenuSearch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v2, :cond_5

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$IrisSettingsActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "relative_link"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v4, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v5, Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    const v5, 0x7f1202b6

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    const/16 v5, 0x2347

    invoke-virtual {v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_6
    :goto_0
    return-void
.end method

.method private saveFirstEnroll()V
    .locals 4

    const-string v0, "iris_setting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isFirstIrisEnroll"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setIrisLockSetting()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIrisUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x10

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :goto_0
    return-void
.end method

.method private showCurrentLockTypeToast()V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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

    goto :goto_0

    :cond_1
    const v2, 0x7f1209c8

    goto :goto_0

    :cond_2
    const v2, 0x7f1209ca

    goto :goto_0

    :cond_3
    const v2, 0x7f1209c9

    :goto_0
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method private showErrorPopup(I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    const/16 v2, -0x9

    const v3, 0x7f120bf9

    if-eq p1, v2, :cond_1

    const/4 v2, -0x6

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f120c04

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

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

    new-instance v4, Lcom/samsung/android/settings/iris/IrisLockSettings$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$2;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/iris/IrisLockSettings$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$3;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/iris/IrisLockSettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$4;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/iris/IrisLockSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/iris/IrisLockSettings$5;-><init>(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startBiometricsLockSetup()V
    .locals 4

    const-string v0, "IrisLockSettings"

    const-string v1, "startBiometricsLockSetup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v1, :cond_0

    const-string v1, "fromSetupwizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "is_knox"

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x6b

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "IrisLockSettings"

    const-string v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    :goto_0
    return-void
.end method

.method private startIrisDisclaimerActivity()V
    .locals 3

    :try_start_0
    const-string v0, "com.samsung.android.settings.iris.SecSetupIrisDisclaimerActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startIrisLockSettingsActivity()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_2

    :cond_3
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.settings.biometrics.BiometricsUnlockType"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "BIOMETRICS_LOCK_TYPE"

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "knox_userId"

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method private startIrisRegister(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(IZ)V

    return-void
.end method

.method private startIrisRegister(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-nez v0, :cond_0

    const-string v0, "IrisLockSettings"

    const-string v1, "Token is null !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->isFirstEnroll()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisDisclaimerActivity()V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.iris"

    const-string v2, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const-string v1, "iris_enroll_retry"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string v1, "fromSetupwizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startRedactionInterstitial()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromSetupWizard:Z

    if-eqz v1, :cond_0

    const-string v1, "fromSetupWizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mRequestCode:I

    const-string v4, "IrisLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult : requestCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " resultCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const-string v4, "IrisLockSettings"

    const-string v5, "intent data is not null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    if-nez v4, :cond_0

    const-string v4, "hw_auth_token_iris"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTokenIris:[B

    :cond_0
    const/16 v4, 0x6f

    const v6, 0x7f121ae0

    const/4 v7, -0x7

    const/4 v8, -0x6

    const/4 v9, -0x4

    const/4 v10, -0x3

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eq v1, v4, :cond_2a

    const/16 v4, 0x2717

    if-eq v1, v4, :cond_26

    const/16 v4, 0x10e

    const/16 v14, 0x65

    const/16 v15, 0x66

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_0
    if-ne v2, v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->saveFirstEnroll()V

    invoke-direct {v0, v15}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :pswitch_1
    if-ne v2, v13, :cond_7

    iget v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "register_iris_request_from_chooselock"

    iget-object v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {v0, v15}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_5

    :cond_2
    invoke-direct {v0, v14}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_5

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_5

    :cond_4
    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    xor-int/2addr v4, v5

    iget-object v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    const-string v5, "register_iris_request_from_chooselock"

    iget-object v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {v0, v15}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_0

    :cond_5
    invoke-direct {v0, v14}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    :goto_0
    goto/16 :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :pswitch_2
    if-ne v2, v13, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :pswitch_3
    if-ne v2, v13, :cond_c

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    iput-boolean v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_a
    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :cond_b
    invoke-direct {v0, v14}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :pswitch_4
    if-ne v2, v5, :cond_e

    iget v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "isFromKnoxSetDigitalLock"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto/16 :goto_5

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :pswitch_5
    if-nez v2, :cond_10

    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    if-eqz v4, :cond_f

    const-string v4, "IrisLockSettings"

    const-string v5, "Set iris lock for SD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->afterProcessIrisEnrollResultOk(I)V

    const/4 v4, 0x4

    invoke-static {v0, v5, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    goto/16 :goto_5

    :cond_10
    if-ne v2, v11, :cond_11

    invoke-direct {v0, v11}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_5

    :cond_11
    if-ne v2, v10, :cond_12

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_5

    :cond_12
    if-ne v2, v9, :cond_13

    invoke-direct {v0, v9}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_5

    :cond_13
    if-ne v2, v8, :cond_14

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_5

    :cond_14
    const/16 v4, -0x9

    if-ne v2, v4, :cond_15

    invoke-direct {v0, v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto/16 :goto_5

    :cond_15
    if-ne v2, v7, :cond_16

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_16
    if-eq v2, v13, :cond_17

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f121adf

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_17
    :goto_1
    const-string v4, "IrisLockSettings"

    const-string v5, "RESULT_CANCELED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :pswitch_6
    if-ne v2, v5, :cond_22

    const-string v6, "lock_screen_iris"

    iget-object v7, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "iris_settings"

    iget-object v7, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    :cond_18
    iget v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    iput-boolean v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxLockPasswordScreen:Z

    :cond_1a
    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    const-string v4, "lock_screen_iris"

    iget-object v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mWasSecureBefore:Z

    if-nez v4, :cond_1b

    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-nez v4, :cond_1b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1b
    const-string v4, "iris_settings"

    iget-object v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    :cond_1c
    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    iput-boolean v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepTokenIris:Z

    :cond_1d
    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromIrisSettings:Z

    if-eqz v4, :cond_1e

    iput-boolean v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mShowFmmPopup:Z

    :cond_1e
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "show_fmm_popup"

    iget-boolean v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mShowFmmPopup:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v13, v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :cond_1f
    const-string v4, "iris_settings"

    iget-object v6, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    if-eqz v4, :cond_20

    invoke-direct {v0, v15}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_2

    :cond_20
    iput-boolean v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mShowFmmPopup:Z

    invoke-direct {v0, v14}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto :goto_2

    :cond_21
    invoke-direct {v0, v15}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showCurrentLockTypeToast()V

    goto/16 :goto_5

    :cond_22
    const-string v4, "IrisLockSettings"

    const-string v5, "Set lockscreen failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :pswitch_7
    if-eqz v2, :cond_25

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_23

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v5, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchIrisSettings()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :cond_23
    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSecureFolder:Z

    if-eqz v4, :cond_24

    invoke-direct {v0, v15}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_5

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_5

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_5

    :cond_26
    if-ne v2, v13, :cond_28

    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v4, :cond_27

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    goto :goto_3

    :cond_27
    iget-boolean v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v4, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    goto :goto_3

    :cond_28
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    :cond_29
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_5

    :cond_2a
    if-nez v2, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto :goto_5

    :cond_2b
    if-ne v2, v11, :cond_2c

    invoke-direct {v0, v11}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto :goto_5

    :cond_2c
    if-ne v2, v10, :cond_2d

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto :goto_5

    :cond_2d
    if-ne v2, v9, :cond_2e

    invoke-direct {v0, v9}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto :goto_5

    :cond_2e
    if-ne v2, v8, :cond_2f

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/iris/IrisLockSettings;->showErrorPopup(I)V

    goto :goto_5

    :cond_2f
    if-ne v2, v7, :cond_30

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_30
    if-eq v2, v13, :cond_31

    iget-object v4, v0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f121adf

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_31
    :goto_4
    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    nop

    :cond_32
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x68
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "IrisLockSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->key:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->initLockSettings()V

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "IrisLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreviousStage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x18b8af2

    const/4 v5, -0x1

    if-eq v3, v4, :cond_7

    const v4, 0x2eab25b7

    if-eq v3, v4, :cond_6

    const v4, 0x6a8c5ecf

    if-eq v3, v4, :cond_5

    const v4, 0x6c25a67f

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "register_iris_request"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    const-string v3, "iris_settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_6
    const-string v3, "register_iris_request_from_chooselock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    const-string v3, "lock_screen_iris"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setIrisLockSetting()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    goto/16 :goto_4

    :cond_a
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startIrisRegister(I)V

    goto/16 :goto_4

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_c

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-nez v3, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchChooseLock()V

    goto/16 :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_4

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-ne v3, v2, :cond_d

    const-string v2, "IrisLockSettings"

    const-string v3, "launching confirm lock"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isFromKnoxSetDigitalLock"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto :goto_3

    :cond_d
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "for_iris_authentication"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "is_knox"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "is_knox_two_step"

    iget-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    goto :goto_3

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isFromKnoxSetDigitalLock"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto :goto_3

    :cond_f
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsKnoxManage:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchBioAuth()V

    goto :goto_3

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    :goto_3
    goto/16 :goto_4

    :cond_11
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLockForKnox()V

    goto :goto_4

    :cond_12
    const-string v0, "IrisLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFromSharedDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIsFromSharedDevice:Z

    if-eqz v0, :cond_13

    const-string v0, "IrisLockSettings"

    const-string v1, "SD Iris case, launching confirm lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "iris_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto :goto_4

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mFromOutside:Z

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchBioAuth()V

    goto :goto_4

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    goto :goto_4

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKnoxUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->launchConfirmLock()V

    goto :goto_4

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->startBiometricsLockSetup()V

    nop

    :goto_4
    return-void

    :cond_18
    :goto_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "IrisLockSettings"

    const-string v3, "onCreate() : isDesktopMode is TRUE."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1202b8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f1202b6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_19
    const-string v0, "IrisLockSettings"

    const-string v2, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1209de

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mKeepTokenIris:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_0
    const-string v0, "IrisLockSettings"

    const-string v1, "onDestory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mTurnOffTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    :cond_0
    return-void
.end method
