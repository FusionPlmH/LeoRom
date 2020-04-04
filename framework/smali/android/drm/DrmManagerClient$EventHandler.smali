.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/drm/DrmInfo;

    const-string v5, "drm_path"

    invoke-virtual {v3, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    iget-object v9, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-virtual {v9, v8}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    const-string v9, "FileDescriptorKey"

    invoke-virtual {v3, v9, v7}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v9, "DrmManagerClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception the file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v9, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v9}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v9

    invoke-static {v8, v9, v3}, Landroid/drm/DrmManagerClient;->access$100(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v8

    const-string v9, "drm_info_status_object"

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "drm_info_object"

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v9

    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    const/4 v9, 0x1

    iget v10, v8, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v9, v10, :cond_2

    new-instance v9, Landroid/drm/DrmEvent;

    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v10}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v10

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v12, v8, Landroid/drm/DrmInfoStatus;->infoType:I

    invoke-static {v11, v12}, Landroid/drm/DrmManagerClient;->access$200(Landroid/drm/DrmManagerClient;I)I

    move-result v11

    invoke-direct {v9, v10, v11, v4, v2}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object v0, v9

    goto/16 :goto_4

    :cond_2
    if-eqz v8, :cond_3

    iget v9, v8, Landroid/drm/DrmInfoStatus;->infoType:I

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v9

    :goto_2
    if-eqz v8, :cond_4

    iget-object v10, v8, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v10}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v4, v8, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v4}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v4

    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v4, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v11, Landroid/drm/DrmErrorEvent;

    iget-object v12, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v12}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v12

    iget-object v13, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v13, v9, v8}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v13

    invoke-direct {v11, v12, v13, v10, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object v1, v11

    goto :goto_3

    :cond_4
    new-instance v10, Landroid/drm/DrmErrorEvent;

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v11}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v11

    iget-object v12, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v12, v9, v8}, Landroid/drm/DrmManagerClient;->access$300(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v12

    invoke-direct {v10, v11, v12, v4, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object v1, v10

    :goto_3
    goto :goto_4

    :pswitch_1
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v5, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v5

    invoke-static {v3, v5}, Landroid/drm/DrmManagerClient;->access$400(Landroid/drm/DrmManagerClient;I)I

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Landroid/drm/DrmEvent;

    iget-object v5, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v5

    const/16 v6, 0x3e9

    invoke-direct {v3, v5, v6, v4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    move-object v0, v3

    goto :goto_4

    :cond_5
    new-instance v3, Landroid/drm/DrmErrorEvent;

    iget-object v5, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v5}, Landroid/drm/DrmManagerClient;->access$000(Landroid/drm/DrmManagerClient;)I

    move-result v5

    const/16 v6, 0x7d7

    invoke-direct {v3, v5, v6, v4}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    move-object v1, v3

    nop

    :goto_4
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->access$500(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v3

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v3, v4, v0}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    :cond_6
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v3

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v3, v4, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
