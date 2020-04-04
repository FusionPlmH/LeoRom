.class public Lcom/sec/android/sdhms/power/BatteryHistoryData;
.super Ljava/lang/Object;
.source "BatteryHistoryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/sdhms/power/BatteryHistoryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final batteryLevel:I

.field public final changedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/sdhms/power/BatteryHistoryData$1;

    invoke-direct {v0}, Lcom/sec/android/sdhms/power/BatteryHistoryData$1;-><init>()V

    sput-object v0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->changedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->batteryLevel:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;->access$000(Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->changedTime:J

    invoke-static {p1}, Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;->access$100(Lcom/sec/android/sdhms/power/BatteryHistoryData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->batteryLevel:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/sdhms/power/BatteryHistoryData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/sec/android/sdhms/power/BatteryHistoryData;->changedTime:J

    iput-wide v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->changedTime:J

    iget v0, p1, Lcom/sec/android/sdhms/power/BatteryHistoryData;->batteryLevel:I

    iput v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->batteryLevel:I

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

    iget-wide v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->changedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/sec/android/sdhms/power/BatteryHistoryData;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
