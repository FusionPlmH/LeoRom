.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$800()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "BluetoothAdapter"

    const-string v1, "Bluetooth is turned off, stop adv"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAllAdvertising()V

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$900(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$900(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBleAppCount()I

    move-result v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->access$900(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getSamsungBleAppCount()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v0, v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_5

    const-string v1, "BluetoothAdapter"

    const-string v2, "There are no active google scan apps, stop scan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$700()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$700()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopAllScan()V

    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$500(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$500(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$700()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$700()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    goto :goto_1

    :cond_4
    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "onBluetoothStateChange: mManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$1002(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    :cond_5
    :goto_1
    goto :goto_2

    :cond_6
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "onBluetoothStateChange: Bluetooth is on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
