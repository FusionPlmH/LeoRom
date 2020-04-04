.class public Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;
.super Ljava/lang/Object;
.source "SyncItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;
    }
.end annotation


# instance fields
.field private syncItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getSyncItem()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->syncItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSyncItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->syncItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
