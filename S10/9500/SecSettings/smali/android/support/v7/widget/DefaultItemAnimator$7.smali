.class Landroid/support/v7/widget/DefaultItemAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$deltaX:I

    iput-object p4, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    iput p5, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$deltaY:I

    iput-object p6, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$deltaY:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
