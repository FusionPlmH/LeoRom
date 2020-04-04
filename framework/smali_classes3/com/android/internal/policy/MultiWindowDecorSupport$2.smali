.class Lcom/android/internal/policy/MultiWindowDecorSupport$2;
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

    iput-object p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$200(Lcom/android/internal/policy/MultiWindowDecorSupport;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$202(Lcom/android/internal/policy/MultiWindowDecorSupport;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowDecorSupport"

    const-string/jumbo v1, "mHideCaptionRunnable Return, isFullScreenFreeform=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$300(Lcom/android/internal/policy/MultiWindowDecorSupport;IZZ)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3e100000    # -30.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-static {}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$500()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;->this$0:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-static {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->access$000(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method
