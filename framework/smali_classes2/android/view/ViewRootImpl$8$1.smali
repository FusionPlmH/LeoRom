.class Landroid/view/ViewRootImpl$8$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl$8;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$8;

.field final synthetic val$animTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

.field final synthetic val$bottom:I

.field final synthetic val$lastUpdateFrame:Z

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$8;Lcom/samsung/android/view/RemoteWindowAnimationTarget;FIZ)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$8$1;->this$1:Landroid/view/ViewRootImpl$8;

    iput-object p2, p0, Landroid/view/ViewRootImpl$8$1;->val$animTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    iput p3, p0, Landroid/view/ViewRootImpl$8$1;->val$y:F

    iput p4, p0, Landroid/view/ViewRootImpl$8$1;->val$bottom:I

    iput-boolean p5, p0, Landroid/view/ViewRootImpl$8$1;->val$lastUpdateFrame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewRootImpl$8$1;->this$1:Landroid/view/ViewRootImpl$8;

    iget-object v0, v0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$8$1;->val$animTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    iget-object v1, v1, Lcom/samsung/android/view/RemoteWindowAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/ViewRootImpl$8$1;->val$y:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v2, v4}, Landroid/view/ViewRootImpl;->access$7200(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl;FFZ)V

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$8$1;->this$1:Landroid/view/ViewRootImpl$8;

    iget-object v0, v0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteIm] onAnimationUpdate#1 bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/ViewRootImpl$8$1;->val$bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$8$1;->val$lastUpdateFrame:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$8$1;->this$1:Landroid/view/ViewRootImpl$8;

    iget-object v0, v0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl$8$1;->this$1:Landroid/view/ViewRootImpl$8;

    iget-object v1, v1, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$7300(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$8$1;->this$1:Landroid/view/ViewRootImpl$8;

    iget-object v0, v0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl$8$1;->this$1:Landroid/view/ViewRootImpl$8;

    iget-object v1, v1, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$7300(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
