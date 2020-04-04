.class Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;
.super Ljava/lang/Object;
.source "FileClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "is_success"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/samsung/android/scloud/oem/lib/backup/BackupMetaManager;->setCanceled(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-static {v3}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->restoreCompleted(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-static {v3}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;->restoreFailed(Landroid/content/Context;Ljava/util/ArrayList;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-object v1
.end method
