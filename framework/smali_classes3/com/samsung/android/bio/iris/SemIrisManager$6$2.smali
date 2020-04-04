.class Lcom/samsung/android/bio/iris/SemIrisManager$6$2;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager$6;->onAuthenticationSucceeded(JLcom/samsung/android/camera/iris/Iris;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

.field final synthetic val$fidoResultData:[B

.field final synthetic val$ir:Lcom/samsung/android/camera/iris/Iris;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager$6;Lcom/samsung/android/camera/iris/Iris;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->val$ir:Lcom/samsung/android/camera/iris/Iris;

    iput-object p3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->val$fidoResultData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->val$ir:Lcom/samsung/android/camera/iris/Iris;

    iget-object v2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->val$fidoResultData:[B

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1900(Lcom/samsung/android/bio/iris/SemIrisManager;Lcom/samsung/android/camera/iris/Iris;[B)V

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$2002(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/hardware/biometrics/IBiometricPromptReceiver;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$6$2;->this$1:Lcom/samsung/android/bio/iris/SemIrisManager$6;

    iget-object v0, v0, Lcom/samsung/android/bio/iris/SemIrisManager$6;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$1802(Lcom/samsung/android/bio/iris/SemIrisManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-void
.end method
