.class public Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;
.super Ljava/lang/Object;
.source "KnoxAnalyticsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_Pid_PackageNameFlag"

.field private static final USER_TYPE_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_UserId_UserTypeFlag"


# instance fields
.field private event:Ljava/lang/String;

.field public eventId:J

.field private feature:Ljava/lang/String;

.field private payload:Landroid/os/Bundle;

.field private schemaVersion:I

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    iput-object p3, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->generateTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    return-void
.end method

.method private generateTimestamp()J
    .locals 4

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    return-wide v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSchemaVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    return-wide v0
.end method

.method public setPackageNameProperty(I)V
    .locals 1

    const-string v0, "ReservedKey_Pid_PackageNameFlag"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    move-object v1, p2

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    move-object v1, p2

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Invalid Object type"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setUserTypeProperty(I)V
    .locals 1

    const-string v0, "ReservedKey_UserId_UserTypeFlag"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "schemaVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "payload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
