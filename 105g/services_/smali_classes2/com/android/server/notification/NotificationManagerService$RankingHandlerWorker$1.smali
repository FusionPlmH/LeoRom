.class Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker$1;->this$1:Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker$1;->this$1:Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker$1;->val$msg:Landroid/os/Message;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$9200(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V

    return-void
.end method
