.class public final Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
.super Ljava/lang/Object;
.source "IntervalBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allPower:D

.field private batteryDelta:I

.field private screenOffDischarge:I

.field private screenOffTime:J

.field private screenOnDischarge:I

.field private screenOnTime:J

.field private screenPower:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->allPower:D

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenPower:D

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->batteryDelta:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOnTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOffTime:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOnDischarge:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOffDischarge:I

    return v0
.end method


# virtual methods
.method public allPower(D)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->allPower:D

    return-object p0
.end method

.method public batteryDelta(I)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->batteryDelta:I

    return-object p0
.end method

.method public build()Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;-><init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;)V

    return-object v0
.end method

.method public screenOffDischarge(I)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOffDischarge:I

    return-object p0
.end method

.method public screenOffTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOffTime:J

    return-object p0
.end method

.method public screenOnDischarge(I)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOnDischarge:I

    return-object p0
.end method

.method public screenOnTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenOnTime:J

    return-object p0
.end method

.method public screenPower(D)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats$Builder;->screenPower:D

    return-object p0
.end method
