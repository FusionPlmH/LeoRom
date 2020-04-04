.class Lcom/android/server/McpsService$1;
.super Landroid/os/Binder;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/McpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/McpsService;


# direct methods
.method constructor <init>(Lcom/android/server/McpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0}, Lcom/android/server/McpsService;->access$100(Lcom/android/server/McpsService;)Lcom/android/server/McpsDumpManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0}, Lcom/android/server/McpsService;->access$200(Lcom/android/server/McpsService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0}, Lcom/android/server/McpsService;->access$100(Lcom/android/server/McpsService;)Lcom/android/server/McpsDumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/McpsDumpManager;->isUserBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/McpsService;->access$300(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    if-eqz p3, :cond_3

    array-length v0, p3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/McpsService;->access$400(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/McpsService$1;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/McpsService;->access$300(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method
