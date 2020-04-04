.class public Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;
.super Landroid/app/Activity;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;


# instance fields
.field private mAuthType:I

.field private final mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricPromptCancel:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForFaceAuth:Z

.field private mForFingerprintAuth:Z

.field private mForIrisAuth:Z

.field private mForSmartScanAuth:Z

.field private mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsAuthenticationFailed:Z

.field private mIsBackupStarted:Z

.field private final mIsRearSensor:Z

.field private mIsRemainDialogStarted:Z

.field private mIsTimerFinished:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShowRemainingTimerDialog:Landroid/app/AlertDialog;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsTimerFinished:Z

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForSmartScanAuth:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsAuthenticationFailed:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsRemainDialogStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsBackupStarted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mAuthType:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isRearSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsRearSensor:Z

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsBackupStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsBackupStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsAuthenticationFailed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsAuthenticationFailed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisConrimBPDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSamsungAcountAuthenticate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mAuthType:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showBiometricPrompt(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsTimerFinished:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsTimerFinished:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getRemainingTimeoutDialogMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->forceDisplayConfirmBP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsRemainDialogStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsRemainDialogStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFaceErrorPopup(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->stopBiometricPrompt()V

    return-void
.end method

.method private forceDisplayConfirmBP()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsFailedAttempts(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getRemainingTimeoutDialogMessage(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsFailedAttempts(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f120bc4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->forceDisplayConfirmBP()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120220

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isEnrolledIrises()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setBackgroudDimEnabled(Z)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method private showBiometricPrompt(I)V
    .locals 5

    const-string v0, "BiometricsAuthenticationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBiometricPrompt : authType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    iput p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mAuthType:I

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semGetBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sem_privileged_attr"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semGetBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sem_privileged_attr"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mAuthType:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mAuthType:I

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_2
    const v1, 0x7f12135d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v1, 0x7f12046e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$2;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f12135c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setPositiveButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x7f12135b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setPositiveButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    nop

    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mBiometricPromptCancel:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mBiometricPromptCancel:Landroid/os/CancellationSignal;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mBiometricPromptCancel:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showErrorPopup(I)V
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f120bd6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120bd1

    const v3, 0x7f120bc6

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120bd4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120bca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120bd0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120bcb

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120bce

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120bc3

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120da5

    new-instance v4, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$6;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$8;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showFaceErrorPopup(I)V
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f12094f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f12094c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f120939

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120949

    new-instance v4, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$9;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$10;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$11;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    return-void
.end method

.method private showIrisConrimBPDialog()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->show()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    return-void
.end method

.method private showRemainingTimeoutDialog()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120bc6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getRemainingTimeoutDialogMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$13;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$12;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$14;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    return-void
.end method

.method private showSamsungAcountAuthenticate()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, "s5d189ajvs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v2, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "biometrics_disabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4

    const-string v0, "BiometricsAuthenticationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityForResultWrapper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "BiometricsAuthenticationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    :goto_0
    return-void
.end method

.method private stopBiometricPrompt()V
    .locals 2

    const-string v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "stopBiometricsPrompt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mBiometricPromptCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mBiometricPromptCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "stopBiometricsPrompt cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mBiometricPromptCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mBiometricPromptCancel:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public IrisConfirmBackupPasswordDialogEvent(I)V
    .locals 4

    const-string v0, "BiometricsAuthenticationActivity"

    const-string v1, "IrisConfirmBackupPasswordDialogEvent Called"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "BiometricsAuthenticationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->resetFailedBiometricsBackupAttempts(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BiometricsAuthenticationActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "for_fingerprint_authentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    const-string v2, "for_fingerprint_authentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    const-string v2, "for_iris_authentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    const-string v2, "for_face_authentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    const-string v2, "for_intelligentscan_authentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForSmartScanAuth:Z

    const-string v2, "BiometricsAuthenticationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BiometricsConfig.getRemaingTimeToUnlock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->isEnrolledIrises()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsRearSensor:Z

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForSmartScanAuth:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    :cond_2
    const v1, 0x7f1202b1

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    if-eqz v2, :cond_3

    const v1, 0x7f1202b2

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    if-eqz v2, :cond_4

    const v1, 0x7f1202b0

    :cond_4
    :goto_0
    const-string v2, "BiometricsAuthenticationActivity"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->stopBiometricPrompt()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->forceDisplayConfirmBP()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisConrimBPDialog()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSamsungAcountAuthenticate()V

    goto :goto_1

    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    if-eqz v2, :cond_9

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showBiometricPrompt(I)V

    goto :goto_1

    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    const/4 v4, 0x4

    if-eqz v2, :cond_a

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showBiometricPrompt(I)V

    goto :goto_1

    :cond_a
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showBiometricPrompt(I)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->isEnrolledIrises()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showBiometricPrompt(I)V

    goto :goto_1

    :cond_c
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showBiometricPrompt(I)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "BiometricsAuthenticationActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "BiometricsAuthenticationActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->stopBiometricPrompt()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
