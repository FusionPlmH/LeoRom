.class Lcom/android/server/net/LockdownVpnTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/LockdownVpnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "LockdownVpnTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x51160f8a

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x8cbe44f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "LockdownVpnTracker"

    const-string v1, "MPSM is enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    goto :goto_1

    :cond_4
    const-string v0, "LockdownVpnTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPSM is disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->access$100(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v0}, Lcom/android/server/net/LockdownVpnTracker;->access$100(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v0, v4}, Lcom/android/server/net/LockdownVpnTracker;->access$002(Lcom/android/server/net/LockdownVpnTracker;Z)Z

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {v0, v4}, Lcom/android/server/net/LockdownVpnTracker;->access$002(Lcom/android/server/net/LockdownVpnTracker;Z)Z

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    nop

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
