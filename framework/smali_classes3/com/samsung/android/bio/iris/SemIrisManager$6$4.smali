.class Lcom/samsung/android/bio/iris/SemIrisManager$6$4;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager$6;->onError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

.field final synthetic val$deviceId:J

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iput p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->val$error:I

    iput-wide p3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->val$deviceId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->val$error:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$2000(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$2000(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Bio.SemIrisManager"

    const-string/jumbo v2, "onError : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-wide v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->val$deviceId:J

    iget v3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->val$error:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1000(Lcom/samsung/android/bio/iris/SemIrisManager;JI)V

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$2002(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/hardware/biometrics/IBiometricPromptReceiver;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$4;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1802(Lcom/samsung/android/bio/iris/SemIrisManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-void
.end method
