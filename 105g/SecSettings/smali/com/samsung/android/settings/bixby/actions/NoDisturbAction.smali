.class public Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;
.super Ljava/lang/Object;
.source "NoDisturbAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getZenMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->TAG:Ljava/lang/String;

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v2
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->getZenMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doSetAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->setZenMode(ILandroid/net/Uri;)V

    :goto_0
    const-string/jumbo v1, "success"

    return-object v1
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/NoDisturbAction;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
