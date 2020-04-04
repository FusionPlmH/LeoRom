.class Lcom/samsung/android/settings/eternal/EternalService$8;
.super Landroid/os/Handler;
.source "EternalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/EternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalService;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalService$8;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/EternalService$8;->this$0:Lcom/samsung/android/settings/eternal/EternalService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/EternalService;->access$900(Lcom/samsung/android/settings/eternal/EternalService;I)V

    :goto_0
    return-void
.end method
