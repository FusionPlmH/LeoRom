.class public Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ImageMessageDigest;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;,
        Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;
    }
.end annotation


# static fields
.field private static final DEX_WALLPAPER_FILE_NAME:Ljava/lang/String; = "wallpaper_desktop"

.field private static final DEX_WALLPAPER_LOCK_FILE_NAME:Ljava/lang/String; = "wallpaper_lock_images/wallpaper_desktop_lock"

.field private static final DEX_WALLPAPER_LOCK_ORI_FILE_NAME:Ljava/lang/String; = "wallpaper_lock_images/wallpaper_desktop_lock_orig"

.field private static final DEX_WALLPAPER_ORI_FILE_NAME:Ljava/lang/String; = "wallpaper_desktop_orig"

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final ERROR_KEY:Ljava/lang/String; = "ERR_CODE"

.field private static final EXTRA_ERR_CODE:Ljava/lang/String; = "EXTRA_ERR_CODE"

.field private static final HIGH:I = 0x1

.field private static final IMAGE_DEX_FOLDER_NAME:Ljava/lang/String; = "wallpaper_dex"

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.png"

.field private static final IMAGE_FOLDER_NAME:Ljava/lang/String; = "wallpaper"

.field private static final IMAGE_ORI_FOLDER_NAME:Ljava/lang/String; = "wallpaper_original"

.field private static final LOCK_IMAGE_FILE_NAME:Ljava/lang/String; = "lockscreen_wallpaper.jpg"

.field private static final NORMAL:I = 0x0

.field private static final PERMISSION_COM_WSSNPS:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field private static final REQUIRED_SIZE_KEY:Ljava/lang/String; = "REQ_SIZE"

.field private static final REQ_MINIMUM_SIZE:I = 0xa00000

.field private static final REQ_SUCCESS_SIZE:I = 0x0

.field private static final RESPONSE_BACKUP_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

.field private static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field private static final RESPONSE_RESTORE_LOCKSCREEN:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

.field private static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field private static final RESULT_KEY:Ljava/lang/String; = "RESULT"

.field private static final SENSOR_TYPE_INTERRUPT_GYROSCOPE:I = 0x1002b

.field private static final SESSION_TIME_KEY:Ljava/lang/String; = "EXPORT_SESSION_TIME"

.field private static final SETTINGS_KEYGUARD_TRANSPARENCY:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field private static final SETTINGS_KEYGUARD_TRANSPARENCY_DEX:Ljava/lang/String; = "dex_lockscreen_wallpaper_transparency"

.field private static final SETTINGS_KEYGUARD_TRANSPARENCY_SUB_DISPLAY:Ljava/lang/String; = "sub_display_lockscreen_wallpaper_transparency"

.field private static final SETTINGS_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "lockscreen_wallpaper"

.field private static final SETTINGS_SYSTEM_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETTINGS_SYSTEM_TRANSPARENCY_DEX:Ljava/lang/String; = "dex_system_wallpaper_transparency"

.field private static final SETTINGS_SYSTEM_TRANSPARENCY_SUB_DISPLAY:Ljava/lang/String; = "sub_display_system_wallpaper_transparency"

.field private static final SETTINGS_WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field private static final SOURCE_KEY:Ljava/lang/String; = "SOURCE"

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager"

.field private static final WALLPAPERCROPPER2_LOCK_FILE_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/files/backupwallpapers/original_file_lock.jpg"

.field private static final WALLPAPERCROPPER2_LOCK_XML_FILE_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/files/backupwallpapers/backup_lock.xml"

.field private static final WALLPAPERCROPPER2_SYSTEM_FILE_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/files/backupwallpapers/original_file_home.jpg"

.field private static final WALLPAPERCROPPER2_SYSTEM_XML_FILE_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/files/backupwallpapers/backup_home.xml"

.field private static final WALLPAPER_DEX_LOCK_XML_NAME:Ljava/lang/String; = "dex_lock_wallpaper.xml"

.field private static final WALLPAPER_DEX_XML_NAME:Ljava/lang/String; = "dex_wallpaper.xml"

.field private static final WALLPAPER_LOCK_XML_NAME:Ljava/lang/String; = "lockscreen.xml"

.field private static final WALLPAPER_ORI_LOCK_XML_NAME:Ljava/lang/String; = "lockscreen_original.xml"

.field private static final WALLPAPER_ORI_XML_NAME:Ljava/lang/String; = "wallpaper_original.xml"

.field private static WALLPAPER_TYPES:I = 0x0

.field private static final WALLPAPER_XML_NAME:Ljava/lang/String; = "wallpaper.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->WALLPAPER_TYPES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->WALLPAPER_TYPES:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->isRestoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->response(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->isInterruptGyroSensorSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private checkSaveAvailable(Ljava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;
    .locals 12

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xa00000

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v8

    const-string v9, "WallpaperBackupRestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file doesn\'t exists, Result of making the directory : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v9

    move-wide v0, v9

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v9

    mul-long v4, v0, v2

    nop

    const-wide/32 v7, 0xa00000

    cmp-long v7, v4, v7

    if-gez v7, :cond_1

    const-string v7, "WallpaperBackupRestoreManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StatFs : availableBlocks="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " blockSizeInBytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " freeSpaceInBytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->STORAGE_FULL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    :cond_1
    return-object v6

    :catch_0
    move-exception v7

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6
.end method

.method private static isInterruptGyroSensorSupported(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isLiveWallpaper(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isRestoreCase(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private pushBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    invoke-virtual {v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->startBackup()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pushRestoreFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V
    .locals 10

    new-instance v8, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$OriginalWallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    invoke-virtual {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->startRestore()V

    new-instance v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    invoke-virtual {v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->startRestore()V

    return-void
.end method

.method private response(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
            "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const-string v5, "WallpaperBackupRestoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "response which = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\taction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\tresultCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n\terrorCode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n\trequiredSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\tsource = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n\textraResultCode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v8, "WallpaperBackupRestoreManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "RESULT"

    invoke-virtual/range {p4 .. p4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->getCode()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "ERR_CODE"

    invoke-virtual/range {p5 .. p5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->getCode()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "REQ_SIZE"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "SOURCE"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_1

    const-string v6, "EXPORT_SESSION_TIME"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->PARTIAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    if-ne v1, v6, :cond_6

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "Crop"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Original"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Dex"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    sget-object v10, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_CROPPED_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/4 v11, 0x0

    if-ne v9, v10, :cond_2

    const-string v10, "Crop"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Crop"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v10, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_ORIGINAL_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    if-ne v9, v10, :cond_3

    const-string v10, "Original"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Original"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v10, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_DEX_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    if-ne v9, v10, :cond_4

    const-string v10, "Dex"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Dex"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    goto :goto_1

    :cond_5
    const-string v8, "EXTRA_ERR_CODE"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_6
    const-string v6, "com.wssnps.permission.COM_WSSNPS"

    move-object v8, p1

    invoke-virtual {v8, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v6, "WallpaperBackupRestoreManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method getTiltSettingValue(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wallpaper_tilt_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p4

    const-string v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackupWallpaper which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " basePath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " source="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    goto :goto_0

    :cond_1
    move/from16 v2, p3

    move-object v1, v3

    :goto_1
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object v3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/high16 v15, 0xa00000

    move-object/from16 v14, p0

    invoke-direct {v14, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->checkSaveAvailable(Ljava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    move-result-object v13

    sget-object v5, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    invoke-virtual {v13, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    sget-object v5, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "WallpaperBackupRestoreManager"

    const-string/jumbo v6, "startBackupWallpaper is return because precondition fail"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/16 v16, 0x0

    move-object v5, v14

    move-object/from16 v6, p1

    move v7, v2

    move-object v8, v1

    move-object v10, v13

    move v11, v15

    move-object/from16 v17, v12

    move-object v12, v4

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v5 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->response(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_3
    move-object/from16 v18, v13

    new-instance v12, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;

    move-object v5, v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v1

    move v9, v15

    move-object v10, v4

    move-object/from16 v11, p7

    invoke-direct/range {v5 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move v7, v2

    move-object v8, v0

    move/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v5 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->pushBackupFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    return-void
.end method

.method public startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v6, ""

    const-string v7, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p4

    const-string v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRestoreWallpaper which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " basePath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " source="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " securityLevel="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p6

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    goto :goto_0

    :cond_1
    move/from16 v2, p3

    move-object v1, v3

    :goto_1
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object v3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/high16 v16, 0xa00000

    move-object/from16 v14, p0

    invoke-direct {v14, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->checkSaveAvailable(Ljava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    move-result-object v13

    sget-object v5, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;

    invoke-virtual {v13, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    sget-object v5, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "WallpaperBackupRestoreManager"

    const-string/jumbo v6, "startRestoreWallpaper is return because precondition fail"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const/16 v17, 0x0

    move-object v5, v14

    move-object/from16 v6, p1

    move v7, v2

    move-object v8, v1

    move-object v10, v13

    move/from16 v11, v16

    move-object/from16 v18, v12

    move-object v12, v4

    move-object/from16 v19, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-direct/range {v5 .. v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->response(Landroid/content/Context;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ErrorCode;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_3
    move-object/from16 v19, v13

    new-instance v12, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;

    const-string v11, ""

    move-object v5, v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v1

    move/from16 v9, v16

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move v8, v2

    move-object v9, v0

    move v10, v15

    move-object/from16 v11, p7

    invoke-direct/range {v6 .. v12}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->pushRestoreFile(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    return-void
.end method

.method public startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v6, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
