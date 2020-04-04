.class Lcom/android/server/TigerSskdsService$RegistrationHandler;
.super Landroid/os/Handler;
.source "TigerSskdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TigerSskdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationHandler"
.end annotation


# instance fields
.field private final mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/TigerSskdsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/TigerSskdsService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/service/TigerSskdsService/networking/Response;

    invoke-virtual {v0}, Lcom/samsung/android/service/TigerSskdsService/networking/Response;->getErrorCode()I

    move-result v1

    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration attempt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$100()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received response message: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/service/TigerSskdsService/networking/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const v3, 0xa122d

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unexpected response error code."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TigerSskdsService;

    sget-object v4, Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;->REGISTER:Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;

    invoke-static {v3, v4}, Lcom/android/server/TigerSskdsService;->access$400(Lcom/android/server/TigerSskdsService;Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V

    iget-object v3, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TigerSskdsService;

    invoke-static {v3, v2}, Lcom/android/server/TigerSskdsService;->access$500(Lcom/android/server/TigerSskdsService;Z)V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Device with such device Id has already been registered. Updating Registration!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TigerSskdsService;

    sget-object v4, Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;->UPDATE:Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;

    invoke-static {v2, v4}, Lcom/android/server/TigerSskdsService;->access$400(Lcom/android/server/TigerSskdsService;Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V

    iget-object v2, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TigerSskdsService;

    invoke-static {v2, v3}, Lcom/android/server/TigerSskdsService;->access$500(Lcom/android/server/TigerSskdsService;Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Device cannot be registered anymore."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TigerSskdsService;

    invoke-static {v2, v3}, Lcom/android/server/TigerSskdsService;->access$200(Lcom/android/server/TigerSskdsService;Z)V

    iget-object v2, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TigerSskdsService;

    invoke-static {v2}, Lcom/android/server/TigerSskdsService;->access$300(Lcom/android/server/TigerSskdsService;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad connection with WeChat. Registration attempt will be performed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3a98

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TigerSskdsService;

    sget-object v4, Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;->REGISTER:Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;

    invoke-static {v3, v4}, Lcom/android/server/TigerSskdsService;->access$400(Lcom/android/server/TigerSskdsService;Lcom/samsung/android/service/TigerSskdsService/networking/Request$Type;)V

    iget-object v3, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TigerSskdsService;

    invoke-static {v3, v2}, Lcom/android/server/TigerSskdsService;->access$500(Lcom/android/server/TigerSskdsService;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Device registered successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TigerSskdsService;

    invoke-static {v3, v2}, Lcom/android/server/TigerSskdsService;->access$200(Lcom/android/server/TigerSskdsService;Z)V

    iget-object v2, p0, Lcom/android/server/TigerSskdsService$RegistrationHandler;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TigerSskdsService;

    invoke-static {v2}, Lcom/android/server/TigerSskdsService;->access$300(Lcom/android/server/TigerSskdsService;)V

    nop

    :goto_0
    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$104()I

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x8adae3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
