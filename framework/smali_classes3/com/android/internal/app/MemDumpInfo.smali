.class public Lcom/android/internal/app/MemDumpInfo;
.super Ljava/lang/Object;
.source "MemDumpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/MemDumpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cachedProcessCount:J

.field public cachedSlotCount:J

.field public cpuTime:J

.field public emptyProcessCount:J

.field public emptySlotCount:J

.field public hasDexRunning:I

.field public hasExtra:Z

.field public label:Ljava/lang/String;

.field public memtrack:J

.field public procName:Ljava/lang/String;

.field public procNum:I

.field public pss:J

.field public swap_out:J

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/app/MemDumpInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/MemDumpInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/MemDumpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/app/MemDumpInfo;->uid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->pss:J

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->memtrack:J

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->cpuTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/MemDumpInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->pss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->memtrack:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->cpuTime:J

    iget-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasDexRunning:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/MemDumpInfo;->procNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->cachedProcessCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->emptyProcessCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->cachedSlotCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->emptySlotCount:J

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/MemDumpInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->pss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->memtrack:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasDexRunning:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/MemDumpInfo;->procNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->cachedProcessCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->emptyProcessCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->cachedSlotCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->emptySlotCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_0
    return-void
.end method
