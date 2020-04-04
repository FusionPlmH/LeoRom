.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    invoke-interface {v1, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->isSupportBackup(Landroid/content/Context;)Z

    move-result v1

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    invoke-interface {v2, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->isEnableBackup(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] GET_CLIENT_INFO, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    invoke-interface {v3, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    invoke-interface {v4, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "support_backup"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "name"

    invoke-virtual {v0, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "is_enable_backup"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "label"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "description"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
