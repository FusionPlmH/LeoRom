.class Lcom/android/settings/network/ApnSettings$7;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string v0, "ApnSettings"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$1000(Lcom/android/settings/network/ApnSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$1102(Lcom/android/settings/network/ApnSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$1100(Lcom/android/settings/network/ApnSettings;)Landroid/bluetooth/BluetoothPan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnSettings;->access$802(Lcom/android/settings/network/ApnSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string v0, "ApnSettings"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$1000(Lcom/android/settings/network/ApnSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$7;->this$0:Lcom/android/settings/network/ApnSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$1102(Lcom/android/settings/network/ApnSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
