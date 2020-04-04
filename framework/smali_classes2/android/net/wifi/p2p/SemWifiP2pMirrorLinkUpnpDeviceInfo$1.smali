.class Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo$1;
.super Ljava/lang/Object;
.source "SemWifiP2pMirrorLinkUpnpDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;
    .locals 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v9, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    const/4 v6, 0x0

    move-object v0, v9

    move v1, v7

    move v5, v8

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;-><init>(IZZZILandroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo$1;)V

    return-object v9
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo$1;->newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    move-result-object p1

    return-object p1
.end method
