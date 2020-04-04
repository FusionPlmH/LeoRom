.class Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;
.super Ljava/lang/Object;
.source "SemBluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SemBluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "A2dpSinkServiceListener"
.end annotation


# instance fields
.field private final mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v1, Landroid/bluetooth/SemBluetoothA2dpSink;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/SemBluetoothA2dpSink;-><init>(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/SemBluetoothA2dpSink$1;)V

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothA2dpSink$A2dpSinkServiceListener;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    return-void
.end method
