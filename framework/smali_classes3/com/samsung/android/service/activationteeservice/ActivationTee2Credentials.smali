.class public Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
.super Ljava/lang/Object;
.source "ActivationTee2Credentials.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encrypted:[B

.field private iv:[B

.field private tag:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials$1;

    invoke-direct {v0}, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials$1;-><init>()V

    sput-object v0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->encrypted:[B

    iput-object p2, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->iv:[B

    iput-object p3, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->tag:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEncrypted()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->encrypted:[B

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->iv:[B

    return-object v0
.end method

.method public getTag()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->tag:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->encrypted:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->encrypted:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->iv:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->iv:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->tag:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;->tag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
