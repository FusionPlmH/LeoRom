.class final Lcom/samsung/android/authenticator/AuthenticatorManager;
.super Ljava/lang/Object;
.source "AuthenticatorManager.java"


# static fields
.field private static final ASSET_DOWNLOADER_TRUSTED_APP_HANDLE:I = 0x3

.field private static final ASSET_TRUSTED_APP_HANDLE_BASE:I = 0xf4240

.field private static final ASSET_TRUSTED_APP_HANDLE_LIMIT:I = 0x1e847f

.field private static final AUTHENTICATOR_TRUSTED_APP_HANDLE:I = 0x0

.field private static final DEVICE_ROOT_KEY_TRUSTED_APP_HANDLE:I = 0x2

.field private static final FILE_TRUSTED_APP_HANDLE_BASE:I = 0x1e8480

.field private static final FILE_TRUSTED_APP_HANDLE_LIMIT:I = 0x2dc6bf

.field private static final FINGERPRINT_TRUSTED_APP_HANDLE:I = 0x1

.field private static final MAX_TRUSTED_APP_HANDLE:I = 0xf423f

.field private static final TAG:Ljava/lang/String; = "AM"

.field private static sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;


# instance fields
.field private final mAssetTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Lcom/samsung/android/authenticator/TrustedApplication;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/io/File;",
            "Lcom/samsung/android/authenticator/TrustedApplication;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;",
            "Lcom/samsung/android/authenticator/TrustedApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0xf4240

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x1e8480

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private getAssetTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/authenticator/TrustedApplication;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/authenticator/TrustedApplication;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getFileTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/authenticator/TrustedApplication;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/authenticator/TrustedApplication;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method static declared-synchronized getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;
    .locals 2

    const-class v0, Lcom/samsung/android/authenticator/AuthenticatorManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/authenticator/AuthenticatorManager;->sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/authenticator/AuthenticatorManager;

    invoke-direct {v1}, Lcom/samsung/android/authenticator/AuthenticatorManager;-><init>()V

    sput-object v1, Lcom/samsung/android/authenticator/AuthenticatorManager;->sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/authenticator/AuthenticatorManager;->sAuthenticatorManager:Lcom/samsung/android/authenticator/AuthenticatorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getReservedTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/authenticator/TrustedApplication;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/authenticator/TrustedApplication;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->isReservedTrustedApplication(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getReservedTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->isAssetTrustedApplication(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getAssetTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->isFileTrustedApplication(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getFileTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    goto :goto_0

    :goto_1
    nop

    return-object v0

    :cond_2
    const-string v0, "AM"

    const-string/jumbo v1, "taHandle is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private isAssetTrustedApplication(I)Z
    .locals 1

    const v0, 0xf4240

    if-gt v0, p1, :cond_0

    const v0, 0x1e847f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFileTrustedApplication(I)Z
    .locals 1

    const v0, 0x1e8480

    if-gt v0, p1, :cond_0

    const v0, 0x2dc6bf

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReservedTrustedApplication(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private makeAssetTrustedApplication(Landroid/content/res/AssetFileDescriptor;)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 8

    new-instance v7, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;

    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;-><init>(ILandroid/os/ParcelFileDescriptor;JJ)V

    return-object v7
.end method

.method private makeFileTrustedApplication(Ljava/io/File;)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 9

    const/high16 v0, 0x10000000

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v8, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;

    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplicationHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v6

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/authenticator/DownloadedAuthenticatorTrustedApplication;-><init>(ILandroid/os/ParcelFileDescriptor;JJ)V

    return-object v8

    :catch_0
    move-exception v0

    const-string v1, "AM"

    const-string/jumbo v2, "open failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private makeReservedTrustedApplication(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Lcom/samsung/android/authenticator/TrustedApplication;
    .locals 2

    sget-object v0, Lcom/samsung/android/authenticator/AuthenticatorManager$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I

    invoke-virtual {p1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "AM"

    const-string v1, "Not supported type"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/authenticator/TadTrustedApplication;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/authenticator/TadTrustedApplication;-><init>(I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/authenticator/DeviceRootKeyTrustedApplication;-><init>(I)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;-><init>(I)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorTrustedApplication;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method deleteFile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method execute(I[B)[B
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "AM"

    const-string/jumbo v2, "ta is not found"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    :cond_0
    invoke-interface {v0, p2}, Lcom/samsung/android/authenticator/TrustedApplication;->execute([B)[B

    move-result-object v1

    return-object v1
.end method

.method getCommandVersion()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorService;->getVersion()I

    move-result v0

    return v0
.end method

.method getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorService;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method load(Landroid/content/res/AssetFileDescriptor;)I
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "AM"

    const-string v1, "file is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/TrustedApplication;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->makeAssetTrustedApplication(Landroid/content/res/AssetFileDescriptor;)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mAssetTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/authenticator/TrustedApplication;->load()I

    move-result v1

    return v1
.end method

.method load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string v1, "AM"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authenticator/TrustedApplication;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->makeReservedTrustedApplication(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "AM"

    const-string/jumbo v3, "mrta failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mReservedTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/authenticator/TrustedApplication;->load()I

    move-result v0

    return v0
.end method

.method load(Ljava/io/File;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string v1, "AM"

    const-string v2, "file is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/authenticator/TrustedApplication;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->makeFileTrustedApplication(Ljava/io/File;)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "AM"

    const-string/jumbo v3, "mfta failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/authenticator/AuthenticatorManager;->mFileTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/authenticator/TrustedApplication;->load()I

    move-result v0

    return v0
.end method

.method readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unload(I)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getTrustedApplication(I)Lcom/samsung/android/authenticator/TrustedApplication;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "AM"

    const-string/jumbo v3, "ta is not found"

    invoke-static {v2, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/authenticator/TrustedApplication;->unload()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method writeFile(Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {p2, p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->writeFile([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method
