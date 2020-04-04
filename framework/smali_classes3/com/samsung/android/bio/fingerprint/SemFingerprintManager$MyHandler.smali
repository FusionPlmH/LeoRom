.class Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemFingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "SemFingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SemFingerprintManager"

    const-string v1, "handleMessage : Unknown msg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$400(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$300(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$200(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;->this$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->access$100(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
