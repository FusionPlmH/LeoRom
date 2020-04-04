.class public final Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;
.super Ljava/lang/Object;
.source "IntervalBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhms/power/IntervalBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appStatsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;",
            ">;"
        }
    .end annotation
.end field

.field private beginTime:J

.field private deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

.field private endTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->beginTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->endTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->appStatsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    return-object v0
.end method


# virtual methods
.method public appStatsList(Ljava/util/ArrayList;)Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;",
            ">;)",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->appStatsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->appStatsList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->appStatsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public beginTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->beginTime:J

    return-object p0
.end method

.method public build()Lcom/sec/android/sdhms/power/IntervalBatteryStats;
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhms/power/IntervalBatteryStats;-><init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)V

    return-object v0
.end method

.method public deviceStats(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;)Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    return-object p0
.end method

.method public endTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->endTime:J

    return-object p0
.end method
