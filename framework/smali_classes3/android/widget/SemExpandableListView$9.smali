.class Landroid/widget/SemExpandableListView$9;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->access$4000(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->access$3700(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$4200(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$3400(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->access$3400(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$3300(Landroid/widget/SemExpandableListView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_0
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$4200(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$3400(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->access$5200(Landroid/widget/SemExpandableListView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$5100(Landroid/widget/SemExpandableListView;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->access$5200(Landroid/widget/SemExpandableListView;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$3400(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->access$3400(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$3300(Landroid/widget/SemExpandableListView;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    :cond_1
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$4200(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$4500(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$4500(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v0}, Landroid/widget/SemExpandableListView$ExpandingRect;->update(F)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$4200(Landroid/widget/SemExpandableListView;)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$5400(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$5400(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v0}, Landroid/widget/SemExpandableListView$CollapsingRect;->update(F)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    add-int v3, v1, v2

    if-nez v3, :cond_6

    return-void

    :cond_6
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->access$5500(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v4

    :goto_5
    if-ge v3, v1, :cond_7

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->access$4000(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v6, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->access$5500(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v5, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    nop

    :goto_6
    move v3, v4

    if-ge v3, v2, :cond_8

    iget-object v4, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->access$3700(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v5, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->access$5500(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v4, Landroid/widget/SemExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    goto :goto_6

    :cond_8
    iget-object v3, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v4, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->access$5500(Landroid/widget/SemExpandableListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SemExpandableListView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
