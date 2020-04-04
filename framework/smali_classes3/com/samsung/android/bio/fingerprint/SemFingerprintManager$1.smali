.class Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$800(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v1, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$600(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$700(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$800(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$800(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 0

    return-void
.end method

.method public onEnumerated(JIII)V
    .locals 0

    return-void
.end method

.method public onError(JII)V
    .locals 5

    move v0, p3

    const/4 v1, 0x7

    if-eq p3, v1, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    nop

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$800(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v4}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$700(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRemoved(JIII)V
    .locals 0

    return-void
.end method
