.class public Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private attachmentFileInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getFileInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;->attachmentFileInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;->attachmentFileInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public getTimeStamp(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;->attachmentFileInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
