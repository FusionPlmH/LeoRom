.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;
.super Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CroppedWallpaperBNRHelper"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"


# instance fields
.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct/range {p0 .. p7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V

    invoke-static {p7, p3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->access$602(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;I)I

    return-void
.end method

.method private getWallpaperLockBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getLockWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"

    const-string v5, "Can\'t decode file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_0
    :goto_2
    return-object v0
.end method


# virtual methods
.method backupWallpaperFile(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->canBackup()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void

    :cond_0
    const-string v0, "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupWallpaperFile(), imagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mWhich:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v4, "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"

    const-string/jumbo v5, "wallpaperDrawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->getWallpaperLockBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v1, "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bitmap is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    goto :goto_4

    :cond_3
    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mSecurityLevel:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    :goto_2
    move-object v7, v1

    goto :goto_3

    :cond_4
    const-string v1, ""

    goto :goto_2

    :goto_3
    new-instance v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    sget-object v8, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_CROPPED_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-object v3, v1

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    new-instance v3, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v3, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;)V

    invoke-virtual {v3, p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->registerFileSaverCompletion(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;)V

    new-array v2, v2, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_4
    return-void
.end method

.method backupWallpaperXmlFile()V
    .locals 4

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUser;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperUser;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mWhich:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->access$500(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getTiltSettingValue(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->getXmlFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mWhich:I

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

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mWhich:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "wallpaper/lockscreen_wallpaper.jpg"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wallpaper/wallpaper.png"

    :cond_2
    :goto_0
    const-string v1, "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"

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

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->mWhich:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "lockscreen.xml"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "wallpaper.xml"

    :goto_0
    const-string v1, "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"

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

.method restoreWallpaperFile(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 1

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_CROPPED_SUCCESS:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->restoreWallpaperFileInternal(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method

.method public sendCompleteMessage()V
    .locals 2

    const-string v0, "WallpaperBackupRestoreManager.CroppedWallpaperBNRHelper"

    const-string/jumbo v1, "sendCompleteMessage, onComplete() call."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$CroppedWallpaperBNRHelper;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method
