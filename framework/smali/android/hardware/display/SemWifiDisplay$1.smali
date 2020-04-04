.class Landroid/hardware/display/SemWifiDisplay$1;
.super Ljava/lang/Object;
.source "SemWifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemWifiDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/SemWifiDisplay;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplay;
    .locals 6

    const-class v0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    nop

    :cond_1
    new-instance v4, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;Ljava/lang/String;ZZ)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/SemWifiDisplay;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/SemWifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplay;

    goto :goto_0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/SemWifiDisplay;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplay$1;->newArray(I)[Landroid/hardware/display/SemWifiDisplay;

    move-result-object p1

    return-object p1
.end method
