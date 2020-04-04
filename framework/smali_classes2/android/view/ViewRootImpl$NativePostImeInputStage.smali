.class final Landroid/view/ViewRootImpl$NativePostImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePostImeInputStage"
.end annotation


# instance fields
.field private mNeedsProcessingForDecorCaption:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->mNeedsProcessingForDecorCaption:Z

    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 9

    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz p2, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/DecorView;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object v8, v6

    check-cast v8, Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v8}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->mNeedsProcessingForDecorCaption:Z

    :cond_0
    iget-boolean v6, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->mNeedsProcessingForDecorCaption:Z

    if-eqz v6, :cond_3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x3

    if-ne v3, v2, :cond_2

    :cond_1
    iput-boolean v5, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->mNeedsProcessingForDecorCaption:Z

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePostImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewRootImpl$NativePostImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    return-void

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePostImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    const/4 v0, 0x3

    return v0

    :cond_0
    return v1
.end method
