.class public Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "RecordSyncManager.java"


# static fields
.field private static final SERVICE_HANDLER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final syncClient:Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    const-string v1, "isSyncable"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    const-string v1, "lastSyncTime"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$2;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    const-string v1, "ready"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$3;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    const-string v1, "getLocalFiles"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$4;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    const-string v1, "fileWriteDone"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$5;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    const-string v1, "complete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$6;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    const-string v1, "getLocalInfo"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$7;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    return-object v0
.end method

.method public getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object v0
.end method
