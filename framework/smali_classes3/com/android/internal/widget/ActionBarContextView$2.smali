.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result v8

    new-array v9, v3, [I

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v10, v9}, Lcom/android/internal/widget/ActionBarContextView;->getLocationInWindow([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v11, v10}, Lcom/android/internal/widget/ActionBarContextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v12}, Lcom/android/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    const/4 v12, 0x1

    aget v12, v9, v12

    add-int/2addr v12, v6

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v13

    const/4 v14, 0x0

    if-nez v13, :cond_0

    iget v13, v10, Landroid/graphics/Rect;->right:I

    iget v15, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    aget v15, v9, v14

    add-int/2addr v15, v5

    sub-int/2addr v13, v15

    sub-int v15, v5, v7

    sub-int/2addr v15, v8

    div-int/2addr v15, v3

    add-int/2addr v13, v15

    add-int/2addr v13, v8

    sub-int/2addr v13, v11

    goto :goto_0

    :cond_0
    aget v13, v9, v14

    add-int/2addr v13, v5

    sub-int v15, v5, v7

    sub-int/2addr v15, v8

    div-int/2addr v15, v3

    sub-int/2addr v13, v15

    sub-int/2addr v13, v7

    :goto_0
    move v3, v13

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v3, v12}, Lcom/android/internal/widget/ActionBarContextView;->setTooltipPosition(II)V

    return v14
.end method
