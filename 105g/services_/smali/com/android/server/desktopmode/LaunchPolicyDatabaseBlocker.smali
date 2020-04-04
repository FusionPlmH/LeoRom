.class Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;
.super Ljava/lang/Object;
.source "LaunchPolicyDatabaseBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockerRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mBlockerRegistered:Z

    iput-object p1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mBlockerRegistered:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)Lcom/android/server/desktopmode/IStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->unregisterBlocker()V

    return-void
.end method

.method private clearFileObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    const-string v1, "clearFileObserver()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mFileObserver:Landroid/os/FileObserver;

    :cond_1
    return-void
.end method

.method private sendUpdateDatabaseBroadcast()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setFileObserver()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.desktoplauncher"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFileObserver(), dataPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker$1;-><init>(Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mFileObserver:Landroid/os/FileObserver;

    iget-object v2, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    const-string v2, "Failed to find database path"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterBlocker()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mBlockerRegistered:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterBlocker()"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mBlockerRegistered:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->clearFileObserver()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isLaunchPolicyDatabaseCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBlocked(), Database is already created?! Now unregistering blocker."

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->setLaunchPolicyDatabaseCreated(Z)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->unregisterBlocker()V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBlocked(), Database is not created yet. Sending broadcast."

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->sendUpdateDatabaseBroadcast()V

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mContext:Landroid/content/Context;

    const v1, 0x10402b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerBlocker()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mBlockerRegistered:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerBlocker()"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mBlockerRegistered:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->setFileObserver()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/LaunchPolicyDatabaseBlocker;->sendUpdateDatabaseBroadcast()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
