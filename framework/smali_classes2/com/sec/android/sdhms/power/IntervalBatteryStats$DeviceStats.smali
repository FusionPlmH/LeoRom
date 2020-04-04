.class public Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;
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
    name = "DeviceStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allPower:D

.field public final batteryDelta:I

.field public final screenOffDischarge:I

.field public final screenOffTime:J

.field public final screenOnDischarge:I

.field public final screenOnTime:J

.field public final screenPower:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$1;

    invoke-direct {v0}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$1;-><init>()V

    sput-object v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->allPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->batteryDelta:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffDischarge:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->access$1400(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->allPower:D

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->access$1500(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenPower:D

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->access$1600(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->batteryDelta:I

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->access$1700(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->access$1800(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->access$1900(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnDischarge:I

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->access$2000(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffDischarge:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->allPower:D

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->allPower:D

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenPower:D

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenPower:D

    iget v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->batteryDelta:I

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->batteryDelta:I

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnTime:J

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffTime:J

    iget v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnDischarge:I

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnDischarge:I

    iget v0, p1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffDischarge:I

    iput v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffDischarge:I

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

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->allPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->batteryDelta:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOnDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;->screenOffDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
