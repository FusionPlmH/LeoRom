.class Landroid/widget/MultiSelectPopupWindow$HandleView$1;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MultiSelectPopupWindow$HandleView;->magnifyHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v2, v2, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v3, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v2}, Landroid/widget/MultiSelectPopupWindow$HandleView;->invalidate()V

    return-void
.end method
