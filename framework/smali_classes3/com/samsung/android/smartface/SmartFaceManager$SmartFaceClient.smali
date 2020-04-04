.class Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
.super Lcom/samsung/android/smartface/ISmartFaceClient$Stub;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartFaceClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;-><init>()V

    const-string p1, "SmartFaceManager"

    const-string v0, "New SmartFaceClient"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onInfo(ILcom/samsung/android/smartface/FaceInfo;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p3, v1, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p3, v1, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v0, "SmartFaceManager"

    const-string v1, "EventHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
