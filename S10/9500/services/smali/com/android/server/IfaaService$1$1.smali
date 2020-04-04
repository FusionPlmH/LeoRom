.class Lcom/android/server/IfaaService$1$1;
.super Ljava/lang/Object;
.source "IfaaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/IfaaService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/IfaaService$1;


# direct methods
.method constructor <init>(Lcom/android/server/IfaaService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/IfaaService$1$1;->this$1:Lcom/android/server/IfaaService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "IfaaService"

    const-string/jumbo v1, "ifaa clearSFSThread start -- reset ta"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IfaaService$1$1;->this$1:Lcom/android/server/IfaaService$1;

    iget-object v0, v0, Lcom/android/server/IfaaService$1;->this$0:Lcom/android/server/IfaaService;

    invoke-static {v0}, Lcom/android/server/IfaaService;->access$000(Lcom/android/server/IfaaService;)V

    return-void
.end method
