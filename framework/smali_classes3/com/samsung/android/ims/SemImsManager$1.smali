.class Lcom/samsung/android/ims/SemImsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ims/SemImsManager;->connectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ims/SemImsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/ims/SemImsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsManager;->access$000(Lcom/samsung/android/ims/SemImsManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v0}, Lcom/samsung/android/ims/SemImsManager;->access$100(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/ISemImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsManager;->access$000(Lcom/samsung/android/ims/SemImsManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsService not found, this should not happen!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsManager;->access$200(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsManager;->access$200(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;->onConnected()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsManager;->access$100(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/ISemImsService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/ims/SemImsManager;->access$300(Lcom/samsung/android/ims/SemImsManager;Lcom/samsung/android/ims/ISemImsService;)V

    :cond_2
    return-void
.end method
