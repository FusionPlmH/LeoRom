.class Lcom/android/server/wallpaper/WallpaperManagerService$14;
.super Landroid/os/AsyncTask;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->makeRestoreFileSaver(III)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$key:I

.field final synthetic val$userId:I

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$key:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRestoreFileSaver, doInBackground, which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$14;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeRestoreFileSaver, doInBackground: this task is cancelled, which ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$key:I

    invoke-static {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4400(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "WallpaperManagerService"

    const-string v4, "backupData is null. Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastCallingPackage:Ljava/lang/String;

    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveRestoreWallpaperFile: restored wallpaper data, last callingPackage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-static {v4, v5, v1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4500(Lcom/android/server/wallpaper/WallpaperManagerService;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    iget v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$key:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4200(Lcom/android/server/wallpaper/WallpaperManagerService;III)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v8, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4600(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "save file success. which = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imageWallpaperPending = true, whichPending = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    iput v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    goto :goto_0

    :cond_2
    const-string v8, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "save file fail. which = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v7, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const-string v8, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set liveWallpaper, wallpaperComponent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    const/4 v4, 0x1

    :cond_4
    if-nez v4, :cond_5

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaper(Ljava/lang/String;II)V

    :cond_5
    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_6

    const-string v7, "WallpaperManagerService"

    const-string/jumbo v8, "notifyLockWallpaperChanged called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    :cond_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$14;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$key:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4800(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$key:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4900(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$5000(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$14;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
