.class Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo$1;
.super Ljava/lang/Object;
.source "SemWifiP2pMirrorLinkInternetInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-instance v8, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    const/4 v5, 0x0

    move-object v0, v8

    move v1, v6

    move v4, v7

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;-><init>(IZZILandroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo$1;)V

    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo$1;->newArray(I)[Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    move-result-object p1

    return-object p1
.end method
