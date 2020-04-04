.class public Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
.super Ljava/lang/Object;
.source "BackupMetaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;


# instance fields
.field private backupMeta:Landroid/content/SharedPreferences;

.field private cancelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->cancelMap:Ljava/util/Map;

    const-string v0, "BackupMeta"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
    .locals 2

    const-class v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->mMetaManager:Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public setCanceled(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->cancelMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLastBackupTime(Ljava/lang/String;J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] setLastBackupTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->backupMeta:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LAST_BACKUP_TIME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
