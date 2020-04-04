.class public Lcom/sec/android/sdhms/power/IntervalBatteryStats;
.super Ljava/lang/Object;
.source "IntervalBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;,
        Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;,
        Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appStatsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;",
            ">;"
        }
    .end annotation
.end field

.field public beginTime:J

.field public deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

.field public endTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$1;

    invoke-direct {v0}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$1;-><init>()V

    sput-object v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLjava/util/ArrayList;Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;",
            ">;",
            "Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->beginTime:J

    iput-wide p3, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->endTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->appStatsList:Ljava/util/ArrayList;

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->appStatsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    invoke-direct {v1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->uid(I)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->power(D)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->fgTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->bgTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->cpuTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->wakelockTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->mobilePackets(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->wifiPackets(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->walarm(I)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->gpsTime(J)Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats$Builder;->build()Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;

    iget-object v2, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->appStatsList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;

    invoke-direct {v3, v1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;-><init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    invoke-direct {v0, p6}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;-><init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;)V

    iput-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->beginTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->endTime:J

    sget-object v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$AppStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->appStatsList:Ljava/util/ArrayList;

    const-class v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    iput-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->access$000(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->beginTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->access$100(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->endTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->access$200(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->appStatsList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;->access$300(Lcom/sec/android/sdhms/power/IntervalBatteryStats$Builder;)Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

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

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->beginTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->appStatsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/sdhms/power/IntervalBatteryStats;->deviceStats:Lcom/sec/android/sdhms/power/IntervalBatteryStats$DeviceStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
