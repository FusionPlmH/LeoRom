.class Lcom/samsung/android/bio/iris/SemIrisManager$5;
.super Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;->addLockoutResetCallback(Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

.field final synthetic val$callback:Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$5;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$5;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/samsung/android/bio/iris/SemIrisManager$5;->val$callback:Lcom/samsung/android/bio/iris/SemIrisManager$LockoutResetCallback;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$5;->val$powerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "lockoutResetCallback"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$5;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->access$700(Lcom/samsung/android/bio/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/bio/iris/SemIrisManager$5$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/bio/iris/SemIrisManager$5$1;-><init>(Lcom/samsung/android/bio/iris/SemIrisManager$5;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method