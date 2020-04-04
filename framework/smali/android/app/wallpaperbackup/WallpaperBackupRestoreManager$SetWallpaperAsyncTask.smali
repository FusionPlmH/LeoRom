.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;
.super Landroid/os/AsyncTask;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetWallpaperAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;",
        "Ljava/lang/Void;",
        "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mFileSaveCompletion:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;

.field final synthetic this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;


# direct methods
.method constructor <init>(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;->this$0:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;
    .locals 21

    const/4 v0, 0x0

    aget-object v2, p1, v0

    iget-object v3, v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->context:Landroid/content/Context;

    iget-object v11, v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v12, v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->wallpaperData:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;

    iget v13, v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->which:I

    iget-object v14, v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->successResultCode:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    iget-object v15, v2, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->nextHelper:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;

    const-string v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground\n\tbitmap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n\twhich : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n\tsuccessResultCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n\tnextHelper : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_0

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v2, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->setResult(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-object v2

    :cond_0
    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v10

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v4

    iget v4, v12, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v12, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    iget v6, v12, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    iget v7, v12, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    iget v8, v12, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v4

    invoke-static {v11}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ImageMessageDigest;->isCustomWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v7

    const-string v4, "WallpaperBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pushWallpaperFile, isCustom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x1

    move-object v4, v11

    move/from16 v18, v7

    move v7, v0

    move-object/from16 v19, v8

    move/from16 v8, v16

    move-object/from16 v16, v9

    move-object v1, v10

    move/from16 v10, v17

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v0, 0x1

    move-object/from16 v5, v19

    :try_start_0
    invoke-virtual {v1, v4, v5, v0, v13}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->sendCompleteMessage()V

    :cond_2
    invoke-virtual {v2, v14}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->setResult(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-object v2

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v6, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v2, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->setResult(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->startRestore()V

    :cond_3
    return-object v2

    :cond_4
    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v16, v9

    move-object v1, v10

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    invoke-virtual {v2, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->setResult(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperBNRHelper;->startRestore()V

    :cond_5
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;

    invoke-virtual {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;->doInBackground([Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;)V
    .locals 4

    iget-object v0, p1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;->result:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;

    const-string v1, "WallpaperBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetWallpaperAsyncTask, postExecute, resultcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;->mFileSaveCompletion:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;

    invoke-interface {v1, v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;->onComplete(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$ResultCode;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;

    invoke-virtual {p0, p1}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;->onPostExecute(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RestoreWallpaperInfo;)V

    return-void
.end method

.method public registerFileSaverCompletion(Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;)V
    .locals 0

    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SetWallpaperAsyncTask;->mFileSaveCompletion:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$SaveCompletion;

    return-void
.end method
