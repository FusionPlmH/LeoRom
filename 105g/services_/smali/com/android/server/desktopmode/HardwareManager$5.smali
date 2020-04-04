.class Lcom/android/server/desktopmode/HardwareManager$5;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDexOnPcDisplayDisconnectionRequested()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$400(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/IntArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/HardwareManager;->access$500(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/HardwareManager;->access$500(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-virtual {v4}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/server/desktopmode/HardwareManager;->access$100(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDualModeStopLoadingScreen(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$400(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$1200(Lcom/android/server/desktopmode/HardwareManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/HardwareManager;->logConnectedAccessoryInformationLocked(Lcom/android/server/desktopmode/State;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onStartLoadingScreen(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1000(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1100(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method

.method onStopLoadingScreen(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1000(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1100(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method
