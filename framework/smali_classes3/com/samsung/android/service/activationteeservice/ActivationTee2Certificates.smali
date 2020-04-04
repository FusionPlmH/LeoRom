.class public Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;
.super Ljava/lang/Object;
.source "ActivationTee2Certificates.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private drkCert:[B

.field private rsaCert:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates$1;

    invoke-direct {v0}, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates$1;-><init>()V

    sput-object v0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->drkCert:[B

    iput-object p2, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->rsaCert:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDrkCert()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->drkCert:[B

    return-object v0
.end method

.method public getRsaCert()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->rsaCert:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->drkCert:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->drkCert:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->rsaCert:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;->rsaCert:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
