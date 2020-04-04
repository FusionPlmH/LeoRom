.class public Lcom/samsung/android/settings/smartscan/SmartScanSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartScanSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;
.implements Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog$SmartScanTurnOnDialogFragmentListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mIsKeepEnrollSession:Z


# instance fields
.field private mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDisclamierDialog:Landroid/app/AlertDialog;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mIdentifyBiometricAuthentication:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mIsRelativeLink:Z

.field private mIsRunRegister:Z

.field private mIsSearchEntry:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedFmmPopup:Z

.field private mPrevStageForRegiter:Ljava/lang/String;

.field private mRegisterSmartScan:Landroid/support/v7/preference/PreferenceScreen;

.field private mRemoveSmartScan:Landroid/support/v7/preference/PreferenceScreen;

.field private mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

.field private mSamsungAccountObjValue:Z

.field private mScreenState:I

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

.field private mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

.field private mTokenFace:[B

.field private mTokenIris:[B

.field private mUserId:I

.field private mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

.field private mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccountObjValue:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIdentifyBiometricAuthentication:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsMultiWindowModeChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRelativeLink:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsSearchEntry:Z

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mNeedFmmPopup:Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/smartscan/SmartScanSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->resetSmartScanSupportingFeatures()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->updatePreferences()V

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finishSmartScanSettings()V

    :goto_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SsstSmartScanSettings"

    const-string v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f1500d1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSettingsPreference()V

    return-object v0
.end method

.method private deleteSmartScanDialog()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "SsstSmartScanSettings"

    const-string v1, "deleteSmartScanDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2122

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1218de

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1218df

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120518

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanSettings$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v2, 0x1

    return v2
.end method

.method private getSmartScanSAConfirmed()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_samsungaccount_confirmed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartScanSAConfirmed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getSmartScanVerification()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanSupportWebSignIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "intelligentscan_webpass"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    move v0, v1

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartScanVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return v1
.end method

.method private getUseSmartScanSA()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_used_samsungaccount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUseSmartScanSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "SsstSmartScanSettings"

    const-string v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v2, "SsstSmartScanSettings"

    const-string v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private resetSmartScanSupportingFeatures()V
    .locals 3

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "resetSmartScanSupportingFeatures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_samsungaccount_confirmed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "SsstSmartScanSettings"

    const v2, 0x7f1202b7

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previousStage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "identifyBiometricAuth"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIdentifyBiometricAuthentication:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "needIntelligentBiometrics"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hw_auth_token_face"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    if-eqz v1, :cond_0

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister already called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e9

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSmartScanSAConfirmed(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_samsungaccount_confirmed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmartScanSAConfirmed, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSmartScanSettingsPreference()V
    .locals 10

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v3

    const-string v4, "SsstSmartScanSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSmartScanSettingsPreference - isSmartScanEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", hasEnrolledSmartScan : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "key_intelligentscan_register"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    const-string v4, "key_intelligentscan_remove"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRemoveSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    const-string v4, "SsstSmartScanSettings"

    const-string v5, "setSmartScanSettingsPreference : Remove Register SmartScan"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "key_intelligentscan_register"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string v4, "SsstSmartScanSettings"

    const-string v5, "setSmartScanSettingsPreference : Remove Remove SmartScan"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "key_intelligentscan_remove"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->removePreference(Ljava/lang/String;)Z

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "biometrics_backup_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    const-string v6, "key_intelligentscan_password"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    if-nez v5, :cond_3

    if-nez v5, :cond_2

    if-eq v4, v1, :cond_3

    :cond_2
    if-nez v3, :cond_4

    :cond_3
    const-string v6, "key_intelligentscan_password"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->removePreference(Ljava/lang/String;)Z

    const-string v6, "SsstSmartScanSettings"

    const-string v7, "setSmartScanSettingsPreference : Remove Change Backup Password"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v6, "key_intelligentscan_unlock"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    const-string v6, "key_intelligentscan_unlock_when_turns_on"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v6

    const-string v7, "SsstSmartScanSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSmartScanSettingsPreference - isWithoutSwipeToUnlock : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-nez v6, :cond_6

    move v8, v2

    goto :goto_2

    :cond_6
    move v8, v1

    :goto_2
    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    const-string v6, "key_intelligentscan_stay_on_lock_screen"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanStayOnLockScreen(Landroid/content/Context;I)I

    move-result v6

    const-string v7, "SsstSmartScanSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSmartScanStayOnLockScreen - isStayOnLockScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    if-nez v6, :cond_9

    move v8, v2

    goto :goto_4

    :cond_9
    move v8, v1

    :goto_4
    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_5
    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    const-string v6, "key_intelligentscan_web_signin"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanVerification()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.android.app.sbrowser"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanSupportWebSignIn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    const-string v6, "SsstSmartScanSettings"

    const-string v7, "setSmartScanSettingsPreference : Remove the webSignIn"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "key_intelligentscan_web_signin"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->removePreference(Ljava/lang/String;)Z

    :cond_d
    const-string v6, "key_intelligentscan_samsung_account"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "SsstSmartScanSettings"

    const-string v7, "setSmartScanSettingsPreference : Remove the SamsungAccount"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "key_intelligentscan_samsung_account"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->removePreference(Ljava/lang/String;)Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_7

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getUseSmartScanSA()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v6

    if-eqz v6, :cond_f

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    goto :goto_7

    :cond_f
    :try_start_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_7
    const-string v6, "key_intelligentscan_samsung_pass"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_11

    iget v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1218e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120a22

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    :goto_8
    const-string v1, "SsstSmartScanSettings"

    const-string v2, "setSmartScanSettingsPreference : Remove the SamsungPass"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "key_intelligentscan_samsung_pass"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->removePreference(Ljava/lang/String;)Z

    :cond_13
    :goto_9
    const-string v1, "key_intelligentscan_samsung_pay"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->isSmartScanSupportSamsungPay(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "SsstSmartScanSettings"

    const-string v7, "setSmartScanSettingsPreference : Remove SamsungPay"

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "key_intelligentscan_samsung_pay"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->removePreference(Ljava/lang/String;)Z

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private setSmartScanVerification(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isSmartScanSupportWebSignIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_webpass"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartScanVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setUseSmartScanSA(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligentscan_used_samsungaccount"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseSmartScanSA, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showSmartScanDisclaimer()V
    .locals 4

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "startBiometricsDisclaimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromSettingsOption"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityWrapper(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "SsstSmartScanSettings"

    const-string v3, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showSmartScanTurnOnDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    if-nez v0, :cond_0

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "showSmartScanTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "Dialog is already added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog$SmartScanTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChooseLockGeneric_SmartScanTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResultWrapper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityWrapper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityWrapperWithSessionClose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 4

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SsstSmartScanSettings"

    const-string v3, "Exception occured!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method deleteSmartScan()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "deleteSmartScan : has no EnrolledSmartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "SsstSmartScanSettings"

    const-string v2, "deleteSmartScan : getEnrolledFaces is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/bio/face/SemBioFace;

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "SsstSmartScanSettings"

    const-string v1, "deleteSmartScan : BiometricManager is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected finishSmartScanSettings()V
    .locals 2

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "finishSmartScanSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b23

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x20d0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, ""

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====onActivityResult requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPrevStageForRegiter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v1, "SsstSmartScanSettings"

    const-string v2, "FMM Dialog finished!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :sswitch_1
    if-eqz p3, :cond_0

    const-string v4, "hw_auth_token_face"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    const-string v4, "hw_auth_token_iris"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    const-string v4, "previousStage"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    if-eqz v4, :cond_1

    const-string v4, "SsstSmartScanSettings"

    const-string v5, "reset runRegister"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    :cond_1
    if-ne p2, v1, :cond_6

    const-string v1, "key_intelligentscan_web_signin"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SsstSmartScanSettings"

    const-string v2, "previos stage is WebSingin"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanVerification(Z)V

    :cond_2
    const-string v1, "key_intelligentscan_samsung_pay"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SsstSmartScanSettings"

    const-string v2, "intelligent scan registered successfully! Launch the SamsungPay"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.spay"

    const-string v4, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "previousStage"

    const-string v4, "IntelligentScanSettings"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    :cond_3
    const-string v1, "key_intelligentscan_samsung_account"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "SsstSmartScanSettings"

    const-string v2, "SamsungAccountSignedIn is False."

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v4, v2

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "mypackage"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "OSP_VER"

    const-string v8, "OSP_02"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "MODE"

    const-string v8, "ADD_ACCOUNT"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "Is_From_SA_Verify"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, 0x2c0

    invoke-direct {p0, v6, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const-string v3, "SsstSmartScanSettings"

    const-string v5, "returnvalue_sa is not 0"

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "client_id"

    const-string v4, "s5d189ajvs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "client_secret"

    const-string v4, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Is_From_SA_Verify"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2c1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_6
    const-string v1, "SsstSmartScanSettings"

    const-string v2, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    goto/16 :goto_5

    :sswitch_2
    if-ne p2, v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v1, "SsstSmartScanSettings"

    const-string v2, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_3
    if-ne p2, v1, :cond_9

    :try_start_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    goto :goto_5

    :cond_9
    :try_start_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_4
    if-eq p2, v1, :cond_b

    if-ne p2, v3, :cond_a

    goto :goto_3

    :cond_a
    :try_start_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_b
    :goto_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    nop

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2c0 -> :sswitch_4
        0x2c1 -> :sswitch_3
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_1
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mScreenState:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mScreenState:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "SsstSmartScanSettings"

    const v2, 0x7f1202b7

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "identifyBiometricAuth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIdentifyBiometricAuthentication:Z

    const-string v1, "isAfw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsAfw:Z

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    const-string v1, "relative_link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRelativeLink:Z

    const-string v1, "from_search"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsSearchEntry:Z

    const-string v1, "need_fmm_popup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mNeedFmmPopup:Z

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsAfw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsAfw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRelativeLink : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRelativeLink:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsSearchEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsSearchEntry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeepSessionForFmm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mNeedFmmPopup:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "hw_auth_token_face"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    const-string v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    goto :goto_0

    :cond_3
    const-string v1, "SsstSmartScanSettings"

    const-string v2, "args is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsMultiWindowModeChanged:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mScreenState:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setHasOptionsMenu(Z)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->updatePreferences()V

    const/16 v1, 0x2116

    invoke-static {v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1202f6

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    if-eqz v0, :cond_0

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "reset runRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsMultiWindowModeChanged:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    const-string v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "iris postenroll "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_3
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->cancelAndSessionEnd()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2116

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2117

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2118

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->showSmartScanDisclaimer()V

    nop

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1209de

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->cancelAndSessionEnd()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/16 v7, 0x2116

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v10, v11}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x211a

    move-object v10, p2

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    move-wide v3, v5

    nop

    :cond_0
    invoke-static {v7, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "intelligentscan_settings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    return v9

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_4
    :goto_0
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->showSmartScanTurnOnDialog(Z)V

    return v9

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_7
    const-string v2, "intelligentscan_settings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    return v9

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    move-object v10, p2

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v10, v11}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    const/16 v2, 0x211b

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    move-wide v3, v5

    nop

    :cond_a
    invoke-static {v7, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_3

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v8, v9}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanStayOnLockScreen(Landroid/content/Context;ZI)V

    const/16 v2, 0x211c

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    move-wide v3, v5

    nop

    :cond_c
    invoke-static {v7, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_3

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v8, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "key_intelligentscan_web_signin"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    return v9

    :cond_e
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanVerification(Z)V

    goto :goto_3

    :cond_f
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanVerification(Z)V

    goto :goto_3

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    iput-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccountObjValue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v2

    return v2

    :cond_11
    :try_start_0
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccountObjValue:Z

    const-string v2, "SsstSmartScanSettings"

    const-string v3, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    goto :goto_3

    :cond_12
    const-string v2, "SsstSmartScanSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_3
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const-string v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "key_intelligentscan_samsung_pass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "key_intelligentscan_samsung_pay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "key_intelligentscan_register"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "key_intelligentscan_password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "key_intelligentscan_remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v4, 0x2116

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :pswitch_0
    const/16 v2, 0x211d

    invoke-static {v4, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "biometricType"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_1
    const/16 v2, 0x211e

    invoke-static {v4, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SsstSmartScanSettings"

    const-string v3, "There is no registered intelligent scan"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "key_intelligentscan_samsung_pay"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v2, "SsstSmartScanSettings"

    const-string v3, "There is Registered intelligent scan. Launch the SamsungPay"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.spay"

    const-string v4, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "previousStage"

    const-string v4, "IntelligentScanSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-class v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "previousStage"

    const-string v4, "changepassword"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_3
    const/16 v2, 0x2119

    invoke-static {v4, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->deleteSmartScanDialog()Z

    goto :goto_2

    :pswitch_4
    const-string v2, "intelligentscan_settings_register"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    nop

    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71ac5071 -> :sswitch_4
        -0x50bf251a -> :sswitch_3
        0x3d934eee -> :sswitch_2
        0x45380ab8 -> :sswitch_1
        0x61c94c01 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "SsstSmartScanSettings"

    const-string v1, "onResume : isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SsstSmartScanSettings"

    const-string v2, "onResume : Face Enroll session close."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledIrises(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SsstSmartScanSettings"

    const-string v2, "onResume : Iris Enroll session close."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    if-eqz v0, :cond_5

    const-string v0, "SsstSmartScanSettings"

    const-string v2, "onResume : Session closed! Face Token must be null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    if-eqz v0, :cond_6

    const-string v0, "SsstSmartScanSettings"

    const-string v2, "onResume : Session closed! Iris Token must be null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mNeedFmmPopup:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mNeedFmmPopup:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startFmmBackupPasswordPopup()V

    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 8

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "startDisclaimerFromSamsungAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_intelligentscan_samsung_account"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "mypackage"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "OSP_VER"

    const-string v7, "OSP_02"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "MODE"

    const-string v7, "ADD_ACCOUNT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "Is_From_SA_Verify"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v6, 0x2c0

    :try_start_0
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "client_id"

    const-string v3, "s5d189ajvs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "client_secret"

    const-string v3, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Is_From_SA_Verify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x2c1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :goto_1
    return v1
.end method

.method public turnOffSmartScanLock()V
    .locals 2

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "turnOffSmartScanLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public turnOnSmartScanLock()V
    .locals 2

    const-string v0, "SsstSmartScanSettings"

    const-string v1, "turnOnSmartScanLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mStayOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    :goto_0
    :try_start_0
    const-string v0, "intelligentscan_settings_unlock_switch"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finish()V

    goto :goto_2

    :cond_4
    const-string v0, "SsstSmartScanSettings"

    const-string v1, "FaceManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method
