.class public Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;
.super Ljava/lang/Object;
.source "SemWifiP2pMirrorLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pMirrorLinkInfo"


# instance fields
.field private mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

.field private mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iput-object p1, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object p2, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInternetInfo()Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpnpInfo()Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->getUpnpDeviceType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->isTerminalModeAppServerSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->isTerminalModeClientProfileSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->isTerminalModeNotificationServerSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->getPortNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->getMirrorLinkType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->isInternetAccessSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->isInternetAccessRequired()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;->mInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->getMirrorLinkClientPreference()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
