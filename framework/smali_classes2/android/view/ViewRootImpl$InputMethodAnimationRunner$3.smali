.class Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$InputMethodAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$InputMethodAnimationRunner;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[RemoteIm] RemoteImAnimator.reverse() #1"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v2, v2, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[RemoteIm] RemoteImAnimator.reverse() #2"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v2, v2, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$3;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v3, v3, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$7000(Landroid/view/ViewRootImpl;)I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Landroid/view/ViewRootImpl;->access$7600(Landroid/view/ViewRootImpl;IIZ)V

    :cond_4
    :goto_1
    return-void
.end method
