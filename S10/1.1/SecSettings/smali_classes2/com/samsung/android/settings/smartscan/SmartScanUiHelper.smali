.class public Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;
.super Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
.source "SmartScanUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;
    }
.end annotation


# instance fields
.field private mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

.field private mCallback:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mIrisFailedCount:I

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

.field private mSmartScanTextView:Landroid/widget/TextView;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCallback:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;

    iput p5, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private authenticate_normal()V
    .locals 10

    const-string v0, "SmartScanUiHelper"

    const-string v1, "authenticate_normal()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v0, 0x5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v9

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v2, v0

    move-object v5, p0

    move v7, v9

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/biometrics/SemBiometricsManager;->authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-void
.end method

.method private initialize()Z
    .locals 4

    const-string v0, "SmartScanUiHelper"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.biometrics"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    const/4 v1, 0x1

    return v1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method private setSmartScanPreviewMessage()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isListening()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SmartScanUiHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isListening() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "SmartScanUiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->setSmartScanPreviewMessage()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "SmartScanUiHelper"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->reportFailedIrisAttempts(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    const v1, 0x7f120bdd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->smartscanConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCallback:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;->onSmartScanVisibilityChanged(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->setSmartScanPreviewMessage()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "SmartScanUiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationHelp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;)V
    .locals 2

    const-string v0, "SmartScanUiHelper"

    const-string v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCallback:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;->onAuthenticated()V

    return-void
.end method

.method public reportFailedIrisAttempts(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->smartscanConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mIrisFailedCount:I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mIrisFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mIrisFailedCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_confirm_credential_fail_count"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mIrisFailedCount:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public smartscanConfirmCredentialFailedCount(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_confirm_credential_fail_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public startListening()V
    .locals 3

    const-string v0, "SmartScanUiHelper"

    const-string v1, "startListening()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->initialize()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->smartscanConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    const v1, 0x7f121897

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->authenticate_normal()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    const v1, 0x7f121898

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCallback:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;->onSmartScanVisibilityChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    const-string v0, "SmartScanUiHelper"

    const-string v1, "stopListening()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->smartscanConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->mSmartScanTextView:Landroid/widget/TextView;

    const v1, 0x7f121899

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
