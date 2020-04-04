.class Landroid/mtp/MtpFileManager$1;
.super Landroid/os/Handler;
.source "MtpFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpFileManager;


# direct methods
.method constructor <init>(Landroid/mtp/MtpFileManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpFileManager$1;->this$0:Landroid/mtp/MtpFileManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v5, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mEventHandler sendObjectPropChanged : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v5

    sput-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v2, v3, v4}, Landroid/mtp/MTPJNIInterface;->sendObjectPropChanged(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v5, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mEventHandler sendObjectRemoved : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v5

    sput-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v2, v3, v4}, Landroid/mtp/MTPJNIInterface;->sendObjectRemoved(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v5, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mEventHandler sendObjectAdded : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v5

    sput-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/mtp/MtpFileManager;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v2, v3, v4}, Landroid/mtp/MTPJNIInterface;->sendObjectAdded(IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
