.class public Landroid/database/sqlite/SQLiteSdpHelper;
.super Ljava/lang/Object;
.source "SQLiteSdpHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteSdpHelper"

.field private static final mIsSdpSupported:Z = true

.field private static sService:Landroid/os/ISdpManagerService;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEngineId:I

.field private mIsInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private getEngineId()I
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA sdp_get_engine_id;"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    long-to-int v2, v0

    return v2
.end method

.method private static declared-synchronized getSdpService()Landroid/os/ISdpManagerService;
    .locals 2

    const-class v0, Landroid/database/sqlite/SQLiteSdpHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v1

    sput-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    :cond_0
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private prepare()V
    .locals 2

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->getEngineId()I

    move-result v1

    iput v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    if-gez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Landroid/database/sqlite/SQLiteSdpHelper$1;

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteSdpHelper$1;-><init>(Landroid/database/sqlite/SQLiteSdpHelper;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-static {}, Landroid/database/sqlite/SQLiteSdpHelper;->getSdpService()Landroid/os/ISdpManagerService;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public registerListener()V
    .locals 4

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->prepare()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "SQLiteSdpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener() - Engine Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v2, v3}, Landroid/os/ISdpManagerService;->registerClient(ILandroid/os/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SQLiteSdpHelper"

    const-string v3, "RemoteException from registerClient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterListener()V
    .locals 4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "SQLiteSdpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterListener() - Engine Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v2, v3}, Landroid/os/ISdpManagerService;->unregisterClient(ILandroid/os/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SQLiteSdpHelper"

    const-string v3, "RemoteException from unregisterClient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
