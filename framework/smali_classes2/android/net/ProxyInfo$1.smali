.class Landroid/net/ProxyInfo$1;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ProxyInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;
    .locals 18

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v6, p1

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-instance v8, Landroid/net/ProxyInfo;

    invoke-direct {v8, v5, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    return-object v8

    :cond_0
    move-object/from16 v6, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v17, Landroid/net/ProxyInfo;

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v5

    move-object v13, v15

    invoke-direct/range {v7 .. v14}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V

    goto :goto_0

    :cond_2
    new-instance v13, Landroid/net/ProxyInfo;

    const/4 v12, 0x0

    move-object v7, v13

    move-object v8, v0

    move v9, v1

    move-object v10, v5

    move-object v11, v15

    invoke-direct/range {v7 .. v12}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V

    :goto_0
    invoke-virtual {v7, v4}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/ProxyInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->newArray(I)[Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1
.end method
