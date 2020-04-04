.class Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials$1;
.super Ljava/lang/Object;
.source "ActivationTee2Credentials.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v3, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;-><init>([B[B[B)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials$1;->newArray(I)[Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;

    move-result-object p1

    return-object p1
.end method
