.class Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;
.super Landroid/os/Handler;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemBiometricsManager"

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
    const-string v0, "SemBiometricsManager"

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

    const-string v0, "SemBiometricsManager"

    const-string v1, "handleMessage : Unknown msg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$800(Lcom/samsung/android/biometrics/SemBiometricsManager;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$900(Lcom/samsung/android/biometrics/SemBiometricsManager;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$1000(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;->this$0:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->access$1100(Lcom/samsung/android/biometrics/SemBiometricsManager;ILjava/lang/String;)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
