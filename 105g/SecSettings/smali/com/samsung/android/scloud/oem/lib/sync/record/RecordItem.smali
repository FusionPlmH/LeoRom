.class public Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;
.super Ljava/lang/Object;
.source "RecordItem.java"


# instance fields
.field private deleted:Z

.field private isNew:Z

.field private localRecordId:J

.field private serverRecordId:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private timeStamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->isNew:Z

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->localRecordId:J

    if-nez p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->isNew:Z

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->generateServerRecordId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->serverRecordId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->serverRecordId:Ljava/lang/String;

    :goto_0
    iput-wide p4, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->timeStamp:J

    iput-boolean p6, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->deleted:Z

    iput-object p7, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->tableName:Ljava/lang/String;

    return-void
.end method

.method private generateServerRecordId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocalRecordId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->localRecordId:J

    return-wide v0
.end method

.method public getServerRecordId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->serverRecordId:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->timeStamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->deleted:Z

    return v0
.end method
