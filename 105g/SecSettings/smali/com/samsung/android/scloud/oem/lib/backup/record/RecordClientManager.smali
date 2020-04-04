.class public Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "RecordClientManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

.field private dataDirectory:Ljava/lang/String;

.field private final pfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final processedKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
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

    const-class v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getKeyAndDate"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getRecord"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "putRecord"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backupPrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$4;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backupComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$5;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restorePrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$6;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restoreComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$7;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "deleteRestoreFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$8;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "completeFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$9;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restoreFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$10;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "checkAndUpdateReuseDB"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$11;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "clearReuseFileDB"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$12;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "requestCancel"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$13;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->pfdMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->getListFromJsonFile(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->getFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->processedKeyMap:Ljava/util/Map;

    return-object v0
.end method

.method private getFileDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->dataDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->dataDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method private getListFromJsonFile(Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;->toString(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_2
    return-object v0

    :goto_3
    nop

    :try_start_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw v1
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    return-object v0
.end method

.method public getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->serviceHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object v0
.end method

.method public setDataDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->dataDirectory:Ljava/lang/String;

    return-void
.end method
