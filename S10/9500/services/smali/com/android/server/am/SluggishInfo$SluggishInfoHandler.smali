.class final Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
.super Landroid/os/Handler;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishInfoHandler"
.end annotation


# instance fields
.field private slgInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/SluggishInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/SluggishInfo;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SluggishInfoHandler()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$200()Lcom/android/server/am/SluggishInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() - what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " componentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->access$500(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->access$400(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->access$300(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
