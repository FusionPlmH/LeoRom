.class public Lcom/android/internal/util/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# static fields
.field private static final DESKTOP_SYSUI_PACKAGE:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final DESKTOP_SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.samsung.desktopsystemui.screenshot.TakeScreenshotService"

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field private static final TAG:Ljava/lang/String; = "ScreenshotHelper"


# instance fields
.field private final SCREENSHOT_TIMEOUT_MS:I

.field private currentUserHandle:Landroid/os/UserHandle;

.field private final mContext:Landroid/content/Context;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/ScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private notifyScreenshotError()V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private takingScreenshot(IZZLandroid/os/Handler;ZI)V
    .locals 14

    move-object v9, p0

    iget-object v10, v9, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, v9, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    monitor-exit v10

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$1;

    invoke-direct {v0, v9}, Lcom/android/internal/util/ScreenshotHelper$1;-><init>(Lcom/android/internal/util/ScreenshotHelper;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, v1

    const/4 v1, 0x1

    move/from16 v12, p5

    if-ne v12, v1, :cond_1

    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.desktopsystemui"

    const-string v3, "com.samsung.desktopsystemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ScreenshotHelper"

    const-string/jumbo v3, "takeScreenshot : start desktopsystemui."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v5, p4

    goto/16 :goto_3

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ScreenshotHelper"

    const-string/jumbo v3, "takeScreenshot : systemui."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    new-instance v13, Lcom/android/internal/util/ScreenshotHelper$2;

    move-object v1, v13

    move-object v2, v9

    move v3, p1

    move-object/from16 v4, p4

    move-object v5, v0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/util/ScreenshotHelper$2;-><init>(Lcom/android/internal/util/ScreenshotHelper;ILandroid/os/Handler;Ljava/lang/Runnable;ZZI)V

    move-object v1, v13

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iput-object v2, v9, Lcom/android/internal/util/ScreenshotHelper;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v9, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v4

    iget-object v5, v9, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v5, v9, Lcom/android/internal/util/ScreenshotHelper;->currentUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v5, v9, Lcom/android/internal/util/ScreenshotHelper;->currentUserHandle:Landroid/os/UserHandle;

    :cond_4
    :goto_1
    iget-object v3, v9, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    const v4, 0x2000001

    iget-object v5, v9, Lcom/android/internal/util/ScreenshotHelper;->currentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v11, v1, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-object v1, v9, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, 0x2710

    move-object/from16 v5, p4

    :try_start_2
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    move-object/from16 v5, p4

    :goto_2
    monitor-exit v10

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v5, p4

    move/from16 v12, p5

    :goto_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public takeScreenshot(IZZLandroid/os/Handler;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takingScreenshot(IZZLandroid/os/Handler;ZI)V

    return-void
.end method

.method public takeScreenshot(IZZLandroid/os/Handler;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/util/ScreenshotHelper;->takingScreenshot(IZZLandroid/os/Handler;ZI)V

    return-void
.end method
