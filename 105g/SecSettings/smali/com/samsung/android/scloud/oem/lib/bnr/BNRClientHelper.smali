.class public Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "BNRClientHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private OPERATION:Ljava/lang/String;

.field private backupClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

.field private final downloadFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final processedKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final restoreFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    const-class v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->downloadFileList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->backupClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getClientInfo"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backupPrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getItemKey"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getFileMeta"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backupItem"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "getFilePath"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "backupComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restorePrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restoreItem"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restoreFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    const-string v1, "restoreComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearData()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearRestoredData(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->addToList(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->downloadFileList:Ljava/util/List;

    return-object v0
.end method

.method private addToList(ILjava/lang/String;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->downloadFileList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private clearData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->downloadFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private clearRestoredData(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove restored data in previous failed restoring.. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->clearRestoreData(Landroid/content/Context;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->processedKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove restored files in previous failed restoring.. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_scloud_origin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->restoreFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->downloadFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->downloadFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearPreRestoredData() delete, name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", deleted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->downloadFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method private static convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    const-string v7, "key"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "timestamp"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v7, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToBNRItems: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw v1
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->backupClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    return-object v0
.end method

.method public getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object v0
.end method
