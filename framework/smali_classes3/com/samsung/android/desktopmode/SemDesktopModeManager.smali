.class public final Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.super Ljava/lang/Object;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    }
.end annotation


# static fields
.field public static final COMMAND_CHECK_VISIBILITY:I = 0x4

.field public static final COMMAND_HIDE_VISIBILITY:I = 0x2

.field public static final COMMAND_SHOW_VISIBILITY:I = 0x1

.field public static final COMMAND_TOGGLE_VISIBILITY:I = 0x3

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final TAG:Ljava/lang/String;

.field public static final TARGET_WINDOW_APP_TRAY:I = 0x10

.field public static final TARGET_WINDOW_DEFAULT_AUDIO_NOTIFICATION:I = 0x12

.field public static final TARGET_WINDOW_LABS_NOTIFICATION:I = 0x11

.field public static final UI_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice"

.field private static mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mService:Lcom/samsung/android/desktopmode/IDesktopMode;


# instance fields
.field private mBlockers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopModeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/desktopmode/IDesktopMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    sput-object p2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isDesktopDockConnected()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string v2, "isDesktopDockConnected: Desktop Mode feature not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopDockConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1
.end method

.method public static isDesktopMode()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_2
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string v2, "Desktop Mode feature not available or SemDesktopModeManager not instantiated. Please check Configuration.semDesktopModeEnabled instead."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListener: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    :cond_2
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerEventListener(Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterListener: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;

    if-nez v1, :cond_3

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterEventListener(Lcom/samsung/android/desktopmode/IEventListener;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->nullOutListenerLocked()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public commandDesktopModeService(II)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopMode;->commandDesktopModeService(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public forceSetHdmiSettings(Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopMode;->setHdmiSettings(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAllowed()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->isAllowed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceConnected()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDeviceConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerBlocker: DesktopModeBlocker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerBlocker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerBlocker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    return-void

    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system may call registerBlocker()"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setOnCommandReceivedListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;)Z
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;)V

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1, v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :goto_1
    nop

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterBlocker: DesktopModeBlocker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;

    if-nez v1, :cond_2

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterBlocker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterBlocker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->nullOutBlockerLocked()V

    monitor-exit v0

    return-void

    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system may call unregisterBlocker()"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;

    if-nez v1, :cond_2

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;->nullOutListenerLocked()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
