.class Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$2;
.super Ljava/lang/Object;
.source "MultiWindowGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;


# direct methods
.method public static synthetic lambda$run$0(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$2;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$2;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->show()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$2;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->access$000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$2$BRKsU4omK4cN-ndiTTYfa4nXnzo;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$2$BRKsU4omK4cN-ndiTTYfa4nXnzo;-><init>(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
