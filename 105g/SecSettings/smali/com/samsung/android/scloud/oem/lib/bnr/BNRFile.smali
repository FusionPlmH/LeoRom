.class public Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
.super Ljava/lang/Object;
.source "BNRFile.java"


# instance fields
.field private checksum:Ljava/lang/String;

.field private fileKey:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private id:J

.field private isComplete:Z

.field private isExternal:Z

.field private nextKey:Ljava/lang/String;

.field private offset:J

.field private path:Ljava/lang/String;

.field private size:J

.field private startKey:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->id:J

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->hash:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fileKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->id:J

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->hash:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fileKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isComplete:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->id:J

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->hash:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->fileKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isComplete:Z

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getNextKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->nextKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    return-wide v0
.end method

.method public getStartKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->startKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->timestamp:J

    return-wide v0
.end method

.method public getisExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isComplete:Z

    return v0
.end method

.method public setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->offset:J

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    return-void
.end method
