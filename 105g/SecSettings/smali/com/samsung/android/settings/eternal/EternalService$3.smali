.class Lcom/samsung/android/settings/eternal/EternalService$3;
.super Ljava/lang/Object;
.source "EternalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalService;->restoreDataInternal(Landroid/os/Bundle;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalService;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$isFastTrack:Z

.field final synthetic val$isFromRemoteService:Z

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;ZZLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$filePath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$isFastTrack:Z

    iput-boolean p4, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$isFromRemoteService:Z

    iput-object p5, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$source:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/EternalService;->access$400(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/utils/FileUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/SettingsBackup.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v3}, Lcom/samsung/android/settings/eternal/EternalService;->access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/SettingsBackup.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/EternalService;->access$000(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/controller/EternalController;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$isFastTrack:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchRestore(Z)Z

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$isFromRemoteService:Z

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_SETTINGS"

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    nop

    move v6, v3

    :goto_0
    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$source:Ljava/lang/String;

    const/4 v10, 0x0

    move v8, v0

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/settings/eternal/EternalService;->access$300(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v2}, Lcom/samsung/android/settings/eternal/EternalService;->access$000(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/controller/EternalController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v3}, Lcom/samsung/android/settings/eternal/EternalService;->access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchValidation(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_SETTINGS"

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/eternal/EternalService;->access$500(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v1, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$filePath:Ljava/lang/String;

    const-string v3, "com.samsung.android.intent.action.REQUEST_RESTORE_SETTINGS"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/settings/eternal/EternalService;->access$500(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v2, p0, Lcom/samsung/android/settings/eternal/EternalService$3;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    throw v0
.end method
