.class public Lcom/samsung/android/settings/iris/IrisUiHelper;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "IrisUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field mIrisFailedCount:I

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisMessage:Landroid/widget/TextView;

.field private mIrisPreviewLayout:Landroid/widget/LinearLayout;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/iris/IrisUiHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisUiHelper$1;-><init>(Lcom/samsung/android/settings/iris/IrisUiHelper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    iput p5, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/iris/IrisUiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/iris/IrisUiHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method private setIrisPreviewMessage()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public irisConfirmCredentialFailedCount(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_confirm_credential_fail_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isListening()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

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
    .locals 3

    const-string v0, "IrisUiHelper"

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

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->setIrisPreviewMessage()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "IrisUiHelper"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->reportFailedIrisAttempts(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f120bcb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;->onIrisVisibilityChanged(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->setIrisPreviewMessage()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "IrisUiHelper"

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

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .locals 2

    const-string v0, "IrisUiHelper"

    const-string v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;->onAuthenticated()V

    return-void
.end method

.method public reportFailedIrisAttempts(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_confirm_credential_fail_count"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public startListening()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f120bc0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f120bc9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;->onIrisVisibilityChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f120bc8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
