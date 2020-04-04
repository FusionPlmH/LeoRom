.class Lcom/samsung/android/bio/face/SemBioFaceManager$3;
.super Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAcquired$0(Lcom/samsung/android/bio/face/SemBioFaceManager$3;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$800(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationFailed$2(Lcom/samsung/android/bio/face/SemBioFaceManager$3;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1000(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationSucceeded$1(Lcom/samsung/android/bio/face/SemBioFaceManager$3;Lcom/samsung/android/bio/face/SemBioFace;[B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFace;[B)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2302(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/hardware/biometrics/IBiometricPromptReceiver;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2002(Lcom/samsung/android/bio/face/SemBioFaceManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic lambda$onError$3(Lcom/samsung/android/bio/face/SemBioFaceManager$3;ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string/jumbo v2, "onError : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1100(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2302(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/hardware/biometrics/IBiometricPromptReceiver;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2002(Lcom/samsung/android/bio/face/SemBioFaceManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onAcquired(JILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$R_m5XgeQ4EZC4JsrWoMKZtzKbFs;

    invoke-direct {v1, p0, p3, p4}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$R_m5XgeQ4EZC4JsrWoMKZtzKbFs;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$3;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$9_FpAFrDq16HUzdeFa_Nu1d0gqE;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$9_FpAFrDq16HUzdeFa_Nu1d0gqE;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(JLcom/samsung/android/bio/face/SemBioFace;[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;

    invoke-direct {v1, p0, p3, p4}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$GGUPv9osWllaLwJM7Wg6GJEWK8E;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$3;Lcom/samsung/android/bio/face/SemBioFace;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->access$2200(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V

    :cond_1
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;)V

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/bio/face/SemBioFace;

    const/4 v2, 0x0

    move-object v1, v7

    move v3, p4

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;

    invoke-direct {v1, p0, p3, p4}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$3$t45-xA1e0BAEQb23KgH3tl51ZE4;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$3;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onRemoved(JII)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStatusUpdate(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
