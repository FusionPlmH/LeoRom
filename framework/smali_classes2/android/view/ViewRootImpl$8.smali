.class Landroid/view/ViewRootImpl$8;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->initRemoteImAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13

    iget-object v0, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$7002(Landroid/view/ViewRootImpl;I)I

    move-result v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$7100(Landroid/view/ViewRootImpl;)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$6808(Landroid/view/ViewRootImpl;)I

    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$6500(Landroid/view/ViewRootImpl;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$6500(Landroid/view/ViewRootImpl;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v8

    iget-object v3, v8, Lcom/samsung/android/view/RemoteWindowAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, v8, Lcom/samsung/android/view/RemoteWindowAnimationTarget;->givenContentInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    sub-int/2addr v3, v4

    int-to-float v10, v3

    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RemoteIm] onAnimationUpdate bottom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$7100(Landroid/view/ViewRootImpl;)I

    move-result v4

    if-gt v3, v4, :cond_3

    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewRootImpl$8$1;

    move-object v2, v12

    move-object v3, p0

    move-object v4, v8

    move v5, v10

    move v6, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/ViewRootImpl$8$1;-><init>(Landroid/view/ViewRootImpl$8;Lcom/samsung/android/view/RemoteWindowAnimationTarget;FIZ)V

    invoke-virtual {v11, v12}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v8, Lcom/samsung/android/view/RemoteWindowAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v10, v2}, Landroid/view/ViewRootImpl;->access$7200(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl;FFZ)V

    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RemoteIm] onAnimationUpdate bottom#2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$7300(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$7300(Landroid/view/ViewRootImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/View;)V

    :cond_7
    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/view/ViewRootImpl$8;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    return-void
.end method
