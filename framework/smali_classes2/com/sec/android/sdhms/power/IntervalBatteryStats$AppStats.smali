.class public Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;
.super Ljava/lang/Object;
.source "IntervalBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhms/power/IntervalBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bgTime:J

.field public final cpuTime:J

.field public final fgTime:J

.field public final gpsTime:J

.field public final mobilePackets:J

.field public final power:D

.field public final uid:I

.field public final wakelockTime:J

.field public final walarm:I

.field public final wifiPackets:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$1;

    invoke-direct {v0}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$1;-><init>()V

    sput-object v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->power:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->fgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->bgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->cpuTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wakelockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->mobilePackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wifiPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->walarm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->gpsTime:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$400(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->uid:I

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$500(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->power:D

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$600(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->fgTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$700(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->bgTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$800(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->cpuTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$900(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wakelockTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$1000(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->mobilePackets:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$1100(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wifiPackets:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$1200(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->walarm:I

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->access$1300(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->gpsTime:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->uid:I

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->uid:I

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->power:D

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->power:D

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->fgTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->fgTime:J

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->bgTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->bgTime:J

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->cpuTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->cpuTime:J

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wakelockTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wakelockTime:J

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->mobilePackets:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->mobilePackets:J

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wifiPackets:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wifiPackets:J

    iget v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->walarm:I

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->walarm:I

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->gpsTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->gpsTime:J

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

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->power:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->fgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->bgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->mobilePackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->wifiPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->walarm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
