.class final Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;
.super Ljava/lang/Object;
.source "LeoGlobalAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusionleo/LeoX/server/LeoGlobalAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeoAction"
.end annotation


# static fields
.field private static mService:Lcom/android/internal/statusbar/IStatusBarService;

.field static final mServiceAquireLock:Ljava/lang/Object;

.field static mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mServiceAquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WeChatScan(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Y29tLmxlby5BQ1RJT05fUEFZ"

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->splitScreen()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->expandNotificationPanel()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->setFlashlight(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->expandSettingsPanel()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->clearAllNotifications()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->WeChatScan(Landroid/content/Context;)V

    return-void
.end method

.method private static clearAllNotifications()V
    .locals 2

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private static expandNotificationPanel()V
    .locals 2

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private static expandSettingsPanel()V
    .locals 2

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method static getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    sget-object v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    sput-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    const-class v0, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    sput-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static setFlashlight(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "bGVvX2ZsYXNobGlnaHRfYWN0aW9u"

    invoke-static {v1}, Lcom/fusionleo/LeoX/server/LeoConfig;->rt1001foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static splitScreen()V
    .locals 1

    invoke-static {}, Lcom/fusionleo/LeoX/server/LeoGlobalAction$LeoAction;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    return-void
.end method
