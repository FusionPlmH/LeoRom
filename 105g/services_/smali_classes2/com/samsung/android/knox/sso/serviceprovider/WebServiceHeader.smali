.class public Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;
.super Ljava/lang/Object;
.source "WebServiceHeader.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mValue:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mName:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mValue:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
