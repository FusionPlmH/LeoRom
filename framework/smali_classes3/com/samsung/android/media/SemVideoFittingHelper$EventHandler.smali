.class Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;
.super Landroid/os/Handler;
.source "SemVideoFittingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemVideoFittingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mSmartFittingHelper:Lcom/samsung/android/media/SemVideoFittingHelper;

.field final synthetic this$0:Lcom/samsung/android/media/SemVideoFittingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/SemVideoFittingHelper;Lcom/samsung/android/media/SemVideoFittingHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->mSmartFittingHelper:Lcom/samsung/android/media/SemVideoFittingHelper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SemVideoFittingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->access$000(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->access$000(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;->onError(I)V

    goto :goto_0

    :cond_1
    const-string v0, "SemVideoFittingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlackBar Detectetion was just finished, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->access$000(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->access$000(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;->onCompleted(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->access$000(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;->onCompleted(Z)V

    :cond_3
    :goto_0
    return-void
.end method
