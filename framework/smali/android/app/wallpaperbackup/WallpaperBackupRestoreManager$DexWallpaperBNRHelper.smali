.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;
.super Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexWallpaperBNRHelper"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager.DexWallpaperBNRHelper"


# instance fields
.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V
    .locals 8

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    or-int/lit8 v3, p3, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    or-int/lit8 v0, p3, 0x8

    invoke-static {p7, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->access$602(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;I)I

    return-void
.end method

.method private getOriginalImageFilePath(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    if-ne v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wallpaper_lock_images/wallpaper_desktop_lock_orig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wallpaper_desktop_orig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    if-ne v2, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wallpaper_lock_images/wallpaper_desktop_lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wallpaper_desktop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method backupWallpaperFile(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->canBackup()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void

    :cond_0
    const-string v0, "WallpaperBackupRestoreManager.DexWallpaperBNRHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupWallpaperFile(), imagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "WallpaperBackupRestoreManager.DexWallpaperBNRHelper"

    const-string/jumbo v4, "wallpaperDrawable is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_2

    const-string v3, "WallpaperBackupRestoreManager.DexWallpaperBNRHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bitmap is null. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    goto :goto_3

    :cond_2
    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mSecurityLevel:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    :goto_1
    move-object v9, v3

    goto :goto_2

    :cond_3
    const-string v3, ""

    goto :goto_1

    :goto_2
    new-instance v3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;

    iget-object v6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    sget-object v10, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_DEX_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-object v5, v3

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v5 .. v10}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    new-instance v5, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;

    iget-object v6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v5, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;)V

    invoke-virtual {v5, p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->registerFileSaverCompletion(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;)V

    new-array v4, v4, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-virtual {v5, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    return-void
.end method

.method backupWallpaperXmlFile()V
    .locals 4

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->getXmlFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    invoke-static {v1, v2, v0}, Landroid/app/wallpaperbackup/GenerateXML;->generateXML(Ljava/io/File;ILandroid/app/wallpaperbackup/WallpaperUser;)V

    return-void
.end method

.method getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/wallpaperbackup/WallpaperUser;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "wallpaper_dex/lockscreen_wallpaper.jpg"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wallpaper_dex/wallpaper.png"

    :cond_2
    :goto_0
    const-string v1, "WallpaperBackupRestoreManager.DexWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageFilePath(), path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getXmlFilePath()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->mWhich:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "dex_lock_wallpaper.xml"

    goto :goto_0

    :cond_0
    const-string v0, "dex_wallpaper.xml"

    :goto_0
    const-string v1, "WallpaperBackupRestoreManager.DexWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXmlFilePath(), path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected isCustomWallpaper(Landroid/content/Context;I)Z
    .locals 4

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "dex_system_wallpaper_transparency"

    goto :goto_0

    :cond_0
    const-string v0, "dex_lockscreen_wallpaper_transparency"

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method restoreWallpaperFile(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 1

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_DEX_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$DexWallpaperBNRHelper;->restoreWallpaperFileInternal(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method
