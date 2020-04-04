.class public Lcom/android/settings/fingerprint/FingerprintEntry;
.super Landroid/app/Activity;
.source "FingerprintEntry.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field public static isSearchEntry:Z

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIdentifyFingerprint:Z

.field private mIsAfw:Z

.field private mIsKnox:Z

.field private mIsRelativeLink:Z

.field private mIsWaitingResult:Z

.field private mPreviousStage:Ljava/lang/String;

.field private mToken:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEntry$3;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEntry$3;-><init>()V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsKnox:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEntry;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    return v0
.end method

.method private authenticateFingerprint()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "for_fingerprint_authentication"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isAfw"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    sget v3, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x68

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->overridePendingTransition(II)V

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FpstFingerprintEntry"

    const-string v2, "authenticateFingerprint : Activity Not Found !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    :goto_0
    return-void
.end method

.method private deleteAllFingerprints()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "deleteAllFingerprints Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "deleteAllFingerprints Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 11

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "launchConfirmLock "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v9

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    sget v8, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v6, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FpstFingerprintEntry"

    const-string v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    :cond_0
    return-void
.end method

.method private runRegister()V
    .locals 6

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "There is no enrolled fingerprint. Run RegisterFingerprint!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1209cb

    new-array v4, v1, [Ljava/lang/Object;

    const v5, 0x7f120b5c

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1209c6

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    nop

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "finger_scanner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v4, "support_samsung_account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v4, "support_web_signin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v4, "set_screen_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "samsung_pay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "key_fingerprint_samsung_pass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "from_search"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "FpstFingerprintEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startFragment subMenuSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fingerprint_register_external"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "fingerprint_entry"

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    :cond_5
    const-string v1, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "isAfw"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "is_knox"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    sget v3, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "relative_link"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FpstFingerprintEntry"

    const-string v3, "runRegister : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void
.end method

.method private showDatabaseFailureDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1209bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 7

    move-object v0, p1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v2, 0xa

    new-array v4, v2, [B

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string v1, "FpstFingerprintEntry"

    const-string v3, "onCreate DB Corrupt"

    invoke-static {v1, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->deleteAllFingerprints()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f1209ce

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "FpstFingerprintEntry"

    const-string/jumbo v2, "startFragment : context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, ":settings:fragment_args_key"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "fromSearch"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "finger_scanner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v4, "support_samsung_account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v4, "support_web_signin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v4, "set_screen_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "samsung_pay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "key_fingerprint_samsung_pass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v4, "set_always_on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "check_added_fingerprints"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v4, "fast_recognition"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sput-boolean v2, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    const-string v3, "from_search"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "FpstFingerprintEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startFragment subMenuSearch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    if-eqz v3, :cond_5

    const-string/jumbo v3, "tokenFromLock"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_5
    const-string v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "isAfw"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "android.intent.extra.USER_ID"

    sget v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    if-eqz v3, :cond_6

    const-string v3, "FpstFingerprintEntry"

    const-string v4, "from relative link"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$FingerprintSettingsActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "relative_link"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, ":settings:top_level_tile_id"

    const-string v4, "biometrics_and_security_settings"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/fingerprint/FingerprintSettings;

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

    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "FpstFingerprintEntry"

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

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    const/4 v1, -0x1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_0

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    :cond_4
    const/16 v2, 0x68

    if-ne p1, v2, :cond_8

    if-ne p2, v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v2, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FpstFingerprintEntry"

    const-string v3, "Mobile keyboard attached"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const v3, 0x7f120a28

    new-array v2, v2, [Ljava/lang/Object;

    const v4, 0x7f12099e

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const v2, 0x7f120a31

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void

    :cond_1
    const v1, 0x7f1202b1

    const-string v3, "FpstFingerprintEntry"

    invoke-static {p0, v1, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "isAfw"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "previousStage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "is_knox"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "relative_link"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    const-string v1, "FpstFingerprintEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FpstFingerprintEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsKnox : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FpstFingerprintEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRelativeLink : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "alwaysonnoti"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "FpstFingerprintEntry"

    const-string v3, "onCreate alwayonNoti true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintReceiver;->cancelNotification(Landroid/content/Context;)V

    :cond_4
    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const v3, 0x7f1209ce

    if-nez v1, :cond_6

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "onCreate mGFingerprintManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v4

    if-eqz v1, :cond_f

    const v5, 0x186c8

    if-eq v4, v5, :cond_7

    const v5, 0x186c9

    if-eq v4, v5, :cond_7

    goto/16 :goto_1

    :cond_7
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_8

    const-string v3, "IsWaitingResult"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-eqz v3, :cond_8

    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fingerprint_guide_shown"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_9
    const-string v0, "fingerprint_register_external"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result v0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v3

    if-eq v0, v3, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    return-void

    :cond_b
    const-string v0, "FpstFingerprintEntry"

    const-string v3, "All Fingerprints already registered and secure!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    return-void

    :cond_c
    sget v0, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    goto :goto_0

    :cond_d
    sget v0, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const v3, 0x61000

    if-ne v0, v3, :cond_e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    goto :goto_0

    :cond_e
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->launchChooseOrConfirmLock()V

    :goto_0
    return-void

    :cond_f
    :goto_1
    const-string v0, "FpstFingerprintEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate isHardwareDetected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", semGetSensorStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    if-eq v4, v0, :cond_11

    const/16 v0, 0x3eb

    if-eq v4, v0, :cond_10

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_10
    const v0, 0x7f1209cd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_11
    const v0, 0x7f1209d0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    nop

    invoke-static {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
