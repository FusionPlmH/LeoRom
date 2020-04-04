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
    .locals 10

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

    if-nez v0, :cond_1

    const-string v2, "WallpaperManagerService"

    const-string v3, "backupWallpaperData is null. Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_1
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "WallpaperManagerService"

    const-string v4, "backupData is null. Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
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

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$userId:I

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$key:I

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4200(Lcom/android/server/wallpaper/WallpaperManagerService;III)Ljava/io/File;

    move-result-object v6

    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    const-string v8, "WallpaperManagerService"

    const-string v9, "imageWallpaperPending = true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    iput v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v8, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4600(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    :cond_3
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v6, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const-string v7, "WallpaperManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set liveWallpaper, wallpaperComponent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    :cond_4
    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->val$which:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    const-string v6, "WallpaperManagerService"

    const-string/jumbo v7, "notifyLockWallpaperChanged called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$14;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v6, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
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
