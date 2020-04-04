.class Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;
.super Landroid/os/Handler;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendEnrollResult(Lcom/samsung/android/bio/face/SemBioFace;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1600(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1500(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1600(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_1
    return-void
.end method

.method private sendRemovedResult(JII)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFace;->getGroupId()I

    move-result v1

    if-eq p3, v0, :cond_0

    const-string v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p4, v1, :cond_1

    const-string v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1302(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1500(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1500(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    :cond_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemBioFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "SemBioFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string v0, "SemBioFaceManager"

    const-string v1, "handleMessage : Unknown msg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendRemovedResult(JII)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1100(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1000(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$900(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$800(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/bio/face/SemBioFace;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/bio/face/SemBioFace;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1200(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
