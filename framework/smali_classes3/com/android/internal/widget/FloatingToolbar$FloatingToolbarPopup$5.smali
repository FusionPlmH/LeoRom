.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->access$2300()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v6, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2000(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v6

    sub-float v6, v3, v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2502(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v6, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2602(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v5

    sub-float v5, v3, v5

    float-to-int v5, v5

    iget-object v6, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    iget-object v7, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v7

    mul-int v8, v5, v5

    mul-int v9, v6, v6

    add-int/2addr v8, v9

    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v9

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v10

    mul-int/2addr v9, v10

    const/4 v10, 0x1

    if-lt v8, v9, :cond_2

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar;->access$2202(Z)Z

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar;->access$202(Z)Z

    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8, v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2402(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Z)Z

    :cond_2
    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v8

    if-eq v7, v8, :cond_3

    const-string v8, "floating_toolbar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FloatingToolbar will be start to move, moved deltaX, deltaY : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\nmTouchSlop = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->access$2200()Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8, v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FF)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v8, v9, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$3000(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;II)V

    :cond_5
    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$3100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->access$3200()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->access$3200()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    if-ne v8, v10, :cond_7

    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    iget v14, v11, Landroid/graphics/Rect;->right:I

    if-ge v13, v14, :cond_6

    iget v13, v11, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_6
    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    :goto_1
    iput v13, v12, Landroid/graphics/Point;->x:I

    goto :goto_3

    :cond_7
    const/4 v12, 0x3

    if-ne v8, v12, :cond_9

    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v14}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v11, Landroid/graphics/Rect;->left:I

    if-le v13, v14, :cond_8

    iget v13, v11, Landroid/graphics/Rect;->left:I

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v14}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    goto :goto_2

    :cond_8
    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    :goto_2
    iput v13, v12, Landroid/graphics/Point;->x:I

    :cond_9
    :goto_3
    goto :goto_0

    :cond_a
    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v9, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2002(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v9, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2102(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    goto :goto_4

    :cond_b
    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1802(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1902(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2002(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2102(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar;->access$2202(Z)Z

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar;->access$2302(Z)Z

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2402(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Z)Z

    nop

    :goto_4
    return v2
.end method
