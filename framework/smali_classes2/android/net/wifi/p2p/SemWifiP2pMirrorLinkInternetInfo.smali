.class public Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;
.super Ljava/lang/Object;
.source "SemWifiP2pMirrorLinkInternetInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pMirrorLinkInternetInfo"


# instance fields
.field private mHaveInternetAccess:Z

.field private mInternetAccessRequired:Z

.field private mMLCliPreference:I

.field private mMLType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    iput v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    iput-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    return-void
.end method

.method private constructor <init>(IZZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    iput v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    iput-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    iput p1, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    iput-boolean p2, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    iput-boolean p3, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    iput p4, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    return-void
.end method

.method synthetic constructor <init>(IZZILandroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;-><init>(IZZI)V

    return-void
.end method

.method public static newInstance(IZZI)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;-><init>(IZZI)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMirrorLinkClientPreference()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    return v0
.end method

.method public getMirrorLinkType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    return v0
.end method

.method public getSupplicantData()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    iget v3, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    or-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    or-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    or-int/lit8 v3, v2, 0x2

    int-to-byte v2, v3

    :cond_1
    :goto_0
    iget-boolean v3, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    if-eqz v3, :cond_2

    or-int/lit8 v3, v2, 0x4

    int-to-byte v2, v3

    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    if-eqz v3, :cond_3

    or-int/lit8 v3, v2, 0x8

    int-to-byte v2, v3

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    iget v6, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    if-ne v4, v6, :cond_4

    or-int/lit8 v6, v5, 0x1

    int-to-byte v5, v6

    :cond_4
    iget v6, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    if-ne v0, v6, :cond_5

    or-int/lit8 v0, v5, 0x2

    int-to-byte v5, v0

    :cond_5
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const-string v6, "%04x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isInternetAccessRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    return v0
.end method

.method public isInternetAccessSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n P2P-CCC-Internet Accessibility Info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n MirrorLink Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n Have internet Access = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n Internet Access required = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n MirrorLink Client Preference Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mHaveInternetAccess:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mInternetAccessRequired:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->mMLCliPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
