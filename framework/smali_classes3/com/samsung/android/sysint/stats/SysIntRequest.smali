.class public Lcom/samsung/android/sysint/stats/SysIntRequest;
.super Ljava/lang/Object;
.source "SysIntRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sysint/stats/SysIntRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_MAX_COUNT:I = 0x1

.field public static final REQUEST_TYPE_MAX:I = 0x1

.field public static final REQUEST_TYPE_MIN:I = 0x1

.field public static final REQUEST_TYPE_NEXT_APP:I = 0x1


# instance fields
.field private parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reqSize:I

.field private reqType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sysint/stats/SysIntRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/sysint/stats/SysIntRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sysint/stats/SysIntRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqType:I

    iput p2, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqSize:I

    iput-object p3, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->parameters:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->parameters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->parameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReqSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqSize:I

    return v0
.end method

.method public getReqType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->reqSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sysint/stats/SysIntRequest;->parameters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
