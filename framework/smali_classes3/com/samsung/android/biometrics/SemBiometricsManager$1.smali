.class Lcom/samsung/android/biometrics/SemBiometricsManager$1;
.super Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAcquired$0(Lcom/samsung/android/biometrics/SemBiometricsManager$1;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$1100(Lcom/samsung/android/biometrics/SemBiometricsManager;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationFailed$2(Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$900(Lcom/samsung/android/biometrics/SemBiometricsManager;)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationSucceeded$1(Lcom/samsung/android/biometrics/SemBiometricsManager$1;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$1000(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$602(Lcom/samsung/android/biometrics/SemBiometricsManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic lambda$onError$3(Lcom/samsung/android/biometrics/SemBiometricsManager$1;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$800(Lcom/samsung/android/biometrics/SemBiometricsManager;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$602(Lcom/samsung/android/biometrics/SemBiometricsManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onAcquired(JILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;

    invoke-direct {v1, p0, p3, p4}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager$1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$700(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$WAzW1kgYdPa-H_s0q4Csh5tMc_E;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$WAzW1kgYdPa-H_s0q4Csh5tMc_E;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$700(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VwSgCuZGaRjC2MOrwU_MHtpTE_Q;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VwSgCuZGaRjC2MOrwU_MHtpTE_Q;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager$1;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$700(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onError(JILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$oobkM1JBlIUfvzckcXUZgt8vUFE;

    invoke-direct {v1, p0, p3, p4}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$oobkM1JBlIUfvzckcXUZgt8vUFE;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager$1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$700(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
