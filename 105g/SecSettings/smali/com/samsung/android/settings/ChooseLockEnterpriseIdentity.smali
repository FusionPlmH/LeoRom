.class public Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;
.super Landroid/app/Activity;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;,
        Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
    }
.end annotation


# instance fields
.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

.field private mIsKnoxTwoFactor:Z

.field private mIsPasswordChangeEnforced:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mRequestedQuality:I

.field private mUserId:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsKnoxTwoFactor:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    const/high16 v0, 0x60000

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->handleAuthFail(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsKnoxTwoFactor:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    return v0
.end method

.method private handleAuthFail(I)V
    .locals 8

    const-string v0, "ChooseLockEnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAuthFail:error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v3, "isChangeRequested"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v6

    move v3, v6

    :cond_0
    goto :goto_0

    :cond_1
    const-string v5, "ChooseLockEnterpriseIdentity"

    const-string v6, "ekm is null"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "ChooseLockEnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v4, 0x1

    if-lt v1, v4, :cond_5

    if-gtz v3, :cond_2

    if-eq v1, v4, :cond_3

    :cond_2
    const/4 v5, 0x2

    if-lt v1, v5, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    const-string v5, "ChooseLockEnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pwdChangeEnforceStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ChooseLockEnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pwdChangeTimeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ChooseLockEnterpriseIdentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceWithoutCancel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->scheduleNextPwdChange(II)V

    :cond_5
    iget-boolean v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v4, :cond_8

    const/16 v4, -0xf

    if-eq p1, v4, :cond_6

    const/16 v4, -0x10

    if-ne p1, v4, :cond_7

    :cond_6
    const/16 v0, 0x6b

    :cond_7
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    :cond_8
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    return-void
.end method

.method private handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    const/high16 v4, 0x60000

    invoke-virtual {v0, p2, v1, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;

    iget-wide v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mChallenge:J

    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    move-object v5, v0

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;-><init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;JI)V

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "db_lockscreen_is_smart_lock"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->removeBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "FINGERPRINT_PLUS_STATE"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x10000000

    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v5, v1, v4, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "setPwdChangeRequested"

    invoke-static {v6, v7, v8, v1}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    return-void
.end method

.method private scheduleNextPwdChange(II)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v3, v5, v2, v6, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v6, "setPwdChangeRequested"

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "ChooseLockEnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleNextPwdChange: for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 3

    const-string v0, "ChooseLockEnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    const/4 v3, 0x0

    const v4, 0x7f120db6

    const v5, 0x7f120e4c

    const v6, 0x7f1210ab

    const v7, 0x7f120e91

    const v8, 0x7f1210ac

    const v9, 0x7f1210ad

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v9, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v8, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v2, v1, v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v7, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_5
    return-object v3

    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v12, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v2, v12, :cond_7

    const v2, 0x7f120dbf

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v12, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v2, v12, :cond_8

    const v2, 0x7f120dbe

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_8
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v1, :cond_f

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v2

    move v2, v10

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_e

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_d

    const/16 v4, 0x7f

    if-le v3, v4, :cond_9

    goto :goto_2

    :cond_9
    const/16 v4, 0x30

    if-lt v3, v4, :cond_a

    const/16 v4, 0x39

    if-gt v3, v4, :cond_a

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_a
    const/16 v4, 0x41

    if-lt v3, v4, :cond_b

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_b

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_b
    const/16 v4, 0x61

    if-lt v3, v4, :cond_c

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_c

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v17, v17, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f120db6

    goto :goto_0

    :cond_d
    :goto_2
    const v4, 0x7f120db0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_e
    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_3

    :cond_f
    move/from16 v3, v16

    move/from16 v18, v12

    move v12, v2

    move v2, v15

    move v15, v14

    move v14, v13

    move/from16 v13, v18

    :goto_3
    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    if-ge v12, v4, :cond_10

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100025

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_10
    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    if-ge v13, v4, :cond_11

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100028

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_11
    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    if-ge v14, v4, :cond_12

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100026

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_12
    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    if-ge v2, v4, :cond_13

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10002a

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_13
    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    if-ge v15, v4, :cond_14

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100029

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_14
    iget v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    if-ge v3, v4, :cond_15

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100027

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_15
    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4, v11}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v4

    if-eqz v4, :cond_1c

    :cond_16
    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v0, v9, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_17
    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_18
    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v8, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v4, v1, v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_19
    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1a
    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v6}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1b
    iget-object v4, v0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const v4, 0x7f120db6

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1c
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    const-string v2, "ChooseLockEnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mUserId:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    :cond_0
    const-string v3, "lockscreen.password_type"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    const-string v3, "lockscreen.password_min"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    const-string v3, "lockscreen.password_max"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    const-string v3, "lockscreen.password_min_letters"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    const-string v3, "lockscreen.password_min_uppercase"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    const-string v3, "lockscreen.password_min_lowercase"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    const-string v3, "lockscreen.password_min_numeric"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    const-string v3, "lockscreen.password_min_symbols"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    const-string v3, "lockscreen.password_min_nonletter"

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    const/high16 v7, 0x20000

    if-ne v6, v7, :cond_1

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_0

    :cond_1
    const/4 v6, 0x6

    iput v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    :cond_2
    :goto_0
    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    const-string v3, "challenge"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mChallenge:J

    const-string/jumbo v3, "two_factor"

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsKnoxTwoFactor:Z

    const/4 v3, 0x4

    iget v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-lt v7, v5, :cond_3

    iget v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-ge v7, v8, :cond_3

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v7, v5, :cond_4

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v7, v8, :cond_5

    iget v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    iput v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy_new"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v7, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    iput-boolean v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    :cond_7
    iget v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v7, v5, :cond_8

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    :cond_8
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    const/16 v7, 0x10

    if-le v5, v7, :cond_9

    iput v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    :cond_9
    const/4 v5, 0x0

    new-instance v7, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;

    invoke-direct {v7, p0, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v6

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
