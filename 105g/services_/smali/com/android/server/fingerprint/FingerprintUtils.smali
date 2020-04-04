.class public Lcom/android/server/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;,
        Lcom/android/server/fingerprint/FingerprintUtils$SemResourceManager;,
        Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;,
        Lcom/android/server/fingerprint/FingerprintUtils$Survey;,
        Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;
    }
.end annotation


# static fields
.field private static mFodString:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/fingerprint/FingerprintsUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    const-string v0, ""

    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->mFodString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 2

    sget-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintUtils;

    invoke-direct {v1}, Lcom/android/server/fingerprint/FingerprintUtils;-><init>()V

    sput-object v1, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintsUserState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintsUserState;

    invoke-direct {v1, p1, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method static synthetic lambda$semSetBrightnessForOpticalSensor$1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/mask_brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteFile(Ljava/io/File;[B)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "semSetBrightnessForOpticalSensor: Failed to write"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$semWriteTSP$0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tspMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteFile(Ljava/io/File;[B)Z

    return-void
.end method

.method public static semGetAspLevel(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_fast_recognition"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static semGetSignatureHash([B)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :goto_1
    nop

    :goto_2
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semGetSignatureHash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static semHasPrivilegedAttr(Landroid/os/Bundle;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "sem_privileged_attr"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v0
.end method

.method public static semIsAODShowState(Landroid/content/Context;IZ)Z
    .locals 6

    const-string v0, "aod_mode"

    if-eqz p2, :cond_0

    const-string v0, "aod_show_state"

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method public static semIsAODTapToShowEnabled(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODShowState(Landroid/content/Context;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_tap_to_show_mode"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method static semIsDesktopMode(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method static semIsDualDexMode(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static semIsSmartViewDisplay(Landroid/content/Context;)Z
    .locals 9

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x4

    const-string/jumbo v5, "media_router"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v8

    and-int/2addr v6, v8

    if-eqz v6, :cond_3

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->semGetStatusCode()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_3

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Audio"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result v8

    if-eqz v8, :cond_5

    return v4

    :cond_5
    return v1
.end method

.method public static semReadFile(Ljava/io/File;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    nop

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    move-object v0, v2

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_0
    nop

    :goto_1
    return-object v0

    :cond_1
    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failure to read file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :goto_3
    return-object v0

    :goto_4
    nop

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    const-string v4, "FingerprintService"

    const-string/jumbo v5, "failed to close file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_3
    :goto_5
    throw v2

    :cond_4
    :goto_6
    const-string v1, "FingerprintService"

    const-string v2, "Invalid file info, "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static semSetBrightnessForOpticalSensor(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetBrightnessForOpticalSensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintUtils$gP5tgkmtjBdZw-CWve96rtsd_8o;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintUtils$gP5tgkmtjBdZw-CWve96rtsd_8o;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static semWriteFile(Ljava/io/File;[B)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "writeFile : failed to close file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "writeFile : failed to write file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    return v1

    :goto_2
    nop

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "FingerprintService"

    const-string/jumbo v5, "writeFile : failed to close file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_1
    :goto_3
    throw v2
.end method

.method public static semWriteTSP(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->mFodString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/android/server/fingerprint/FingerprintUtils;->mFodString:Ljava/lang/String;

    new-instance v0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintUtils$shzF9XUGDcu4Cp6IeRuwRfioLJc;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintUtils$shzF9XUGDcu4Cp6IeRuwRfioLJc;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addFingerprintForUser(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/fingerprint/FingerprintsUserState;->addFingerprint(II)V

    return-void
.end method

.method public getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFingerprints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFingerprintIdForUser(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->removeFingerprint(I)V

    return-void
.end method

.method public renameFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/server/fingerprint/FingerprintsUserState;->renameFingerprint(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public semAddFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintsUserState;->semAddFingerprint(IILjava/lang/CharSequence;I)V

    return-void
.end method

.method public semGetBigDataCounts(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semGetBigDataCounts()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method semGetFingerprintName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFingerprints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    if-ne v3, p3, :cond_0

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semGetFingerprintName : Unknown finger ID"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1
.end method

.method public semGetTouchCount(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semGetTouchCount()I

    move-result v0

    return v0
.end method

.method public semIsAdaptiveIconEnabled(Landroid/content/Context;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semIsAdaptiveIconEnabled()Z

    move-result v0

    return v0
.end method

.method public semSaveBigDataCounts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->semSaveBigDataCounts(Ljava/lang/String;)V

    return-void
.end method

.method public semSaveTouchCount(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->semSaveTouchCount(I)V

    return-void
.end method
