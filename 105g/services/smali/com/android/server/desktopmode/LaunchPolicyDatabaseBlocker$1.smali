.class Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;
.super Landroid/os/FileObserver;
.source "LaunchPolicyDatabaseBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->setFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;->this$0:Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    const-string v0, "databases"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isLaunchPolicyDatabaseCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;->this$0:Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->access$000(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;->this$0:Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->access$100(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Database is created! Now unregistering blocker."

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;->this$0:Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->access$300(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->setLaunchPolicyDatabaseCreated(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;->this$0:Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->access$400(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
