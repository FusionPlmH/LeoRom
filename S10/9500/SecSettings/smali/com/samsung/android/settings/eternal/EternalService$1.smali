.class Lcom/samsung/android/settings/eternal/EternalService$1;
.super Ljava/lang/Object;
.source "EternalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalService;->backupDataInternal(Landroid/os/Bundle;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalService;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$sessionTime:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/EternalService$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/EternalService$1;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/eternal/EternalService$1;->val$sessionTime:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/settings/eternal/EternalService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/EternalService;->access$000(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/controller/EternalController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchBackup()Z

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v3, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$filePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/EternalService;->access$100(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v6}, Lcom/samsung/android/settings/eternal/EternalService;->access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/SettingsBackup.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-string v6, "Eternal/EternalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Available space : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " / backupFileSize : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v7, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    const-string v8, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v9, 0x1

    const/4 v10, 0x2

    long-to-int v11, v4

    iget-object v12, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$source:Ljava/lang/String;

    iget-object v13, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$sessionTime:Ljava/lang/String;

    invoke-static/range {v7 .. v13}, Lcom/samsung/android/settings/eternal/EternalService;->access$300(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v6}, Lcom/samsung/android/settings/eternal/EternalService;->access$400(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/utils/FileUtils;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v8}, Lcom/samsung/android/settings/eternal/EternalService;->access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/SettingsBackup.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/SettingsBackup.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iget-object v10, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    const-string v11, "com.samsung.android.intent.action.RESPONSE_BACKUP_SETTINGS"

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    if-lez v6, :cond_1

    move v12, v9

    goto :goto_0

    :cond_1
    nop

    move v12, v7

    :goto_0
    if-eqz v0, :cond_2

    if-lez v6, :cond_2

    move v13, v9

    goto :goto_1

    :cond_2
    move v13, v7

    :goto_1
    iget-object v15, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$source:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$sessionTime:Ljava/lang/String;

    move v14, v6

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/settings/eternal/EternalService;->access$300(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    const-string v2, "com.samsung.android.intent.action.REQUEST_BACKUP_SETTINGS"

    iget-object v3, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/eternal/EternalService;->access$500(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v2, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$startId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v3, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$filePath:Ljava/lang/String;

    const-string v4, "com.samsung.android.intent.action.REQUEST_BACKUP_SETTINGS"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/eternal/EternalService;->access$500(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v3, v1, Lcom/samsung/android/settings/eternal/EternalService$1;->val$startId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    throw v0
.end method
