.class Lcom/android/internal/policy/MultiWindowDecorSupport$1;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiWindowDecorSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$100(Lcom/android/internal/policy/MultiWindowDecorSupport;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$202(Lcom/android/internal/policy/MultiWindowDecorSupport;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$300(Lcom/android/internal/policy/MultiWindowDecorSupport;IZZ)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->setCaptionBackground()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$400(Lcom/android/internal/policy/MultiWindowDecorSupport;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
