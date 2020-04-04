.class public Lcom/samsung/android/settings/smartscan/SmartScanEntry;
.super Landroid/app/Activity;
.source "SmartScanEntry.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field public static isSearchEntry:Z

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mBioRegisteredType:I

.field private mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIdentifyBiometricAuthentication:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsAfw:Z

.field private mIsRelativeLink:Z

.field private mIsWaitingResult:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mTokenFace:[B

.field private mTokenIris:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->isSearchEntry:Z

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenFace:[B

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenIris:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIdentifyBiometricAuthentication:Z

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsRelativeLink:Z

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private authenticateSmartScan()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "for_intelligentscan_authentication"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    sget v3, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x68

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->overridePendingTransition(II)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SsstSmartScanEntry"

    const-string v2, "authenticateSmartScan : Activity Not Found !"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    :goto_0
    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 10

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "launchConfirmLock "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    const/16 v3, 0x65

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v9, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    move-wide v7, v0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SsstSmartScanEntry"

    const-string v4, "ConfirmLock Fail"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->releaseBiometricEnrollSession()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    :cond_1
    return-void
.end method

.method private runRegister()V
    .locals 7

    const-string v0, "SsstSmartScanEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need to register registered type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f120baf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1209cb

    new-array v5, v1, [Ljava/lang/Object;

    const v6, 0x7f120b5c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const v0, 0x7f1202b3

    const-string v2, "SsstSmartScanEntry"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "intelligentscan_register_external"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "intelligentscan_settings_entry"

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    :cond_2
    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v3, "smart_scan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v3, "key_intelligentscan_samsung_pass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v3, "key_intelligentscan_unlock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v3, "key_intelligentscan_samsung_pay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v3, "key_intelligentscan_unlock_when_turns_on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "from_search"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, ":settings:fragment_args_key"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "intelligentscan_registered_biometric_type"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    sget v2, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "relative_link"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsRelativeLink:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SsstSmartScanEntry"

    const-string v3, "runRegister : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 6

    move-object v0, p1

    if-nez v0, :cond_0

    const-string v1, "SsstSmartScanEntry"

    const-string v2, "startFragment : context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, ":settings:fragment_args_key"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "fromSearch"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v4, "smart_scan"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v4, "key_intelligentscan_samsung_pass"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v4, "key_intelligentscan_unlock"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v4, "key_intelligentscan_samsung_pay"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string v4, "key_intelligentscan_unlock_when_turns_on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sput-boolean v3, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->isSearchEntry:Z

    const-string v2, "from_search"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "SsstSmartScanEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFragment subMenuSearch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "hw_auth_token_face"

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenFace:[B

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "hw_auth_token_iris"

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenIris:[B

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "isAfw"

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "android.intent.extra.USER_ID"

    sget v4, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "identifyBiometricAuth"

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIdentifyBiometricAuthentication:Z

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsRelativeLink:Z

    if-eqz v2, :cond_3

    const-string v2, "SsstSmartScanEntry"

    const-string v4, "from relative link"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
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

    const v3, 0x7f1202b3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return-void
.end method

.method private supportSmartScan()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.biometrics"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.camera.iris"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "SsstSmartScanEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    const/16 v1, 0x11

    const/4 v2, -0x1

    const/16 v3, 0x65

    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SsstSmartScanEntry"

    const-string v3, "Close Fingerprint Session"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_0
    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_1

    const-string v0, "hw_auth_token_face"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenFace:[B

    const-string v0, "hw_auth_token_iris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenIris:[B

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->releaseBiometricEnrollSession()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    goto :goto_0

    :cond_4
    const/16 v3, 0x68

    if-ne p1, v3, :cond_7

    if-ne p2, v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIdentifyBiometricAuthentication:Z

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->releaseBiometricEnrollSession()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->isSearchEntry:Z

    const-string v1, "SsstSmartScanEntry"

    const v2, 0x7f1202b3

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/IntelligentScanSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const v2, 0x7f12094d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->supportSmartScan()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "this device does not support SmartScan"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_2
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "isAfw"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "previousStage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "relative_link"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsRelativeLink:Z

    const-string v1, "SsstSmartScanEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SsstSmartScanEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SsstSmartScanEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRelativeLink : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsRelativeLink:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_5

    const-string v3, "IsWaitingResult"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    if-eqz v3, :cond_5

    return-void

    :cond_5
    sget v3, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    sget v4, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x0

    :cond_6
    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    :cond_8
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    const/16 v2, 0x11

    if-eq v0, v2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_9
    const-string v0, "intelligentscan_register_external"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "SsstSmartScanEntry"

    const-string v2, "Face and iris exist but non-secure"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_a
    const-string v0, "SsstSmartScanEntry"

    const-string v2, "Face and iris already registered and secure!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_b
    invoke-virtual {v1, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->launchChooseOrConfirmLock()V

    goto :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->authenticateSmartScan()V

    :goto_0
    return-void

    :cond_d
    :goto_1
    const-string v0, "Smart Scan Error"

    const-string v1, "An error has occurred with Smart Scan. If this message appears repeatedly, restart your device."

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "Error. biomerics manager null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "SsstSmartScanEntry"

    const-string v1, "=====onStop()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sget v1, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method releaseBiometricEnrollSession()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_0
    return-void
.end method
