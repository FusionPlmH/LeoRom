.class Lcom/samsung/android/settings/eternal/EternalService$7;
.super Ljava/lang/Object;
.source "EternalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalService;->fetchValidation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iput p2, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/EternalService;->access$000(Lcom/samsung/android/settings/eternal/EternalService;)Lcom/samsung/android/settings/eternal/controller/EternalController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/EternalService;->access$200(Lcom/samsung/android/settings/eternal/EternalService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/controller/EternalController;->fetchValidation(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v1, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v2, p0, Lcom/samsung/android/settings/eternal/EternalService$7;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    throw v0
.end method
