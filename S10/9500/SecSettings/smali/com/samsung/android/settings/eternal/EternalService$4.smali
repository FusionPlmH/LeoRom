.class Lcom/samsung/android/settings/eternal/EternalService$4;
.super Ljava/lang/Object;
.source "EternalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalService;->convertDataInternal(Landroid/content/Intent;ILandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$sessionTime:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$sessionTime:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "convertType"

    const-string/jumbo v2, "smartSwitch"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/EternalService;->access$000(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/controller/EternalController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v2}, Lcom/samsung/android/settings/eternal/EternalService;->access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/EternalService;->access$600(Lcom/samsung/android/settings/eternal/EternalService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchConvertData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/EternalService;->access$700(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$source:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$sessionTime:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/settings/eternal/EternalService;->access$300(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "convertResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v2, "convertErrorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "convertRequestSize"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "convertSource"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/eternal/EternalService;->access$700(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$sessionTime:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/settings/eternal/EternalService;->access$300(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v1, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v2, p0, Lcom/samsung/android/settings/eternal/EternalService$4;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    throw v0
.end method
