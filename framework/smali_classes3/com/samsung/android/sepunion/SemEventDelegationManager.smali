.class public Lcom/samsung/android/sepunion/SemEventDelegationManager;
.super Ljava/lang/Object;
.source "SemEventDelegationManager.java"


# static fields
.field public static final BUNDLE_KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final BUNDLE_KEY_COMPONENT_LIST:Ljava/lang/String; = "component_list"

.field public static final BUNDLE_KEY_PACKAGE_LIST:Ljava/lang/String; = "package_list"

.field public static final BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final BUNDLE_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final BUNDLE_KEY_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final CUSTOM_EVENT_ACTIVITY_STATE:Ljava/lang/String; = "monitor_activity_state"

.field public static final CUSTOM_EVENT_CALL_STATE:Ljava/lang/String; = "monitor_call_state"

.field public static final CUSTOM_EVENT_PACKAGE_STATE:Ljava/lang/String; = "monitor_package_state"

.field public static final EXTRA_KEY_ACTION_ORIGIN:Ljava/lang/String; = "action_origin"

.field public static final EXTRA_KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final EXTRA_KEY_COMPONENT_NAME:Ljava/lang/String; = "component"

.field public static final EXTRA_KEY_IS_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final EXTRA_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field public static final EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final EXTRA_KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final EXTRA_KEY_URI:Ljava/lang/String; = "uri"

.field public static final PACKAGE_STATE_ADDED:Ljava/lang/String; = "package_added"

.field public static final PACKAGE_STATE_MODIFIED:Ljava/lang/String; = "package_modified"

.field public static final PACKAGE_STATE_REMOVED:Ljava/lang/String; = "package_removed"

.field public static final SERVICE_NAME:Ljava/lang/String; = "semeventdelegator"

.field private static final TAG:Ljava/lang/String;

.field private static sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEPUNION."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sepunion/SemEventDelegationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sStaticLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sepunion"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string/jumbo v2, "semeventdelegator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    sget-object v3, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public registerContentUri(Landroid/net/Uri;Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForUri(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterAll()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->clearPendingIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterContentUri(Landroid/net/Uri;Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForUri(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
