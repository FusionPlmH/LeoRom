.class Landroid/widget/Editor$HandleView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$targetHeight:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;II)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iput p2, p0, Landroid/widget/Editor$HandleView$8;->val$targetWidth:I

    iput p3, p0, Landroid/widget/Editor$HandleView$8;->val$targetHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->access$7700(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, p0, Landroid/widget/Editor$HandleView$8;->val$targetWidth:I

    iget v3, p0, Landroid/widget/Editor$HandleView$8;->val$targetHeight:I

    invoke-static {v1, v2, v3}, Landroid/widget/Editor$HandleView;->access$7300(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->removeHiderCallback()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->hideAfterDelay()V

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->access$7702(Landroid/widget/Editor$HandleView;Z)Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->access$8202(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->access$7800(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->access$7900(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->access$7802(Landroid/widget/Editor$HandleView;Z)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->access$8000(Landroid/widget/Editor$HandleView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget v4, v4, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->access$8100(Landroid/widget/Editor$HandleView;)I

    move-result v2

    aput v2, v0, v3

    iget-object v2, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v2, v0, v1

    iget-object v4, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    iget v4, v4, Landroid/widget/Editor$HandleView;->mHotspotX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v2}, Landroid/widget/Editor$HandleView;->access$7600(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v2

    aget v1, v0, v1

    aget v4, v0, v3

    const/4 v5, -0x1

    invoke-virtual {v2, v1, v4, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1, v3}, Landroid/widget/Editor$HandleView;->access$7702(Landroid/widget/Editor$HandleView;Z)Z

    iget-object v1, p0, Landroid/widget/Editor$HandleView$8;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
