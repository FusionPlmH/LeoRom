.class public Lcom/samsung/android/settings/eternal/EternalService;
.super Landroid/app/Service;
.source "EternalService.java"


# instance fields
.field private final CANCEL_ACTION:I

.field private final EXTRA_ACTION:Ljava/lang/String;

.field private final EXTRA_ERROR_CODE:Ljava/lang/String;

.field private final EXTRA_EXPORT_SESSION_TIME:Ljava/lang/String;

.field private final EXTRA_REQUEST_SIZE:Ljava/lang/String;

.field private final EXTRA_RESULT:Ljava/lang/String;

.field private final EXTRA_SOURCE:Ljava/lang/String;

.field private final FILE_NAME:Ljava/lang/String;

.field private final REQUEST_BACKUP_SETTING_BACKUP:Ljava/lang/String;

.field private final RESPONSE_BACKUP_SETTINGS:Ljava/lang/String;

.field private final RESPONSE_RESTORE_SETTINGS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final WSS_PERMISSION:Ljava/lang/String;

.field private mBackupFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mConvertFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

.field private mFileUtils:Lcom/samsung/android/settings/eternal/utils/FileUtils;

.field private final mHandler:Landroid/os/Handler;

.field private mRestoreFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mValidationFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mWorkerExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "Eternal/EternalService"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->TAG:Ljava/lang/String;

    const-string v0, "RESULT"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->EXTRA_RESULT:Ljava/lang/String;

    const-string v0, "ERR_CODE"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->EXTRA_ERROR_CODE:Ljava/lang/String;

    const-string v0, "REQ_SIZE"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->EXTRA_REQUEST_SIZE:Ljava/lang/String;

    const-string v0, "SOURCE"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->EXTRA_SOURCE:Ljava/lang/String;

    const-string v0, "EXPORT_SESSION_TIME"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->EXTRA_EXPORT_SESSION_TIME:Ljava/lang/String;

    const-string v0, "ACTION"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->EXTRA_ACTION:Ljava/lang/String;

    const-string v0, "/SettingsBackup.xml"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->FILE_NAME:Ljava/lang/String;

    const-string v0, "com.wssnps.permission.COM_WSSNPS"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->WSS_PERMISSION:Ljava/lang/String;

    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_SETTINGS"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->REQUEST_BACKUP_SETTING_BACKUP:Ljava/lang/String;

    const-string v0, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->RESPONSE_BACKUP_SETTINGS:Ljava/lang/String;

    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_SETTINGS"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->RESPONSE_RESTORE_SETTINGS:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->CANCEL_ACTION:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/settings/eternal/EternalService$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/EternalService$8;-><init>(Lcom/samsung/android/settings/eternal/EternalService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/controller/EternalController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/EternalService;->getAvailableFreeSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/eternal/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/utils/FileUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mFileUtils:Lcom/samsung/android/settings/eternal/utils/FileUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eternal/EternalService;->deleteFiles(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/eternal/EternalService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/EternalService;->getUidOfIntentAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/EternalService;->getResponseAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/eternal/EternalService;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eternal/EternalService;->validationRequest(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/eternal/EternalService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/EternalService;->fetchValidation(I)V

    return-void
.end method

.method private backupDataInternal(Landroid/os/Bundle;I)Z
    .locals 11

    const-string v0, "Eternal/EternalService"

    const-string v1, "backupDataInternal()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "SAVE_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/samsung/android/settings/eternal/EternalService;->hasExternalStoragePermission()Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    const-string v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/eternal/EternalService;->sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    return v10

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->init(Landroid/content/Context;)V

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/samsung/android/settings/eternal/EternalService$1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v9

    move-object v4, v0

    move-object v5, v8

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/eternal/EternalService$1;-><init>(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    return v1
.end method

.method private cancelBackup(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "Eternal/EternalService"

    const-string v1, "cancelBackup()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mBackupFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/eternal/EternalService$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/eternal/EternalService$2;-><init>(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method private convertDataInternal(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->init(Landroid/content/Context;)V

    :goto_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x330f96a5

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const v4, 0x5255f32b

    if-eq v3, v4, :cond_2

    const v4, 0x6cc4f178

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGESCREEN_AOD_SETTING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v5

    goto :goto_1

    :cond_2
    const-string v3, "com.samsung.android.intent.action.REQUEST_RESTORE_ACC_SETTING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "com.samsung.android.intent.action.REQUEST_CONVERT_SCLOUD_DATA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/settings/eternal/EternalService$5;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/samsung/android/settings/eternal/EternalService$5;-><init>(Lcom/samsung/android/settings/eternal/EternalService;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService;->mConvertFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService;->mConvertFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_5

    return v5

    :cond_5
    const-string v2, "SOURCE"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXPORT_SESSION_TIME"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/samsung/android/settings/eternal/EternalService$4;

    move-object v3, v11

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move-object v7, v9

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/eternal/EternalService$4;-><init>(Lcom/samsung/android/settings/eternal/EternalService;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService;->mConvertFuture:Ljava/util/concurrent/Future;

    nop

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Eternal/EternalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFiles() - action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/SettingsBackup.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SETTINGS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/SettingsBackup.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private fetchValidation(I)V
    .locals 3

    const-string v0, "Eternal/EternalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchValidation by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mValidationFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mValidationFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mValidationFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->init(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/eternal/EternalService$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/eternal/EternalService$7;-><init>(Lcom/samsung/android/settings/eternal/EternalService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mValidationFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private getAvailableFreeSpace(Ljava/lang/String;)J
    .locals 3

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    return-wide v1
.end method

.method private getResponseAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5255f32b

    if-eq v0, v1, :cond_1

    const v1, 0x6cc4f178

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGESCREEN_AOD_SETTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_ACC_SETTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_ACC_SETTING"

    return-object v0

    :pswitch_1
    const-string v0, "com.samsung.android.intent.action.RESPONSE_RESTORE_EDGESCREEN_AOD_SETTING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUidOfIntentAction(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x330f96a5

    if-eq v1, v2, :cond_2

    const v2, 0x5255f32b

    if-eq v1, v2, :cond_1

    const v2, 0x6cc4f178

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGESCREEN_AOD_SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_ACC_SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "com.samsung.android.intent.action.REQUEST_CONVERT_SCLOUD_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    return-object v1

    :pswitch_1
    const-string v1, "Accessibility"

    return-object v1

    :pswitch_2
    const-string v1, "AOD"

    return-object v1

    :goto_2
    const-string v1, "UNKNOWN"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleIntent(Landroid/content/Intent;I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "Eternal/EternalService"

    const-string v3, "handleIntent() bundle is null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v2, "Eternal/EternalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIntent() action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / startId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Eternal/EternalService"

    const-string v4, "handleIntent() - action is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const-string v3, "Eternal/EternalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIntent() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/eternal/utils/FileUtils;

    const-string v4, "SESSION_KEY"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SECURITY_LEVEL"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/settings/eternal/utils/FileUtils;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService;->mFileUtils:Lcom/samsung/android/settings/eternal/utils/FileUtils;

    const-string v3, "com.samsung.android.intent.action.REQUEST_BACKUP_SETTINGS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ACTION"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const-string v0, "SAVE_PATH"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/eternal/EternalService;->cancelBackup(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/settings/eternal/EternalService;->backupDataInternal(Landroid/os/Bundle;I)Z

    move-result v0

    return v0

    :cond_4
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/settings/eternal/EternalService;->restoreDataInternal(Landroid/os/Bundle;I)Z

    move-result v0

    return v0

    :cond_5
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/settings/eternal/EternalService;->convertDataInternal(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_6
    :goto_0
    const-string v1, "Eternal/EternalService"

    const-string v2, "handleIntent() action : null"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private hasExternalStoragePermission()Z
    .locals 6

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/EternalService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private restoreDataInternal(Landroid/os/Bundle;I)Z
    .locals 11

    const-string v0, "Eternal/EternalService"

    const-string v1, "restoreDataInternal()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAVE_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "FAST_TRACK"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mRestoreFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mRestoreFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->init(Landroid/content/Context;)V

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/samsung/android/settings/eternal/EternalService$3;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move v4, v8

    move-object v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/eternal/EternalService$3;-><init>(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mRestoreFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    return v1
.end method

.method private sendResponse(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Eternal/EternalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse() - action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mContext:Landroid/content/Context;

    const-string v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private stopSelfOrdered(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/settings/eternal/EternalService$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/eternal/EternalService$6;-><init>(Lcom/samsung/android/settings/eternal/EternalService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validationRequest(Landroid/os/Bundle;I)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v1, "Eternal/EternalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "snoozed validation requested by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Eternal/EternalService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mWorkerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/lib/episode/EpisodeUtils;->isSettingAppSupportBnR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Eternal/EternalService"

    const-string v1, "onStartCommand() Setting app does not support BnR"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Eternal/EternalService"

    const-string v1, "onStartCommand() action : null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/EternalService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/eternal/EternalService;->handleIntent(Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelfOrdered(I)V

    :cond_3
    const/4 v0, 0x2

    return v0
.end method
