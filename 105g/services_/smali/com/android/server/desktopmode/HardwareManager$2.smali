.class Lcom/android/server/desktopmode/HardwareManager$2;
.super Ljava/lang/Object;
.source "HardwareManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


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

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$400(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$600(Lcom/android/server/desktopmode/HardwareManager;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$400(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$2;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$600(Lcom/android/server/desktopmode/HardwareManager;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
