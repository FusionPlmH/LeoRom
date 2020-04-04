.class Lcom/android/keyguard/KeyguardUpdateMonitor$12;
.super Lcom/android/systemui/sensor/SensorController$SensorListener;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    return v0
.end method

.method public onExecute()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8302(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v0

    const-string v2, "KeyguardFace"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8500()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$8700()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardFace"

    const-string/jumbo v2, "onExecute : Lift to wake with face recognition"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Keyguard_IB"

    const-string/jumbo v2, "onExecute : Lift to wake with intelligent scan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    :cond_1
    :goto_0
    return-void
.end method
