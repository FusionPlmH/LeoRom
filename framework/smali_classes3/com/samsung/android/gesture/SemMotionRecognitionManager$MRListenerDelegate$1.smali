.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->val$this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->access$300(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate$1;->this$1:Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->access$300(Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/gesture/SemMotionEventListener;->onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MotionRecognitionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
