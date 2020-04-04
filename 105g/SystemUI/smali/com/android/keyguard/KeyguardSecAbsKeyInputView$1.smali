.class Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 5

    const-string v0, "KeyguardSecAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBiometricsLockoutChanged( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v1

    if-eqz v1, :cond_0

    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x7530

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutBiometricAttemptDeadline(II)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v4, v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;J)V

    goto :goto_0

    :cond_0
    const-string v2, "KeyguardSecAbsKeyInputView"

    const-string/jumbo v3, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1302(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z

    const-string v1, "KeyguardSecAbsKeyInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsBiometricLockoutPWView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    :cond_2
    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->displayDefaultSecurityMessage()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_2

    const v3, 0x7f070332

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reset()V

    :cond_0
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->displayDefaultSecurityMessage()V

    :cond_0
    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$900(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->displayDefaultSecurityMessage()V

    :cond_0
    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reset()V

    :cond_0
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->displayDefaultSecurityMessage()V

    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$202(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z

    :cond_0
    return-void
.end method

.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$302(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)I

    :cond_0
    return-void
.end method

.method public onNotifyKeyguardLockout()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v2, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$002(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
