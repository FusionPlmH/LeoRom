.class abstract Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"

# interfaces
.implements Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "WallpaperBNRHelper"
.end annotation


# instance fields
.field mBasePath:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mResponseInfo:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;

.field mSaveKey:Ljava/lang/String;

.field mSecurityLevel:I

.field mWhich:I

.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    iput p5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    iput-object p6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    iput-object p7, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mResponseInfo:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;

    return-void
.end method


# virtual methods
.method abstract backupWallpaperFile(Ljava/lang/String;)V
.end method

.method abstract backupWallpaperXmlFile()V
.end method

.method protected canBackup()Z
    .locals 6

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {p0, v0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->isCustomWallpaper(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    const-string v3, "WallpaperBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isCustom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->access$400(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;)Z

    move-result v1

    const-string v3, "WallpaperBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isLiveWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v3, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    iget v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    and-int/lit8 v3, v3, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    :cond_2
    :goto_1
    const-string v3, "WallpaperBackupRestoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " canBackup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method protected drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSecurityLevel:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mSaveKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    invoke-static {v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;
.end method

.method abstract getXmlFilePath()Ljava/lang/String;
.end method

.method protected isCustomWallpaper(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, v1, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 3

    const-string v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onComplete() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p1, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->backupWallpaperXmlFile()V

    :cond_0
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mResponseInfo:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;

    invoke-static {v0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;->access$300(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResponseInfo;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method

.method protected parseWallpaperUserData(Landroid/app/wallpaperbackup/WallpaperUser;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
    .locals 1

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;-><init>()V

    return-object v0
.end method

.method abstract restoreWallpaperFile(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
.end method

.method protected restoreWallpaperFileInternal(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->restoreWallpaperFileInternal(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;)V

    return-void
.end method

.method protected restoreWallpaperFileInternal(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;)V
    .locals 9

    const-string v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushWallpaperFile(), imagePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p4, :cond_0

    new-instance v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;

    iget-object v3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mWhich:I

    move-object v2, v1

    move-object v5, v0

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;ILandroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    move-object p4, v1

    :cond_0
    new-instance v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v1, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;-><init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;)V

    invoke-virtual {v1, p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;->registerFileSaverCompletion(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public sendCompleteMessage()V
    .locals 0

    return-void
.end method

.method public startBackup()V
    .locals 3

    const-string v0, "WallpaperBackupRestoreManager"

    const-string/jumbo v1, "startBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getXmlFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->deleteFile(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->deleteFile(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->backupWallpaperFile(Ljava/lang/String;)V

    return-void
.end method

.method public startRestore()V
    .locals 7

    const-string v0, "WallpaperBackupRestoreManager"

    const-string/jumbo v1, "startRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/wallpaperbackup/XmlParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getXmlFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/wallpaperbackup/XmlParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/wallpaperbackup/XmlParser;->getObject()Landroid/app/wallpaperbackup/WallpaperUser;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->parseWallpaperUserData(Landroid/app/wallpaperbackup/WallpaperUser;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mBasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->getImageFilePath(Landroid/app/wallpaperbackup/WallpaperUser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->access$500(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/wallpaperbackup/WallpaperUser;->getTiltSettingValue()I

    move-result v4

    iget-object v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    iget-object v6, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->getTiltSettingValue(Landroid/content/Context;)I

    move-result v5

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wallpaper_tilt_status"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0, v3, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->restoreWallpaperFile(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V

    return-void
.end method

.method protected updateFileIfNeed(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;)V
    .locals 0

    return-void
.end method
