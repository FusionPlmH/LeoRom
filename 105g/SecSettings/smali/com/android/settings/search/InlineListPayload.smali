.class public Lcom/android/settings/search/InlineListPayload;
.super Lcom/android/settings/search/InlinePayload;
.source "InlineListPayload.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/search/InlineListPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumOptions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/search/InlineListPayload$1;

    invoke-direct {v0}, Lcom/android/settings/search/InlineListPayload$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/InlineListPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/search/InlinePayload;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlineListPayload;->mNumOptions:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/search/InlineListPayload$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/InlineListPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/search/InlinePayload;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/settings/search/InlineListPayload;->mNumOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
