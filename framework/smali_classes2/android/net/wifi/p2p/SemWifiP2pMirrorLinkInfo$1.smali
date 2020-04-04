.class Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;
.super Ljava/lang/Object;
.source "SemWifiP2pMirrorLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v0, v1, v4, v5, v6}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->newInstance(IZZZI)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    move-result-object v9

    invoke-static {v7, v8, v2, v3}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->newInstance(IZZI)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    move-result-object v10

    new-instance v11, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    invoke-direct {v11, v9, v10}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;-><init>(Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;)V

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;->newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    move-result-object p1

    return-object p1
.end method
