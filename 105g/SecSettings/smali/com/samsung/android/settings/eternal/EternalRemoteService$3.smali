.class Lcom/samsung/android/settings/eternal/EternalRemoteService$3;
.super Ljava/lang/Object;
.source "EternalRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalRemoteService;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/eternal/controller/EternalController;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$3;->this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;

    invoke-virtual {v1}, Lcom/samsung/android/settings/eternal/EternalRemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eternal/controller/EternalController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchRestore()Z

    move-result v1

    const-string v2, "EternalRemoteService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupDefaultValues : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v4, "Success"

    goto :goto_0

    :cond_0
    const-string v4, "Fail"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/utils/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
