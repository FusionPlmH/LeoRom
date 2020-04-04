.class Lcom/android/systemui/lockstar/PluginLockStarManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PluginLockStarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onUserSwitchComplete$0(Lcom/android/systemui/lockstar/PluginLockStarManager$1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$600(Lcom/android/systemui/lockstar/PluginLockStarManager;Z)V

    return-void
.end method


# virtual methods
.method public onLocalChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$300(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$100(Lcom/android/systemui/lockstar/PluginLockStarManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$200(Lcom/android/systemui/lockstar/PluginLockStarManager;Z)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$000(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete(), userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/lockstar/-$$Lambda$PluginLockStarManager$1$h9Yxw_JKfsuyYWHVOMgH1oQETB0;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/-$$Lambda$PluginLockStarManager$1$h9Yxw_JKfsuyYWHVOMgH1oQETB0;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$502(Lcom/android/systemui/lockstar/PluginLockStarManager;I)I

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitching(), userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_0
    return-void
.end method
