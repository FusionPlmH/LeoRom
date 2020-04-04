.class Lcom/android/internal/widget/DecorCaptionView$5;
.super Landroid/view/ViewOutlineProvider;
.source "DecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$600(Lcom/android/internal/widget/DecorCaptionView;)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->access$700(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->access$700(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->canUseFreeformBorder()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v3}, Lcom/android/internal/widget/DecorCaptionView;->access$800(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->access$800(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->access$900(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->access$800(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$5;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->access$700(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->canUseFreeformBorder()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method
