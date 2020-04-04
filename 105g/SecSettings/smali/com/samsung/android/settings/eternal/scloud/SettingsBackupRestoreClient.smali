.class public Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;
.super Ljava/lang/Object;
.source "SettingsBackupRestoreClient.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private close(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->TAG:Ljava/lang/String;

    const-string v1, "backup "

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;->init(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchBackup()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SettingsBackup.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", fileExist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient$1;

    invoke-direct {v6, p0, p3}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient$1;-><init>(Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v3, v4, v5, v2, v6}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->close(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->close(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->close(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    throw v3

    :cond_4
    sget-object v1, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->TAG:Ljava/lang/String;

    const-string v2, "fetch backup failed."

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p3, v0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1217df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->TAG:Ljava/lang/String;

    const-string v1, "restore"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SettingsInAppBackup.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->deleteAllFiles(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SettingsBackup.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient$2;

    invoke-direct {v5, p0, p3}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient$2;-><init>(Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->close(Ljava/io/Closeable;)V

    nop

    const/4 v2, 0x1

    invoke-interface {p3, v2}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;->init(Landroid/content/Context;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchRestore()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->TAG:Ljava/lang/String;

    const-string v3, "fetchRestore failed."

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->mEternalController:Lcom/samsung/android/settings/eternal/controller/EternalController;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchValidation(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    invoke-interface {p3, v3}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->close(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/eternal/scloud/SettingsBackupRestoreClient;->close(Ljava/io/Closeable;)V

    throw v2
.end method
