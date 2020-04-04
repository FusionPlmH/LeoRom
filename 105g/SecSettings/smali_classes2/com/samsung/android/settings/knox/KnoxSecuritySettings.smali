.class public Lcom/samsung/android/settings/knox/KnoxSecuritySettings;
.super Landroid/app/Activity;
.source "KnoxSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static enableOneLock:Z

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private static mProfileChallengeUserId:I


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v0, -0x2710

    sput v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic access$100()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->enableOneLock:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->launchConfirmProfileLockForUnifyUncompliantLocks()V

    return-void
.end method

.method private chooseLockType(Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "confirm_credentials"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x84

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x83

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private isCallingFromKnox()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    const v0, 0x7f120caa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->launchConfirmProfileLockForUnification()V

    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    const v0, 0x7f120cab

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    sget v2, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/4 v3, 0x1

    const/16 v4, 0x81

    invoke-virtual {v1, v4, v0, v3, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyLocksForUCM(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyLocks()V

    :cond_1
    :goto_0
    return-void
.end method

.method private launchConfirmProfileLockForUnifyUncompliantLocks()V
    .locals 5

    const v0, 0x7f120cab

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    sget v2, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyUncompliantLocks()V

    :cond_0
    return-void
.end method

.method private resetCurrentLockStatus()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    return-void
.end method

.method private unUnifyLocks()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->chooseLockType(Z)V

    return-void
.end method

.method private unifyLocks()V
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->resetCurrentLockStatus()V

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void
.end method

.method private unifyLocksForUCM(Z)V
    .locals 2

    const-string v0, "SecuritySettings"

    const-string v1, "unifyLocksForUCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->resetCurrentLockStatus()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    :cond_0
    return-void
.end method

.method private unifyUncompliantLocks()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_one_lock_ongoing"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->resetCurrentLockStatus()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const-string v3, "CHANGE_LOCK_TYPE"

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->insertStatusLogForKnox(Landroid/content/Context;ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->enableOneLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unUnifyLocks()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    goto :goto_2

    :cond_0
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->launchConfirmProfileLockForUnification()V

    goto :goto_2

    :cond_1
    const/16 v0, 0x81

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyLocksForUCM(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyLocks()V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    goto :goto_2

    :cond_3
    const/16 v0, 0x83

    if-eq p1, v0, :cond_5

    const/16 v3, 0x84

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x85

    if-ne p1, v0, :cond_8

    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unifyUncompliantLocks()V

    goto :goto_2

    :cond_5
    :goto_1
    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enable_one_lock_ongoing"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->isCallingFromKnox()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enableOneLock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->enableOneLock:Z

    const-string v0, "sq76"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProfileChallengeUserId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sq76"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableOneLock : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->enableOneLock:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->enableOneLock:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v3, 0x10000

    if-lt v0, v3, :cond_1

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxProfileActivePasswordSufficientForParent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "onelock_dialog"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    if-eqz v0, :cond_4

    const v0, 0x7f120caa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/16 v4, 0x82

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->unUnifyLocks()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->finish()V

    :cond_4
    :goto_2
    return-void
.end method
