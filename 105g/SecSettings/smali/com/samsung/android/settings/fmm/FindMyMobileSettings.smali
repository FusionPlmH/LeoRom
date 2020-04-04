.class public Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static chkboxFlag:Z

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescriptionText:Landroid/widget/TextView;

.field private mFirstLogin:Z

.field private mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

.field private mHasFMMDMClient:Z

.field private mHasSamsungAccount:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupportLMM:Z

.field private mLastLocationObserver:Landroid/database/ContentObserver;

.field private mLinkBtnClickListener:Landroid/view/View$OnClickListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mReactivationLockObserver:Landroid/database/ContentObserver;

.field private mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccount:Landroid/accounts/Account;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

.field private mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mURL:Ljava/lang/String;

.field private mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

.field private mUnlockRecoveryObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$19;

    invoke-direct {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$19;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$20;

    invoke-direct {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$20;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecoveryObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLinkBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->onCancelPressed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isSupportSendLastLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkReactivationLock()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReactivationLock Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private static isSupportSendLastLocation(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const v1, 0x25ad14a0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.fmm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v0
.end method

.method private moveToFMMActivity(Z)V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "login_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "login_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ko"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_0
    const-string v5, "FindMyMobileSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDomestic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "isDomestic"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v5, "switch_state"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "com.samsung.android.fmm"

    const-string v6, "com.sec.dsm.system.FMMAgreement"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "FindMyMobileSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSendLastLocation change : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "login_state"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3eb

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private moveToLoginPage(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onCancelPressed()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private setDescriptionText()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1209ac

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_1

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1209ae

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const v1, 0x7f1209ad

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showReactivationLockDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120d48

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120d47

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12077a

    new-instance v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120475

    new-instance v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showReactivationLockDisableDialog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    :cond_0
    const v0, 0x7f120745

    const v1, 0x7f120747

    const-string v2, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f120746

    const v1, 0x7f120748

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12077a

    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$15;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120475

    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$14;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$14;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showSetNewPasswordDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1217d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1217d3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f120475

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f120adf

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FindMyMobileSettings"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateAccountInformation()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_1

    aget-object v2, v1, v3

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f120a64

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f0d0251

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    :goto_1
    return-void
.end method

.method private updateSimChangeAlert()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "change_alert"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121a13

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121a12

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1176

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0197

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a084d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mDescriptionText:Landroid/widget/TextView;

    const v2, 0x7f0a046e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "http://findmymobile.samsung.cn"

    goto :goto_0

    :cond_0
    const-string v3, "https://findmymobile.samsung.com"

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLinkBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "login_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "FindMyMobileSettings"

    const-string v4, "RemoteControlRequestCode complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x1179

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.remotecontrol_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.fmm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "FindMyMobileSettings"

    const-string v5, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/16 v3, 0x3ea

    if-ne p1, v3, :cond_1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "login_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToFMMActivity(Z)V

    :cond_1
    const/16 v3, 0x3eb

    if-ne p1, v3, :cond_4

    if-ne p2, v0, :cond_2

    const-string v3, "FindMyMobileSettings"

    const-string v4, "FMMAgreement RESULT_OK"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "switch_state"

    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "send_last_location"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    if-eqz p3, :cond_3

    const-string v3, "login_state"

    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "login_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const-string v3, "FindMyMobileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMMAgreement : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "login_state"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_7

    if-ne p2, v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v3

    const-string v4, "FindMyMobileSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reactivation lock is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_my_mobile"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.reactivationlock_on"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.fmm"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "FindMyMobileSettings"

    const-string v6, " onActivityResult[reactivationlock_on]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_my_mobile"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.reactivationlock_off"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.fmm"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "FindMyMobileSettings"

    const-string v6, " onActivityResult[reactivationlock_off]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_0
    goto :goto_1

    :cond_6
    const-string v3, "FindMyMobileSettings"

    const-string v4, "Reactivation lock onActivityResult is not RESULT_OK!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    const/16 v3, 0x7d2

    if-ne p1, v3, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->setUnlockRecoveryFeature(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_9
    :goto_2
    const/16 v3, 0x7d3

    if-ne p1, v3, :cond_b

    if-ne p2, v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->setUnlockRecoveryFeature(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->getFmmDialogIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityWrapper(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "login_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_b
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "samsung_account"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const-string v0, "remote_controls"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "google_location_service"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v0, "sim_change_alert"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "reactivation_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "send_last_location"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v0, "unlock_recovery"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f120b92

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f120b91

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FindMyMobileSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasSAPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v5, "com.osp.app.signin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "FindMyMobileSettings"

    const-string v4, "No Package name for account type com.osp.app.signin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    new-instance v2, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070585

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/SecPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->seslSetRoundedBg(I)V

    goto :goto_4

    :cond_3
    const-string v1, "samsung_account"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecoveryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "login_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-string v0, "FindMyMobileSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "login_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "login_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1179

    if-eqz v0, :cond_3

    const-string v4, "CHM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CHU"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CTC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    sget-boolean v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v4

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.remotecontrol_on"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.fmm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "FindMyMobileSettings"

    const-string v5, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v3

    invoke-static {v3, v5, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "remote_control"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.remotecontrol_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.fmm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "FindMyMobileSettings"

    const-string v5, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_4
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    goto/16 :goto_4

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v5, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x117a

    invoke-static {v3, v4, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToFMMActivity(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x117c

    invoke-static {v3, v4, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_4

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iput-boolean v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V

    const/4 v1, 0x0

    :goto_2
    const-string v3, "FindMyMobileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReactivationLock state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->getFmmDialogIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v3

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showSetNewPasswordDialog()V

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->setUnlockRecoveryFeature(Landroid/content/Context;Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_3

    :cond_d
    const/16 v4, 0x7d3

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v4

    const/16 v5, 0x117d

    invoke-static {v4, v5, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_e
    :goto_4
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1178

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "samsung_signin"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "login_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1177

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const v5, 0x7f1204b2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const v5, 0x7f1204ae

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v3, 0x7f120d47

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "remote_control"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_my_mobile"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_my_mobile"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_my_mobile"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "send_last_location"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->getUnlockRecoveryFeature(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "network"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-nez v0, :cond_6

    const-string v0, "reactivation_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-nez v0, :cond_7

    const-string v0, "google_location_service"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "remote_controls"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "sim_change_alert"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "send_last_location"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.gms"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "google_location_service"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.mt"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string/jumbo v0, "sim_change_alert"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    :cond_a
    const-string v0, "USC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "sim_change_alert"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "sim_change_alert"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isSupportSendLastLocation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "send_last_location"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)Z

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.osp.app.signin"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateAccountInformation()V

    :cond_e
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "samsung_signin"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isBlocked3PSettings(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samsung_signin"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "login_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_5
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->getUnlockRecoveryFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecovery:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_10
    iput-boolean v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->setDescriptionText()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v5, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "remote_control"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_my_mobile"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "send_last_location"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fmm_unlock_recovery"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mUnlockRecoveryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d020c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$16;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1205ce

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$17;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-void
.end method
