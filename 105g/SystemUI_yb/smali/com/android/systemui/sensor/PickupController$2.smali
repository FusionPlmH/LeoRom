.class Lcom/android/systemui/sensor/PickupController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PickupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sensor/PickupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedGoingToSleep(I)V
    .locals 4

    const-string v0, "PickupController"

    const-string/jumbo v1, "onStartedGoingToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$300(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$000(Lcom/android/systemui/sensor/PickupController;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2

    const-string v0, "PickupController"

    const-string/jumbo v1, "onStartedWakingUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$300(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$500(Lcom/android/systemui/sensor/PickupController;)V

    :cond_1
    :goto_0
    return-void
.end method
