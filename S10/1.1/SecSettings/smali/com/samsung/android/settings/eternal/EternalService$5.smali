.class Lcom/samsung/android/settings/eternal/EternalService$5;
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

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->val$bundle:Landroid/os/Bundle;

    iput p4, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "convertType"

    const-string v2, "sCloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/EternalService;->access$000(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/controller/EternalController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v2}, Lcom/samsung/android/settings/eternal/EternalService;->access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/eternal/EternalService;->access$600(Lcom/samsung/android/settings/eternal/EternalService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchConvertData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->val$bundle:Landroid/os/Bundle;

    iget v4, p0, Lcom/samsung/android/settings/eternal/EternalService$5;->val$startId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/eternal/EternalService;->access$800(Lcom/samsung/android/settings/eternal/EternalService;Landroid/os/Bundle;I)V

    return-void
.end method
