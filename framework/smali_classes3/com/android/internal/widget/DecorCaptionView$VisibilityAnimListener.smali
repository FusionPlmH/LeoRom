.class Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mIsGhostMode:Z

.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->access$1302(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mIsGhostMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1400(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1500(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1500(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->access$1600(Lcom/android/internal/widget/DecorCaptionView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1400(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1500(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1500(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->access$1600(Lcom/android/internal/widget/DecorCaptionView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Z)Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->mIsGhostMode:Z

    return-object p0
.end method
