.class public Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static mChooseLockPasswordFragment:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;


# instance fields
.field public MaxLengthFilter:Landroid/text/InputFilter;

.field private cacCardLocked:Z

.field private cacRegistrationComplete:Z

.field private cacRegistrationError:Z

.field private cacRegistrationResult:Ljava/lang/String;

.field clickedEmergencyCall:Z

.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private hasPwdPatternRestriction:Z

.field helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field private isEncrypt:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mCacChosen:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChallengeFace:J

.field private mChallengeIris:J

.field private mCheckSimplePassword:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field mDialog:Landroid/app/ProgressDialog;

.field private mEditablePtr:Ljava/lang/String;

.field private mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEventDetail:I

.field private mFirstPin:Ljava/lang/String;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHeaderLockpasswordPasswordExpired:Ljava/lang/String;

.field private mHeaderLockpasswordPasswordHistory:Ljava/lang/String;

.field private mHeaderPasswordMustNotContainBannedWords:Ljava/lang/String;

.field private mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field private mHideDrawer:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsAlphaMode:Z

.field private mIsEnterpriseUser:Z

.field private mIsPasswordShown:Z

.field private mIsSupportSUWBar:Z

.field private mIsUnlockRecovery:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPassword:Ljava/lang/String;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordHistoryHashFactor:[B

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordShowButton:Landroid/widget/ImageButton;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPwdChangeEnforceStatus:I

.field private mPwdChangeTimeout:I

.field private mRequestedQuality:I

.field private mSUWBottomBar:Landroid/widget/RelativeLayout;

.field private mSUWNextBtn:Landroid/widget/LinearLayout;

.field private mSUWNextBtnImg:Landroid/widget/ImageView;

.field private mSUWNextText:Landroid/widget/TextView;

.field private mSUWPrevBtn:Landroid/widget/LinearLayout;

.field private mSUWPrevBtnImg:Landroid/widget/ImageView;

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSimplePinBtn:Landroid/widget/CheckedTextView;

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field protected mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field protected mUserId:I

.field private tempNdigits:I

.field private tempOptionVal:I

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeIris:J

    iput-wide v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeFace:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    const/high16 v2, 0x20000

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsUnlockRecovery:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEditablePtr:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isEncrypt:Z

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportSUWBar:Z

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$3;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$4;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mH:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->title:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$5;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    sput-object p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockPasswordFragment:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockPasswordFragment:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/samsung/android/settings/lockscreen/LockCustomTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->showSoftInput()V

    return-void
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    const-string v1, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :cond_3
    return v1
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-gt v2, v0, :cond_2

    const-string v4, "0123456789"

    add-int/lit8 v5, v2, 0x4

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9876543210"

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v1, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v1, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    move v0, v1

    :goto_1
    if-gt v0, v2, :cond_5

    const-string v4, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string v1, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v1, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private clearAllIfNotSame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eq p1, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    invoke-virtual {p2}, Ljava/lang/String;->clear()V

    goto :goto_0

    :cond_0
    const-string v0, "ChooseLockPassword"

    const-string v1, "Skip clearing because both are same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private disableStatusBar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

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

.method private executeCacRegistration(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private getAdminUid(Landroid/content/Context;I)I
    .locals 4

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "ChooseLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error fetching admin uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getPasswordHistoryHashFactor()[B
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    return-object v0
.end method

.method private insertSALoggingWhenLockSave()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2900()I

    move-result v0

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$3000()I

    move-result v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2900()I

    move-result v0

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$3100()I

    move-result v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_0
    return-void
.end method

.method private isNdigitsPinEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isSupportNdigitsPinFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isSupportNdigitsPinFeature()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_SUPPORT_SIMPLE_PIN"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    return v2

    :cond_1
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-gtz v1, :cond_4

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$500()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_4
    :goto_0
    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    return v2
.end method

.method private reenableStatusBar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

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

.method private scheduleNextPwdChange(II)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v3, v5, v2, v6, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v5, "ChooseLockPassword"

    const-string v6, "PasswordPolicy is NULL!"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    :goto_0
    return-void
.end method

.method private setVisibilityNdigitsPinMenu()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isSupportNdigitsPinFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showSoftInput()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$400()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$400()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mH:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v1, :cond_0

    const-string v1, "ChooseLockPassword"

    const-string/jumbo v2, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2500()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    if-eqz v1, :cond_a

    iget-wide v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    :cond_2
    iget-wide v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeIris:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2600()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeIris:J

    :cond_4
    iget-wide v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeFace:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2600()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2700()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeFace:J

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeIris:J

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeFace:J

    :cond_9
    nop

    :cond_a
    :goto_1
    iget v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/ucm/UCMUtils;->resetUcmKeyguardSettingsAsUser(I)Z

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v1, v0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const-string v4, "save_and_finish_worker"

    invoke-virtual {v1, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_require_password"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    iget-wide v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeIris:J

    iget-wide v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallengeFace:J

    iget-object v14, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move/from16 v17, v6

    move v6, v1

    move/from16 v16, v3

    invoke-virtual/range {v4 .. v17}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJJJLjava/lang/String;Ljava/lang/String;II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isSupportNdigitsPinFeature()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v3, :cond_c

    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    if-lez v2, :cond_b

    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    iput v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "n_digits_pin_enabled"

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "n_digits_pin_enabled"

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_2
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$900()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2500()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2800()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "ChooseLockPassword"

    const-string v3, "Clear need setup attribute for Workspace user"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$900()I

    move-result v2

    const/high16 v3, 0x20000000

    invoke-static {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->insertSALoggingWhenLockSave()V

    return-void
.end method

.method private updateHeaderText()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f120dc7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isEncrypt:Z

    if-eqz v0, :cond_1

    const v0, 0x7f12154e

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f120dbf

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const v0, 0x7f121551

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateNdigitsPinState()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isNdigitsPinEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    const v3, 0x7f120e4c

    const v4, 0x7f120e91

    const v5, 0x7f1210ac

    const v6, 0x7f1210ad

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_d

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPasswordHistoryHashFactor()[B

    move-result-object v10

    iget v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, v1, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderLockpasswordPasswordHistory:Ljava/lang/String;

    return-object v2

    :cond_0
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "ChooseLockPassword"

    const-string v4, "PasswordPolicy is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Internal Error"

    return-object v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-ge v10, v11, :cond_2

    const v3, 0x7f121551

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v4

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v6, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v4

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v5, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderPasswordMustNotContainBannedWords:Ljava/lang/String;

    return-object v3

    :cond_6
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_7
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderLockpasswordPasswordExpired:Ljava/lang/String;

    return-object v3

    :cond_8
    return-object v7

    :cond_9
    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-eqz v2, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_a

    const v2, 0x7f120dbc

    goto :goto_0

    :cond_a
    const v2, 0x7f121553

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_c

    const v2, 0x7f120db8

    goto :goto_1

    :cond_c
    const v2, 0x7f121552

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_d
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v2

    move v2, v8

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_13

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_12

    const/16 v4, 0x7f

    if-le v3, v4, :cond_e

    goto :goto_4

    :cond_e
    const/16 v4, 0x30

    if-lt v3, v4, :cond_f

    const/16 v4, 0x39

    if-gt v3, v4, :cond_f

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_f
    const/16 v4, 0x41

    if-lt v3, v4, :cond_10

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_10
    const/16 v4, 0x61

    if-lt v3, v4, :cond_11

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_11

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_11
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const v3, 0x7f120e4c

    const v4, 0x7f120e91

    goto :goto_2

    :cond_12
    :goto_4
    const v4, 0x7f120db0

    invoke-virtual {v0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_13
    const/high16 v2, 0x20000

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x30000

    if-eq v2, v3, :cond_22

    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v4, v2, :cond_14

    goto/16 :goto_8

    :cond_14
    const/high16 v2, 0x60000

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v2, v3, :cond_1a

    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v10, v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100025

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_15
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v11, v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100028

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_16
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v12, v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100026

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_17
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v14, v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10002a

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_18
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v13, v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100029

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_19
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v15, v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100027

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1a
    const/high16 v2, 0x70000

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v2, v3, :cond_1d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_1d

    if-gtz v10, :cond_1c

    if-lez v13, :cond_1b

    goto :goto_5

    :cond_1b
    return-object v7

    :cond_1c
    :goto_5
    const v2, 0x7f120d7f

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1d
    const/high16 v2, 0x40000

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v2, v3, :cond_1e

    move v2, v9

    goto :goto_6

    :cond_1e
    move v2, v8

    :goto_6
    const/high16 v3, 0x50000

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v3, v4, :cond_1f

    move v3, v9

    goto :goto_7

    :cond_1f
    move v3, v8

    :goto_7
    if-nez v2, :cond_20

    if-eqz v3, :cond_21

    :cond_20
    if-nez v10, :cond_21

    const v4, 0x7f120db9

    invoke-virtual {v0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_21
    if-eqz v3, :cond_26

    if-nez v11, :cond_26

    const v4, 0x7f120dba

    invoke-virtual {v0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_22
    :goto_8
    if-gtz v10, :cond_23

    if-lez v13, :cond_24

    :cond_23
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-gtz v2, :cond_24

    const v2, 0x7f120dc2

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_24
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v4, v3, :cond_25

    const/4 v3, 0x3

    if-le v2, v3, :cond_25

    const v3, 0x7f120dc3

    invoke-virtual {v0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_25
    nop

    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v3, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateHeaderText()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v3, :cond_29

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_28

    const v2, 0x7f120dbe

    goto :goto_9

    :cond_28
    const v2, 0x7f120dc6

    :goto_9
    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_29
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    return-object v7

    :cond_2a
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPasswordHistoryHashFactor()[B

    move-result-object v3

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;[BI)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_2b

    const v2, 0x7f120db7

    goto :goto_a

    :cond_2b
    const v2, 0x7f120dc4

    :goto_a
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2c
    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_2d

    const-string v3, "ChooseLockPassword"

    const-string v4, "PasswordPolicy is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Internal Error"

    return-object v3

    :cond_2d
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v3

    if-eqz v3, :cond_34

    :cond_2e
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v4

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v6, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2f
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v5, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_30
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f120e91

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_31
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderPasswordMustNotContainBannedWords:Ljava/lang/String;

    return-object v3

    :cond_32
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f120e4c

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_33
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderLockpasswordPasswordExpired:Ljava/lang/String;

    return-object v3

    :cond_34
    return-object v7
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isNdigitsPinEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEditablePtr:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->clearAllIfNotSame(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected getChooseLockHintSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 4

    const-string v0, "ChooseLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPwdPolicy () "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getAdminUid(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy_new"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isNdigitsPinEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, "disableEnterKey=true;"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v5, v2, v3

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v1, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setVisibilityNdigitsPinMenu()V

    goto/16 :goto_5

    :cond_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$600()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$700()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-ne v1, v4, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-ne v1, v4, :cond_6

    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage confirm cac pin failed: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    if-nez v1, :cond_7

    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage confirm cac pin to be executed: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto/16 :goto_4

    :cond_8
    :goto_0
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ChooseLockPassword"

    const-string v2, "Save PIN for AppLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string v1, "ChooseLockPassword"

    const-string v2, "Save Password for AppLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1900()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const-string v1, "ChooseLockPassword"

    const-string v3, "Save PIN for Personalpage"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->PIN:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v3, v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)V

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1300()Z

    move-result v1

    goto :goto_3

    :cond_b
    const-string v1, "ChooseLockPassword"

    const-string v3, "Save Password for Personalpage"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Password:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v3, v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)V

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1300()Z

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d

    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_d
    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_5

    :cond_e
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    :cond_f
    :goto_5
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_10
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "is_smpw_key"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "is_smpw_key"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x10000000

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v1, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v5, "ChooseLockPassword"

    const-string v6, "PasswordPolicy is NULL!"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPassword;

    invoke-static {v0, v2}, Lcom/android/settings/password/ChooseLockPassword;->access$2400(Lcom/android/settings/password/ChooseLockPassword;I)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen-lock enabled : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_4

    const-string v8, "password"

    goto :goto_3

    :cond_4
    const-string v8, "pin"

    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1600()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_4

    :catch_0
    move-exception v0

    const-string v3, "ChooseLockPassword"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-nez p1, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1300()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1200()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1400()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1000()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2700()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2600()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2500()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getChooseLockHintSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v4, "secret_key"

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "set_redaction"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "fromSetupWizard"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2600()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1000()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2700()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1400()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "justPPP"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1600()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "fromSetupWizard"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2600()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1000()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2700()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1400()Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "justPPP"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    const-string v2, ":settings:hide_drawer"

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    :cond_c
    :goto_6
    if-nez p1, :cond_d

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2500()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v4, "trust"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/TrustManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateNdigitsPinState()V

    goto/16 :goto_6

    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v3, 0x7f0804c6

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v3, 0x7f121554

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v3, 0x7f0804c7

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v3, 0x7f12154f

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_6

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto/16 :goto_6

    :sswitch_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eq v0, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "enable_ice_contact_list"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "enable_emergency_medical_info"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    :sswitch_4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1100()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b02f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword;->access$2302(I)I

    goto :goto_3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b02f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword;->access$2302(I)I

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1100()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b02fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword;->access$2302(I)I

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b02f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword;->access$2302(I)I

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getMetricsCategory()I

    move-result v0

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2300()I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v0, v1, :cond_f

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    const/4 v3, 0x2

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v0, v3, :cond_a

    :cond_9
    goto :goto_4

    :cond_a
    move v1, v2

    :goto_4
    move v0, v1

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v4, :cond_d

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v1, :cond_b

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v1, v3, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ChooseLockPassword;

    invoke-static {v1, v2}, Lcom/android/settings/password/ChooseLockPassword;->access$2400(Lcom/android/settings/password/ChooseLockPassword;I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_c
    if-nez v0, :cond_e

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->scheduleNextPwdChange(II)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ChooseLockPassword;

    invoke-static {v1, v2}, Lcom/android/settings/password/ChooseLockPassword;->access$2400(Lcom/android/settings/password/ChooseLockPassword;I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_d
    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_5
    return-void

    :cond_f
    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v3, :cond_10

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->scheduleNextPwdChange(II)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_12

    :cond_11
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPassword;

    invoke-static {v0, v2}, Lcom/android/settings/password/ChooseLockPassword;->access$2400(Lcom/android/settings/password/ChooseLockPassword;I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    nop

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a015a -> :sswitch_4
        0x7f0a02aa -> :sswitch_3
        0x7f0a053b -> :sswitch_2
        0x7f0a05c0 -> :sswitch_1
        0x7f0a063a -> :sswitch_0
        0x7f0a0813 -> :sswitch_2
        0x7f0a0819 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    iput v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v0, v3, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getAdminUid(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "n_digits_pin_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "simple_pin_enabled"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    const-string/jumbo v5, "simple_pin_digits"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    :goto_0
    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    xor-int/2addr v5, v6

    iput-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x2000

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    if-nez v5, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/knox/StreamCipher;->getInstance()Lcom/samsung/android/settings/knox/StreamCipher;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    invoke-virtual {v5}, Lcom/samsung/android/settings/knox/StreamCipher;->issueKeyStream()J

    move-result-wide v7

    const-string v5, "ChooseLockPassword.SDP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate - StreamCipher initialized with handle("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v5, "from_personal"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Lcom/android/settings/password/ChooseLockPassword;->access$602(Z)Z

    const-string v5, "from_applock"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Lcom/android/settings/password/ChooseLockPassword;->access$702(Z)Z

    const-string v5, "fromKnoxKeyguard"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Lcom/android/settings/password/ChooseLockPassword;->access$802(Z)Z

    const-string v5, "knox_userId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/password/ChooseLockPassword;->access$902(I)I

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1000()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getMetricsCategory()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b028e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getMetricsCategory()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b028c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settings/password/ChooseLockPassword;

    if-eqz v5, :cond_21

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/password/ChooseLockPassword;->isChangePwdRequired:Z

    :cond_6
    iput-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    const-string v5, "ChooseLockPassword"

    const-string v7, "mCheckSimplePassword = false"

    invoke-static {v5, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/admin/DevicePolicyManager;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_7

    iput-boolean v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    const-string v5, "ChooseLockPassword"

    const-string v8, "mCheckSimplePassword = true"

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$600()Z

    move-result v5

    const/4 v8, 0x4

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$700()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1200()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1300()Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1400()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "lockscreen.password_type"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const-string v5, "lockscreen.password_min"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const-string v5, "lockscreen.password_max"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const-string v5, "lockscreen.password_min_letters"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    const-string v5, "lockscreen.password_min_uppercase"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    const-string v5, "lockscreen.password_min_lowercase"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    const-string v5, "lockscreen.password_min_numeric"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    const-string v5, "lockscreen.password_min_symbols"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    const-string v5, "lockscreen.password_min_nonletter"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    goto/16 :goto_3

    :cond_9
    const-string v5, "lockscreen.password_type"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const-string v5, "lockscreen.password_min"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const-string v5, "lockscreen.password_max"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const-string v5, "lockscreen.password_min_letters"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    const-string v5, "lockscreen.password_min_uppercase"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    const-string v5, "lockscreen.password_min_lowercase"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    const-string v5, "lockscreen.password_min_numeric"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    const-string v5, "lockscreen.password_min_symbols"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    const-string v5, "lockscreen.password_min_nonletter"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    goto :goto_3

    :cond_a
    :goto_2
    const-string v5, "lockscreen.password_type"

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    :goto_3
    const-string v5, "isRecovery"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Lcom/android/settings/password/ChooseLockPassword;->access$502(Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "fmm_unlock_recovery"

    invoke-static {v5, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    goto :goto_4

    :cond_b
    move v5, v4

    :goto_4
    iput-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsUnlockRecovery:Z

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v9, "is_knox_password_secured"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    goto :goto_5

    :cond_c
    move v5, v4

    :goto_5
    iget-boolean v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v9, :cond_d

    const-string v9, "ChooseLockPassword.SDP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate - Password secured for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_d

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    const-string v10, "lockscreen.password_old"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    invoke-virtual {v11}, Lcom/samsung/android/settings/knox/StreamCipher;->getPublicHandle()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/knox/StreamCipher;->restoreEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    :cond_d
    if-nez v5, :cond_e

    const-string v9, "lockscreen.password_old"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    :cond_e
    const v9, 0x7f1210ab

    invoke-virtual {v0, v9}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderPasswordMustNotContainBannedWords:Ljava/lang/String;

    const v9, 0x7f120db6

    invoke-virtual {v0, v9}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderLockpasswordPasswordExpired:Ljava/lang/String;

    const v9, 0x7f120db5

    invoke-virtual {v0, v9}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderLockpasswordPasswordHistory:Ljava/lang/String;

    const/4 v9, 0x4

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-lt v10, v8, :cond_f

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-ge v10, v11, :cond_f

    goto :goto_6

    :cond_f
    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v8, :cond_10

    iput v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto :goto_6

    :cond_10
    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_11

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    iput-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "statusbar"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/StatusBarManager;

    iput-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    iput-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v10}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v10

    if-nez v10, :cond_12

    const-string v11, "ChooseLockPassword"

    const-string v12, "PasswordPolicy is NULL!"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_12
    invoke-virtual {v10, v6}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    iput-boolean v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    :cond_13
    :goto_7
    const/4 v11, 0x0

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v11

    :cond_14
    iput v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    const-string v12, "isRecovery"

    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Lcom/android/settings/password/ChooseLockPassword;->access$502(Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    iget v13, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-gtz v13, :cond_15

    invoke-virtual {v12, v7}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$500()Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/password/ChooseLockPassword;

    invoke-static {v7, v4}, Lcom/android/settings/password/ChooseLockPassword;->access$1500(Lcom/android/settings/password/ChooseLockPassword;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    :cond_16
    if-eqz v10, :cond_17

    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v7

    iput v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    :cond_17
    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v7, v8, :cond_18

    iput v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    :cond_18
    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/16 v10, 0x10

    if-le v7, v10, :cond_19

    iput v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    :cond_19
    new-instance v7, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, ":settings:hide_drawer"

    invoke-virtual {v7, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    const-string v7, "for_cred_req_boot"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v7}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "extra_require_password"

    invoke-virtual {v10, v11, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    const-string v10, "password"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v7, v6}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setBlocking(Z)V

    invoke-virtual {v7, v0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    iget v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move/from16 v23, v10

    move-object v10, v7

    move/from16 v22, v12

    move/from16 v12, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-virtual/range {v10 .. v23}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJJJLjava/lang/String;Ljava/lang/String;II)V

    :cond_1a
    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-nez v7, :cond_1d

    const-string v7, "choose_cac_pin"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v7

    const/high16 v10, 0x70000

    if-ne v7, v10, :cond_1b

    goto :goto_8

    :cond_1b
    goto :goto_9

    :cond_1c
    :goto_8
    move v4, v6

    :goto_9
    iput-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    :cond_1d
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x2

    iput v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    goto :goto_a

    :cond_1e
    iput v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    goto :goto_a

    :cond_1f
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_20

    iput v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    goto :goto_a

    :cond_20
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_21
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Fragment contained in wrong activity"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0033

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0d0031

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SettingsApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/SettingsApplication;->getKnoxInfo()Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;->hasChooseLockResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "ChooseLockPassword.SDP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy() - Has ChooseLock result? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v4, "null"

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEditablePtr:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEditablePtr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    :cond_6
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    const/4 v2, 0x0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->clear()V

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isNdigitsPinEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_2

    const-string v0, "ChooseLockPassword"

    const-string v1, "Done key has no action because simple pin was enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChooseLockPassword"

    const-string v1, "If knox user, enable multi window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120d50

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f120d4f

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$500()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->disableStatusBar()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :goto_1
    sget-boolean v0, Lcom/android/settings/password/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v2, 0x7f1215db

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :cond_5
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v1, "ChooseLockPassword"

    const-string v2, "PasswordPolicy is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v3, 0x7f0804c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v3, 0x7f121554

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    goto :goto_2

    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v0, :cond_0

    const-string v0, "ChooseLockPassword.SDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState - Secured password required for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    invoke-virtual {v2}, Lcom/samsung/android/settings/knox/StreamCipher;->getPublicHandle()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/knox/StreamCipher;->getEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    invoke-virtual {v3}, Lcom/samsung/android/settings/knox/StreamCipher;->getPublicHandle()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/knox/StreamCipher;->getEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_pin"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "current_password"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_knox_password_secured"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "simple_pin_enabled"

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempOptionVal:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "simple_pin_digits"

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "password_shown"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v4, v5, :cond_0

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v4, v7, :cond_0

    const v4, 0x7f0a02aa

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v4, 0x7f0a015a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$800()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/settings/password/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    const v4, 0x7f0a053b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0115

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mBottomBar:Landroid/widget/LinearLayout;

    const v4, 0x7f0a07fb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a0819

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0818

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWPrevBtnImg:Landroid/widget/ImageView;

    const v4, 0x7f0a0813

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtn:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0814

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextText:Landroid/widget/TextView;

    const v4, 0x7f0a0812

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtnImg:Landroid/widget/ImageView;

    const v4, 0x7f0a0182

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_3

    iput-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportSUWBar:Z

    :cond_3
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportSUWBar:Z

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mBottomBar:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtn:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_4
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    const/high16 v4, 0x40000

    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v4, v7, :cond_6

    const/high16 v4, 0x50000

    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v4, v7, :cond_6

    const/high16 v4, 0x60000

    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v4, v7, :cond_6

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lez v4, :cond_5

    const/high16 v4, 0x70000

    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v4, v7, :cond_5

    const/high16 v4, 0x20000

    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v4, v7, :cond_5

    const/high16 v4, 0x30000

    iget v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v4, v7, :cond_5

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    :goto_0
    move v4, v5

    :goto_1
    iput-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    const v4, 0x7f0a05bc

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v7, 0x2000000

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, "disableToolbar=true;"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, "disableToolbar=true;disableOnBoarding=true;"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_7
    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/4 v7, 0x2

    if-lez v4, :cond_8

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-array v9, v7, [Landroid/text/InputFilter;

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v10, v9, v6

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_8
    new-instance v4, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v4, v8}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v8, 0x7f0a0370

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v8}, Lcom/android/settings/password/ChooseLockPassword;->access$402(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    iget v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const/16 v9, -0x2710

    if-eq v8, v9, :cond_9

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v5

    goto :goto_2

    :cond_9
    move v8, v6

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    const v10, 0x7f0a0377

    if-nez v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-eq v9, v7, :cond_c

    :cond_a
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$600()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$700()Z

    move-result v9

    if-nez v9, :cond_c

    if-nez v8, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-boolean v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_b

    const v12, 0x7f1213ea

    goto :goto_3

    :cond_b
    const v12, 0x7f1213ec

    :goto_3
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v9, v6}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setVisibility(I)V

    :cond_c
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1800()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f121529

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v9, v6}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setVisibility(I)V

    :cond_d
    iget-boolean v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsUnlockRecovery:Z

    if-eqz v9, :cond_e

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->helpText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setVisibility(I)V

    :cond_e
    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_f

    move v11, v9

    goto :goto_4

    :cond_f
    const/16 v11, 0x12

    :goto_4
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setInputType(I)V

    const v10, 0x7f0a05c0

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    if-eqz v10, :cond_13

    iget-boolean v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_10

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_10
    if-eqz v2, :cond_11

    const-string v10, "password_shown"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    :cond_11
    iget-boolean v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    if-eqz v10, :cond_12

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v11, 0x7f0804c7

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v11, 0x7f12154f

    invoke-virtual {v0, v11}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_12
    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v11, 0x7f0804c6

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v11, 0x7f121554

    invoke-virtual {v0, v11}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06004d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const-string v10, "confirm_credentials"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iget-boolean v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v11, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "is_knox_password_secured"

    invoke-virtual {v11, v12, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_14

    move v11, v5

    goto :goto_6

    :cond_14
    move v11, v6

    :goto_6
    iget-boolean v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v12, :cond_15

    const-string v12, "ChooseLockPassword.SDP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onViewCreated - Password secured for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_15

    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    const-string v13, "password"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    invoke-virtual {v14}, Lcom/samsung/android/settings/knox/StreamCipher;->getPublicHandle()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/settings/knox/StreamCipher;->restoreEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    :cond_15
    if-nez v11, :cond_16

    const-string v12, "password"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    :cond_16
    const-string v12, "has_challenge"

    invoke-virtual {v3, v12, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    const-string v12, "ChooseLockPassword"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mHasChallenge : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "challenge"

    const-wide/16 v13, 0x0

    invoke-virtual {v3, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    const-string v12, "ChooseLockPassword"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mChallenge : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_18

    sget-object v12, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v12}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    if-eqz v10, :cond_17

    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/16 v13, 0x3a

    const v14, 0x7f121b0d

    invoke-virtual {v0, v14}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v12, v13, v14, v5, v15}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    :cond_17
    move/from16 v16, v8

    goto/16 :goto_9

    :cond_18
    iget-boolean v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v12, :cond_19

    const-string v12, "is_knox_password_secured"

    invoke-virtual {v2, v12, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_19

    move v12, v5

    goto :goto_7

    :cond_19
    move v12, v6

    :goto_7
    move v11, v12

    iget-boolean v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v12, :cond_1b

    const-string v12, "ChooseLockPassword.SDP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onViewCreated(saved) - Password secured for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_1b

    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    const-string v14, "first_pin"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    move/from16 v16, v8

    invoke-virtual {v15}, Lcom/samsung/android/settings/knox/StreamCipher;->getPublicHandle()J

    move-result-wide v7

    invoke-virtual {v13, v14, v7, v8}, Lcom/samsung/android/settings/knox/StreamCipher;->restoreEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    if-eqz v12, :cond_1a

    invoke-virtual {v12}, Ljava/lang/String;->clear()V

    :cond_1a
    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v7, :cond_1c

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    const-string v8, "current_password"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v13, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStreamCipher:Lcom/samsung/android/settings/knox/StreamCipher;

    invoke-virtual {v13}, Lcom/samsung/android/settings/knox/StreamCipher;->getPublicHandle()J

    move-result-wide v13

    invoke-virtual {v7, v8, v13, v14}, Lcom/samsung/android/settings/knox/StreamCipher;->restoreEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    goto :goto_8

    :cond_1b
    move/from16 v16, v8

    :cond_1c
    :goto_8
    if-nez v11, :cond_1d

    const-string v7, "first_pin"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    :cond_1d
    const-string/jumbo v7, "ui_stage"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-static {v7}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v8}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_1e
    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v8, :cond_1f

    const-string v8, "current_password"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v12, "save_and_finish_worker"

    invoke-virtual {v8, v12}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iput-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    :goto_9
    const v7, 0x7f0a063a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    iput-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    if-eqz v7, :cond_20

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v7, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isNdigitsPinEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120ef3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120e03

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v8, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    const/4 v12, 0x5

    invoke-virtual {v8, v12}, Landroid/widget/CheckedTextView;->setTextDirection(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setVisibilityNdigitsPinMenu()V

    :cond_20
    instance-of v7, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v7, :cond_2a

    move-object v7, v4

    check-cast v7, Lcom/android/settings/SettingsActivity;

    iget-boolean v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    const v12, 0x7f12154a

    const v13, 0x7f121548

    if-eqz v8, :cond_21

    iget v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const/16 v14, 0x64

    if-ge v8, v14, :cond_21

    iget-object v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v14, 0x7f121547

    invoke-virtual {v8, v14}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    const v8, 0x7f121547

    goto :goto_a

    :cond_21
    iget-boolean v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_22

    move v8, v13

    goto :goto_a

    :cond_22
    move v8, v12

    :goto_a
    iget-boolean v14, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v14, :cond_23

    move v12, v13

    nop

    :cond_23
    move v8, v12

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$600()Z

    move-result v12

    if-nez v12, :cond_24

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1300()Z

    move-result v12

    if-eqz v12, :cond_26

    :cond_24
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1900()Z

    move-result v12

    if-eqz v12, :cond_25

    const v12, 0x7f1215e7

    goto :goto_b

    :cond_25
    const v12, 0x7f1215e3

    :goto_b
    move v8, v12

    :cond_26
    invoke-virtual {v0, v8}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->title:Ljava/lang/CharSequence;

    iget v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1400()Z

    move-result v12

    if-nez v12, :cond_29

    iget-boolean v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_28

    iget v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    if-eqz v12, :cond_27

    const v12, 0x7f12166b

    invoke-virtual {v0, v12}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->title:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_27
    const v12, 0x7f12152a

    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    iget v15, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v14, v15}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->title:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_28
    const v12, 0x7f12152c

    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    iget v15, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v14, v15}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->title:Ljava/lang/CharSequence;

    :cond_29
    :goto_c
    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2b

    goto :goto_d

    :cond_2b
    move v5, v6

    :goto_d
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1600()Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2d

    const/16 v6, 0xf

    if-nez v5, :cond_2c

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    goto :goto_e

    :cond_2c
    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    :goto_e
    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f0601bb

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_2d
    return-void
.end method

.method public setEnableNextButtonImage(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportSUWBar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setEnableNextButtonImage(Z)V

    return-void
.end method

.method protected setNextText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportSUWBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected updateUi()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v5, v2, :cond_7

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v5, v2, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v6, v7, :cond_4

    if-nez v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$500()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setClickable(Z)V

    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_d

    if-lez v4, :cond_d

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v5, :cond_8

    const-string v1, "ChooseLockPassword"

    const-string v5, "CAC registration not locked enable next: "

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v2, v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_8
    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v4, v5, :cond_a

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-nez v5, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_a

    const-string v5, ""

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v6, :cond_9

    const v6, 0x7f120dbf

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    goto :goto_4

    :cond_9
    const v6, 0x7f120dc7

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :goto_4
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto/16 :goto_a

    :cond_a
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_5

    :cond_b
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v6, 0x7f120dc8

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    :cond_c
    :goto_5
    goto/16 :goto_a

    :cond_d
    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v5, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_e

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-ne v5, v2, :cond_e

    const-string v5, "ChooseLockPassword"

    const-string v6, "CAC registration error back to Select: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v6, v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->cacNumeric:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :goto_6
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    goto :goto_9

    :cond_f
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v5, v6, :cond_11

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_10

    goto :goto_7

    :cond_10
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateHeaderText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    :goto_7
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v6, v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    goto :goto_8

    :cond_12
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v6, v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    :goto_8
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :goto_9
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isNdigitsPinEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v0, :cond_13

    if-lez v4, :cond_13

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->tempNdigits:I

    if-lt v4, v5, :cond_13

    move v1, v2

    nop

    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_a

    :cond_14
    if-eqz v0, :cond_15

    if-lez v4, :cond_15

    move v1, v2

    nop

    :cond_15
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    :goto_a
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsEnterpriseUser:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->clearAllIfNotSame(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method
