.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;
.super Landroid/os/AsyncTask;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileSaverAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;",
        "Ljava/lang/Void;",
        "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;",
        ">;"
    }
.end annotation


# instance fields
.field mFileSaveCompletion:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;

.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;
    .locals 11

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->filePath:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->key:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;->successResultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v5, "WallpaperBackupRestoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filePath =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const-string v7, "WallpaperBackupRestoreManager"

    const-string v8, "FileSaverAsyncTask, return RESULT_FAIL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    return-object v7

    :cond_0
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v8

    invoke-static {v6, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v8

    move-object v7, v8

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v2, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v8, "WallpaperBackupRestoreManager"

    const-string v9, "FileSaverAsyncTask, bitmap compress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    nop

    const-string v8, "WallpaperBackupRestoreManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileSaverAsyncTask, finish compress. return resultCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :goto_2
    invoke-static {v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;

    invoke-virtual {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->doInBackground([Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaveInfo;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V
    .locals 3

    const-string v0, "WallpaperBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSaverAsyncTask, postExecute, resultcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->mFileSaveCompletion:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;

    invoke-interface {v0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->onPostExecute(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method

.method public registerFileSaverCompletion(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$FileSaverAsyncTask;->mFileSaveCompletion:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;

    return-void
.end method
