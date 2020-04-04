.class Landroid/bluetooth/BluetoothGattServer$2;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGattServer;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattServer;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    const-string v0, "BluetoothGattServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->access$500(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BluetoothGattServer"

    const-string v1, "Bluetooth is turned off, disconnect all server connections"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->access$600(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$2;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothGattServer"

    const-string/jumbo v1, "onBluetoothStateChange: Bluetooth is on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
