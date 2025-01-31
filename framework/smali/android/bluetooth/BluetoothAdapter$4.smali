.class Landroid/bluetooth/BluetoothAdapter$4;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic val$serviceUuids:[Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$4;->this$0:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$4;->val$serviceUuids:[Ljava/util/UUID;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$4;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "BluetoothAdapter"

    const-string v1, "LE Scan has already started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$4;->val$serviceUuids:[Ljava/util/UUID;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$4;->val$serviceUuids:[Ljava/util/UUID;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "uuids does not match"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$4;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
