.class public final Landroid/bluetooth/SemBluetoothInputDevice;
.super Ljava/lang/Object;
.source "SemBluetoothInputDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"


# instance fields
.field private final mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothHidHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothHidHost;Landroid/bluetooth/SemBluetoothInputDevice$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/SemBluetoothInputDevice;-><init>(Landroid/bluetooth/BluetoothHidHost;)V

    return-void
.end method

.method public static getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;

    invoke-direct {v1, p1}, Landroid/bluetooth/SemBluetoothInputDevice$InputDeviceServiceListener;-><init>(Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public closeProfileProxy()V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothInputDevice;->mBluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidHost;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
