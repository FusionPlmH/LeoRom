.class public Lcom/android/settings/fingerprint/FingerprintUiHelper;
.super Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;
.source "FingerprintUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIcon:Landroid/widget/ImageView;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;-><init>()V

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintUiHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintUiHelper$1;-><init>(Lcom/android/settings/fingerprint/FingerprintUiHelper;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

    iput p4, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setFingerprintIconVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;->onFingerprintIconVisibilityChanged(Z)V

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isListening()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;->onAuthenticated()V

    return-void
.end method

.method public startListening()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sem_privileged_attr"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mUserId:I

    move-object v4, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->authenticate(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f080104

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method
