.class Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;
.super Ljava/lang/Object;
.source "MultiWindowGestureDetectionView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->access$000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->access$100(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->access$100(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->access$000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-static {v2}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->access$000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowGestureDetectionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout: window frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView$1;->this$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;

    invoke-static {v2}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->access$100(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
