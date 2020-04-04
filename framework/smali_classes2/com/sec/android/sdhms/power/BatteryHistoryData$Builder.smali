.class public final Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;
.super Ljava/lang/Object;
.source "BatteryHistoryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhms/power/BatteryHistoryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private batteryLevel:I

.field private changedTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;->changedTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;->batteryLevel:I

    return v0
.end method


# virtual methods
.method public batteryLevel(I)Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;->batteryLevel:I

    return-object p0
.end method

.method public build()Lcom/sec/android/sdhms/power/BatteryHistoryData;
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/BatteryHistoryData;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhms/power/BatteryHistoryData;-><init>(Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;)V

    return-object v0
.end method

.method public changedTime(J)Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;->changedTime:J

    return-object p0
.end method
