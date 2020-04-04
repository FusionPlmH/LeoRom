.class Lcom/samsung/android/settings/eternal/EternalService$2;
.super Ljava/lang/Object;
.source "EternalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalService;->cancelBackup(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalService;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SETTINGS"

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/eternal/EternalService;->access$500(Lcom/samsung/android/settings/eternal/EternalService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v1, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v2, p0, Lcom/samsung/android/settings/eternal/EternalService$2;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/eternal/EternalService;->stopSelf(I)V

    throw v0
.end method
