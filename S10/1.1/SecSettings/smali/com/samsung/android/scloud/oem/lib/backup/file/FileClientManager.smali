.class public Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "FileClientManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

.field private final needToBeProcessedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final processedKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->processedKeyList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->needToBeProcessedFileList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backupPrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getFileMeta"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$2;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backupComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$3;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restorePrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string/jumbo v1, "transactionBegin"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$5;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getFileList"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$6;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restoreFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string/jumbo v1, "transactionEnd"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$8;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restoreComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "deleteRestoreFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$10;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "checkAndUpdateReuseDB"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$11;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "completeFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$12;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "clearReuseFileDB"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$13;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "requestCancel"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$14;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->processedKeyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->needToBeProcessedFileList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    return-object v0
.end method

.method public getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object v0
.end method
