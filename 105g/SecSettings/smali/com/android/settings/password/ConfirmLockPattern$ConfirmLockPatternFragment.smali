.class public Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings/password/CredentialCheckResultTracker$Listener;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static mConfirmLockPatternFragment:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

.field private static mIsDisplayFinger:Z

.field private static sUserId:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private external:Z

.field private hasChallenge:Z

.field private isShowBackUpPinButton:Z

.field private knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBackUpPinButton:Landroid/widget/Button;

.field private mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

.field private mChallenge:J

.field private mChallengeFace:J

.field private mChallengeIris:J

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field private mDisableStatusBarCount:I

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mFingerPrintBottom:Landroid/widget/RelativeLayout;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIsEnterpriseUser:Z

.field private mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

.field private mLeftSpacerLandscape:Landroid/view/View;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNeedToChangeFaceIntent:Z

.field private mNumWrongConfirmAttempts:I

.field private mPatternToString:Ljava/lang/String;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckFace:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckIris:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mRightSpacerLandscape:Landroid/view/View;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUnlockRecovery:Z

.field private mUserId:I

.field private mUsingFingerprint:Z

.field private mUsingIris:Z

.field private mUsingSmartScan:Z

.field private uiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsDisplayFinger:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const-string v0, "ConfirmLockPatternFragment"

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPatternToString:Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableStatusBarCount:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->isShowBackUpPinButton:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNeedToChangeFaceIntent:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->hasChallenge:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUnlockRecovery:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    iput-wide v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeIris:J

    iput-wide v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeFace:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsEnterpriseUser:Z

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    sput-object p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmLockPatternFragment:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmLockPatternFragment:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->sUserId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheckFace:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheckFace:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheckIris:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheckIris:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPatternToString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeFace:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeFace:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNeedToChangeFaceIntent:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNeedToChangeFaceIntent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeIris:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeIris:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$2204(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/password/ConfirmLockPattern$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/samsung/android/settings/lockscreen/LockCustomTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateAttemptLockoutDesc(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->hasChallenge:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private disableStatusBar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableStatusBarCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enableStatusBar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableStatusBarCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableStatusBarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    :goto_1
    aget-object v6, v1, v3

    array-length v6, v6

    if-ge v5, v6, :cond_1

    aget-object v6, v1, v3

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    aget-object v4, v1, v2

    array-length v4, v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    move v4, v2

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move v6, v2

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    aget-object v7, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v3
.end method

.method private getDefaultDetails()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->isStrongAuthRequired()Z

    move-result v0

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern;->access$500()Z

    move-result v1

    const v2, 0x7f120dd4

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, 0x7f121558

    goto :goto_0

    :cond_1
    const v1, 0x7f120d9b

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f121669

    return v1

    :cond_4
    return v2
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v8, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$6;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$6;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v8}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic lambda$startDisappearAnimation$0(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPattern;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern;->overridePendingTransition(II)V

    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->reportSuccessfulAttempt()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUnlockRecovery:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsEnterpriseUser:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPatternToString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConfirmLockPatternFragment"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->checkForPendingIntent()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "iris_confirm_credential_fail_count"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_3
    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-eq p3, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->checkNumberOfAttempts()V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->isSFMaxAttempts()Z

    move-result v1

    if-nez v1, :cond_6

    if-lez p3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->refreshLockScreen()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    const-string v2, "ConfirmLockPatternFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deadline from LockPatternUtils.setLockoutAttemptDeadline = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_7
    if-lez p3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->refreshLockScreen()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    const-string v2, "ConfirmLockPatternFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deadline from LockPatternUtils.setLockoutAttemptDeadline = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    :goto_1
    if-eqz p5, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->reportFailedAttempt()V

    :cond_9
    :goto_2
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPattern;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$ConfirmLockPatternFragment$5mgp_p2Jjy9apKG7HsLV4Zu-sXo;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$ConfirmLockPatternFragment$5mgp_p2Jjy9apKG7HsLV4Zu-sXo;-><init>(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private updateAttemptLockoutDesc(I)V
    .locals 6

    div-int/lit8 v0, p1, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v3, 0x7f121560

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p1, 0x3c

    if-nez v0, :cond_1

    if-le p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v3, 0x7f121561

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    div-int/lit8 v0, p1, 0x3c

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v3, 0x7f12155e

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    div-int/lit8 v0, p1, 0x3c

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v3, 0x7f12155f

    new-array v4, v2, [Ljava/lang/Object;

    div-int/lit8 v5, p1, 0x3c

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v3, 0x7f12155d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateConfirmCredentialDetailsTextRes()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f120d9f

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    if-eqz v0, :cond_2

    const v0, 0x7f120da0

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    if-eqz v0, :cond_3

    const v0, 0x7f120da2

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    if-eqz v0, :cond_4

    const v0, 0x7f120da1

    return v0

    :cond_4
    const v0, 0x7f120dd4

    return v0
.end method

.method private updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V
    .locals 7

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPattern;->access$602(Lcom/android/settings/password/ConfirmLockPattern$Stage;)Lcom/android/settings/password/ConfirmLockPattern$Stage;

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$password$ConfirmLockPattern$Stage:[I

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern;->access$600()Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern;->access$500()Z

    move-result v0

    const v1, 0x7f120dd5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v3, 0x7f1215e0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->isSFAttemptDefaultFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v3, 0x7f121527

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f120d9c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateErrorMessage(I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    nop

    :goto_4
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected applyWorkProfileStyle()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x1010435

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x10301f0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setTextColor(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x10301f7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->external:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected authenticationSucceeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/LockPatternView$CellState;

    iget-object v12, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    move v15, v3

    goto :goto_0

    :cond_0
    nop

    move v15, v4

    :goto_0
    if-eqz p7, :cond_1

    move/from16 v16, p6

    goto :goto_1

    :cond_1
    nop

    move/from16 v16, v4

    :goto_1
    if-eqz p7, :cond_2

    move/from16 v17, v4

    goto :goto_2

    :cond_2
    move/from16 v17, p6

    :goto_2
    if-eqz p7, :cond_3

    move/from16 v18, v4

    goto :goto_3

    :cond_3
    move/from16 v18, v3

    :goto_3
    const/high16 v19, 0x3f800000    # 1.0f

    move-object v13, v2

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    invoke-virtual/range {v12 .. v25}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method

.method protected getLastTryErrorMessage(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized user type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f12153d

    return v0

    :pswitch_1
    const v0, 0x7f12153c

    return v0

    :pswitch_2
    const v0, 0x7f12153b

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFromKnoxSetDigitalLock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_personal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern;->access$502(Z)Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsEnterpriseUser:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "unlock_recovery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUnlockRecovery:Z

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->uiModeManager:Landroid/app/UiModeManager;

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    sput v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->sUserId:I

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->hasChallenge:Z

    const-string v0, "ConfirmLockPatternFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChallenge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->hasChallenge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v6, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->external:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const v6, 0x7f0d0156

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v6, 0x7f0d0155

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_0
    const v6, 0x7f0a0370

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v6, 0x7f0a023e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v6, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v7, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v7

    const-string v8, "ConfirmLockPatternFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProfile :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isKnox :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " fromExternal :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->external:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    if-nez v7, :cond_2

    iget-boolean v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->external:Z

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const v8, 0x7f0a048c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView;

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const v8, 0x7f0a045d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    const v8, 0x7f0a0685

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    const v8, 0x7f0a06d4

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerPrintBottom:Landroid/widget/RelativeLayout;

    const v8, 0x7f0a00b3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->uiModeManager:Landroid/app/UiModeManager;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v8}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06033e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const/high16 v11, -0x10000

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/widget/LockPatternView;->setPatternColor(III)V

    :cond_3
    const v8, 0x7f0a0884

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    if-eqz v4, :cond_4

    const-string v9, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    const-string v9, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    :cond_4
    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v10, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    or-int/2addr v5, v9

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern;->access$500()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v10, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_1

    :cond_6
    iget v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    :goto_1
    invoke-virtual {v10, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_7
    :goto_2
    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    sget-object v5, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {v0, v5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_8

    const-string v5, "ConfirmLockPatternFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deadline from LockPatternUtils.getLockoutAttemptDeadline = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v9, v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v5, v11

    invoke-direct {v0, v5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateAttemptLockoutDesc(I)V

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v5

    const-string/jumbo v11, "uiStage"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    aget-object v5, v5, v11

    invoke-direct {v0, v5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    const-string v5, "num_wrong_attempts"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    const-string v11, "backup_pin_btn_visibility"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern;->access$500()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v5

    if-nez v5, :cond_b

    iget-boolean v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFrp:Z

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    :cond_b
    :goto_3
    new-instance v5, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-wide/16 v13, 0xdc

    const v16, 0x3fa66666    # 1.3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v15, 0x10c000e

    invoke-static {v11, v15}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v17

    move-object v11, v5

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct/range {v11 .. v17}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v5, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-wide/16 v20, 0x7d

    const/high16 v22, 0x40800000    # 4.0f

    const v23, 0x3e99999a    # 0.3f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x10c000f

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v24

    new-instance v11, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v11, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    move-object/from16 v18, v5

    move-object/from16 v25, v11

    invoke-direct/range {v18 .. v25}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v11, "check_lock_result"

    invoke-virtual {v5, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v5, :cond_c

    new-instance v5, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v5}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    iget-object v11, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const-string v12, "check_lock_result"

    invoke-virtual {v5, v11, v12}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_d

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0601bb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v5, v11}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_d
    return-object v3
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsEnterpriseUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPatternToString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPatternToString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    :cond_0
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateConfirmCredentialDetailsTextRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerPrintBottom:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerPrintBottom:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    const v0, 0x7f12155a

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onIrisVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateConfirmCredentialDetailsTextRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    const v0, 0x7f12155a

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120d50

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->enableStatusBar()V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f120d50

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const-string v0, "ConfirmLockPatternFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deadline from LockPatternUtils.getLockoutAttemptDeadline = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->disableStatusBar()V

    :cond_4
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    sput v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->sUserId:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern;->access$600()Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_0
    const-string/jumbo v0, "uiStage"

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern;->access$600()Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "backup_pin_btn_visibility"

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onShowDefault()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :goto_0
    return-void
.end method

.method protected onShowError()V
    .locals 0

    return-void
.end method

.method public onSmartScanVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateConfirmCredentialDetailsTextRes()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f120d9e

    :goto_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    const v1, 0x7f12155a

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsDisplayFinger:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public startEnterAnimation()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    return-void
.end method
