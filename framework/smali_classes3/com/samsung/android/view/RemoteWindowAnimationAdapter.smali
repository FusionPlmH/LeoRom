.class public Lcom/samsung/android/view/RemoteWindowAnimationAdapter;
.super Ljava/lang/Object;
.source "RemoteWindowAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/RemoteWindowAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallingPid:I

.field private final mDuration:J

.field private final mRunner:Lcom/samsung/android/view/IRemoteWindowAnimationRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter$1;

    invoke-direct {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mRunner:Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mDuration:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/view/IRemoteWindowAnimationRunner;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mRunner:Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    iput-wide p2, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mDuration:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mCallingPid:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mDuration:J

    return-wide v0
.end method

.method public getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mRunner:Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    return-object v0
.end method

.method public setCallingPid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mCallingPid:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mRunner:Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-wide v0, p0, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
