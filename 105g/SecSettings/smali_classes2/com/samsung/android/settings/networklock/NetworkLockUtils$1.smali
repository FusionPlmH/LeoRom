.class Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;
.super Landroid/os/CountDownTimer;
.source "NetworkLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/networklock/NetworkLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const-string v0, "network_lock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNoResponseTimer timed out when waiting for message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v2}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->access$000(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->access$000(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-string v0, "network_lock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNoResponseTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onTick + seconds remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
