.class Landroid/mtp/MTPJNIInterface$5;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MTPJNIInterface;->initializeSerivce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$5;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface$5;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v0}, Landroid/mtp/MTPJNIInterface;->access$300(Landroid/mtp/MTPJNIInterface;)[Landroid/os/Messenger;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v0, "MTPJNIInterface"

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface$5;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v1}, Landroid/mtp/MTPJNIInterface;->access$400(Landroid/mtp/MTPJNIInterface;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface$5;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v1}, Landroid/mtp/MTPJNIInterface;->access$300(Landroid/mtp/MTPJNIInterface;)[Landroid/os/Messenger;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MTPJNIInterface"

    const-string/jumbo v2, "say hello exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "MTPJNIInterface"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface$5;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v0}, Landroid/mtp/MTPJNIInterface;->access$300(Landroid/mtp/MTPJNIInterface;)[Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method
