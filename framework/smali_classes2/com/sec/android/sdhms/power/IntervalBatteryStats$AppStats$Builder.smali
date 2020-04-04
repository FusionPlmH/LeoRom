.class public final Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
.super Ljava/lang/Object;
.source "IntervalBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bgTime:J

.field private cpuTime:J

.field private fgTime:J

.field private gpsTime:J

.field private mobilePackets:J

.field private power:D

.field private uid:I

.field private wakelockTime:J

.field private walarm:I

.field private wifiPackets:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->mobilePackets:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->wifiPackets:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->walarm:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->gpsTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->uid:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->power:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->fgTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->bgTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->cpuTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->wakelockTime:J

    return-wide v0
.end method


# virtual methods
.method public bgTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->bgTime:J

    return-object p0
.end method

.method public build()Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;-><init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;)V

    return-object v0
.end method

.method public cpuTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->cpuTime:J

    return-object p0
.end method

.method public fgTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->fgTime:J

    return-object p0
.end method

.method public gpsTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->gpsTime:J

    return-object p0
.end method

.method public mobilePackets(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->mobilePackets:J

    return-object p0
.end method

.method public power(D)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->power:D

    return-object p0
.end method

.method public uid(I)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->uid:I

    return-object p0
.end method

.method public wakelockTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->wakelockTime:J

    return-object p0
.end method

.method public walarm(I)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->walarm:I

    return-object p0
.end method

.method public wifiPackets(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->wifiPackets:J

    return-object p0
.end method
