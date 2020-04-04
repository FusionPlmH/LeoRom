.class public Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxChooseLockTwoFactorFragment"
.end annotation


# static fields
.field private static mChooseLockRequestCode:I

.field private static mCurrentLockTypeIdx:I

.field private static mKnoxChooseLockTwoFactorFragment:Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

.field private static sUserId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private buttomButtonLayout:Landroid/widget/LinearLayout;

.field protected content:Landroid/widget/LinearLayout;

.field private layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private mChallenge:J

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableStatusBarCount:I

.field private mFingerDisabledByEDM:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasChallenge:Z

.field private mIdentifyDialog:Landroid/app/Dialog;

.field private mIrisDisabledByEDM:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field mIsEnforcedMultifactorNReset:Z

.field private mIsSecondStep:Z

.field private mIsSecured:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultifactorAuthEnforced:Z

.field private mNewPassword:Ljava/lang/String;

.field private mNewPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPin:Lcom/android/settingslib/RestrictedPreference;

.field private mRequirePassword:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

.field private mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

.field private mToken:[B

.field private mTokenIris:[B

.field private mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    sput v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerDisabledByEDM:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisDisabledByEDM:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequirePassword:Z

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mHasChallenge:Z

    sput-object p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mKnoxChooseLockTwoFactorFragment:Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mKnoxChooseLockTwoFactorFragment:Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return v0
.end method

.method private checkPasswordForSDPUnlock()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPassword:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPassword:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;-><init>(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPatternForSDPUnlock()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPattern:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPattern:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;-><init>(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private disableStatusBar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

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
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

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

.method private getCurrentLockTypeToString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    sget v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const v2, 0x7f121ae7

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v3, "current locktype index is wrong"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121ae9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121aeb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121ad3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIntentForUnlockMethod(I)Landroid/content/Intent;
    .locals 17

    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v8, v11, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getEnterpriseIdentityIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v10

    goto/16 :goto_0

    :cond_0
    const/high16 v0, 0x20000

    const/4 v12, 0x1

    if-lt v9, v0, :cond_6

    const/high16 v13, 0x60000

    if-gt v9, v13, :cond_6

    iget-object v0, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v1, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    move v15, v0

    iget-object v0, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v16

    iget-boolean v5, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequirePassword:Z

    iget-object v6, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    iget v7, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    move-object v0, v8

    move-object v1, v11

    move v2, v9

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v0, "knox_userId"

    iget v1, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "is_knox_two_step"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-ne v9, v13, :cond_5

    iget-object v0, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v1

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v3

    iget-object v4, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v4

    iget-object v5, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v5

    iget-object v6, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v14}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    add-int v7, v0, v1

    if-le v7, v5, :cond_2

    add-int v5, v0, v1

    const-string v7, "lockscreen.password_min_nonletter"

    invoke-virtual {v10, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    add-int v7, v3, v4

    if-le v7, v2, :cond_3

    add-int v2, v3, v4

    :cond_3
    add-int v7, v5, v2

    if-le v7, v6, :cond_4

    add-int v6, v5, v2

    const-string v7, "lockscreen.password_min"

    invoke-virtual {v10, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const-string v7, "lockscreen.password_min_uppercase"

    invoke-virtual {v10, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "lockscreen.password_min_lowercase"

    invoke-virtual {v10, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "lockscreen.password_min_symbols"

    invoke-virtual {v10, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "lockscreen.password_min_numeric"

    invoke-virtual {v10, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "lockscreen.password_min_letters"

    invoke-virtual {v10, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    goto :goto_0

    :cond_6
    const/high16 v0, 0x10000

    if-ne v9, v0, :cond_7

    iget-boolean v0, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequirePassword:Z

    iget-object v1, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    iget v2, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v8, v11, v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v0, "knox_userId"

    iget v1, v8, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "is_knox_two_step"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    :goto_0
    const/16 v0, 0x2774

    sput v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    return-object v10
.end method

.method private hasEnrolledFingerprint(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasEnrolledIrises(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBiometricDisabled()V
    .locals 8

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    new-array v5, v1, [Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    move-object v1, v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v6, "isBiometricAuthenticationEnabledAsUser"

    invoke-static {v4, v5, v6, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const-string v5, "KnoxChooseLockTwoFactor"

    const-string v6, "isBiometricAuthenticationEnabled(FINGERPRINT) == Utils.EDM_FALSE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerDisabledByEDM:Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v7, "isBiometricAuthenticationEnabledAsUser"

    invoke-static {v5, v6, v7, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string v5, "KnoxChooseLockTwoFactor"

    const-string v6, "isBiometricAuthenticationEnabled(IRIS) == Utils.EDM_FALSE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisDisabledByEDM:Z

    :cond_2
    return-void
.end method

.method private isSwitchedBioLocktype()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private launchLockType()I
    .locals 4

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "launchLockType() called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x10000

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x30000

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x20000

    if-gt v1, v2, :cond_3

    const/high16 v0, 0x20000

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    const/high16 v0, 0x60000

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v3, 0x60000

    if-gt v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v3, 0x40000

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x30000

    if-gt v1, v2, :cond_3

    const/high16 v0, 0x40000

    :cond_3
    :goto_0
    const-string v1, "KnoxChooseLockTwoFactor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchLockType() : quality = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBiometricsLock()V
    .locals 6

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    const/16 v3, 0x10

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v4, v3, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v4, v3, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_3
    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v4, v3, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_4
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/16 v3, 0x1000

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_5
    return-void
.end method

.method private setEnterpriseIdentityPolicy(I)V
    .locals 25

    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v13

    move-object v12, v13

    if-eqz v13, :cond_0

    invoke-virtual {v12}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v13

    move v5, v13

    invoke-virtual {v12}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v13

    move v6, v13

    invoke-virtual {v12}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    :cond_0
    if-nez v11, :cond_1

    const-string v13, "com.sec.android.service.singlesignon"

    move-object v11, v13

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v13

    move-object v4, v13

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4, v11}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v7, 0x1

    :cond_3
    iget v13, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget v14, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v13, v14}, Lcom/samsung/android/settings/knox/KnoxUtils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    :goto_0
    sget-object v14, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v14

    move v9, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager;

    move-object/from16 v17, v0

    const v0, 0x7fffffff

    invoke-virtual {v15, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object/from16 v18, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v20, v19

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v10, 0x1

    const-string v2, "KnoxChooseLockTwoFactor"

    move-object/from16 v23, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthAppRunningBehind: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    nop

    move-object/from16 v0, v21

    move-object/from16 v2, v22

    move/from16 v3, p1

    goto :goto_1

    :cond_6
    move-object/from16 v21, v0

    goto :goto_2

    :cond_7
    move-object/from16 v21, v0

    move-object/from16 v18, v2

    :goto_2
    iget v0, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isPremiumContainer(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v0, v16

    const-string v2, "KnoxChooseLockTwoFactor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeEnterpriseIdentity: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_a

    if-nez v0, :cond_a

    iget-object v2, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v2, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v2, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_a
    if-nez v6, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_c
    :goto_5
    goto :goto_6

    :cond_d
    move-object/from16 v17, v0

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v2, "ekm is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    goto :goto_7

    :catch_0
    move-exception v0

    const-string v2, "KnoxChooseLockTwoFactor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method private setPasswordEnabledByPolicy(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x0

    const/high16 v3, 0x30000

    if-gt p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    nop

    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const/high16 v3, 0x10000

    if-gt p1, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method private showFirstStep()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    const v2, 0x7f120c6f

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "buttomButtonLayout != null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_9
    const v1, 0x7f121aee

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return-void
.end method

.method private showSecondStep()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->isBiometricDisabled()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f120c72

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v4, 0x7f120c71

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v5, 0x7f120c70

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    const v5, 0x7f120c77

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const v4, 0x7f121915

    const v5, 0x7f121ad2

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerDisabledByEDM:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisDisabledByEDM:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_a

    const-string v3, "KnoxChooseLockTwoFactor"

    const-string v4, "buttomButtonLayout != null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    const v2, 0x7f121aef

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return-void
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;[B)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previousStage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "fromKnoxKeyguard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "is_knox_two_step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "onlyIdentify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x2717

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startIrisLockSettings()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.REGISTER_IRIS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previousStage"

    const-string v2, "lock_screen_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_knox_two_step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hw_auth_token_iris"

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "knox_userId"

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x2718

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V
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
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getEnterpriseIdentityIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "two_factor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordQuality(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordLengthRange(II)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mHasChallenge:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChallenge:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setChallenge(J)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPassword(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mHasChallenge:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChallenge:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setChallenge(J)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPattern(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FingerPlusActivity] onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x2774

    if-ne p1, v3, :cond_c

    const-string v3, "KnoxChooseLockTwoFactor"

    const-string v4, "requestCode == REQUEST_TWO_FACTOR_SET_FIRST"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v1, :cond_a

    const-string v2, "KnoxChooseLockTwoFactor"

    const-string v3, "resultCode == Activity.RESULT_FIRST_USER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    :cond_0
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v2, "two factor : REMOVE"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    const-string v0, "hw_auth_token_iris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    :try_start_0
    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPattern:Ljava/util/List;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewPassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "KnoxChooseLockTwoFactor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    if-ne p2, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "mFingerprintManager.requestUpdateSID called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->requestUpdateSID([B)Z

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "mIrisManager.requestUpdateSID called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->requestUpdateSID([B)Z

    :cond_6
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x10000

    if-eq v1, v3, :cond_9

    const/high16 v3, 0x20000

    if-eq v1, v3, :cond_8

    const/high16 v3, 0x30000

    if-eq v1, v3, :cond_8

    const/high16 v3, 0x40000

    if-eq v1, v3, :cond_7

    const/high16 v3, 0x50000

    if-eq v1, v3, :cond_7

    const/high16 v3, 0x60000

    if-eq v1, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x4

    goto :goto_3

    :cond_8
    const/4 v2, 0x3

    goto :goto_3

    :cond_9
    const/4 v2, 0x2

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const-string v5, "CHANGE_LOCK_TYPE"

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->insertStatusLogForKnox(Landroid/content/Context;ILjava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSecondStep()V

    goto/16 :goto_6

    :cond_a
    if-ne p2, v2, :cond_b

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "resultCode == Activity.RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_b
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "requestCode == else"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_c
    const/16 v3, 0x2718

    const v4, 0x7f121915

    if-ne p1, v3, :cond_f

    const-string v3, "KnoxChooseLockTwoFactor"

    const-string v5, "[Two Factor] iris by switch"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_d

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    goto/16 :goto_6

    :cond_f
    const/16 v3, 0x2717

    if-ne p1, v3, :cond_12

    const-string v3, "KnoxChooseLockTwoFactor"

    const-string v5, "[Two Factor] finger by switch"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_10

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_11
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    goto :goto_6

    :cond_12
    const/16 v1, 0x2719

    if-ne p1, v1, :cond_13

    if-ne p2, v2, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_13
    const/16 v1, 0x271e

    if-ne p1, v1, :cond_14

    if-ne p2, v2, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_14
    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "[Two Factor] else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_15
    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v0, :cond_4

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v3, "onClick : Later button"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->setPwdChangeRequested(Landroid/content/Context;II)V

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkPatternForSDPUnlock()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkPasswordForSDPUnlock()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->finish()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-ne p1, v0, :cond_9

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v3, "onClick : Next button"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_7

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-eqz v0, :cond_6

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkPatternForSDPUnlock()V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkPasswordForSDPUnlock()V

    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setBiometricsLock()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startRedactionInterstitial()V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150063

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "pref_lock_password"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "pref_lock_pin"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "pref_lock_pattern"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "switch_fingerprint"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "switch_iris"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefIris:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "pref_lock_enterprise_identity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefEnterpriseIdentity:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "pref_two_factor_description"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c96

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c97

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "fromKnoxKeyguard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnterpriseIdentityPolicy(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hw_auth_token_iris"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTokenIris:[B

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "has_challenge"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mHasChallenge:Z

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "challenge"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChallenge:J

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showFirstStep()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0d01d3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v2, "add buttom button"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->buttomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->enableStatusBar()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "switch_fingerprint"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string v3, "knox_fingerprint_entry"

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startFingerprintLockSettings(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    goto :goto_1

    :cond_2
    const-string v2, "switch_iris"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "switch_iris"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledIrises(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startIrisLockSettings()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : clicked : onPreferenceClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "pref_lock_password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    goto :goto_0

    :cond_1
    const-string v2, "pref_lock_pin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    sput v2, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    goto :goto_0

    :cond_2
    const-string v2, "pref_lock_pattern"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    sput v2, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    goto :goto_0

    :cond_3
    const-string v2, "pref_lock_enterprise_identity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    sput v2, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()I

    move-result v2

    const/4 v3, -0x1

    sput v3, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5

    sget v4, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mChooseLockRequestCode:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return v1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setPasswordEnabledByPolicy(I)V

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnterpriseIdentityPolicy(I)V

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->disableStatusBar()V

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0451

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->content:Landroid/widget/LinearLayout;

    const v1, 0x7f0a074a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnablePrevButton()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    return-void
.end method

.method public setEnableNextButton()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez v0, :cond_0

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "next button cannot be null ! : return"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->isSwitchedBioLocktype()Z

    move-result v0

    const-string v1, "KnoxChooseLockTwoFactor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setEnablePrevButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez v0, :cond_0

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "prev button cannot be null ! : return"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-eqz v0, :cond_1

    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "MultifactorAuthEnforced : disable later button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method
