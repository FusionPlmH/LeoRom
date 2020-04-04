.class Lcom/android/systemui/bar/MediaQuickControlBar$3;
.super Ljava/lang/Object;
.source "MediaQuickControlBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/MediaQuickControlBar;->startSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MediaQuickControlBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MediaQuickControlBar$3;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar$3;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    invoke-static {v0}, Lcom/android/systemui/bar/MediaQuickControlBar;->access$100(Lcom/android/systemui/bar/MediaQuickControlBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar$3;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    iget-object v1, v1, Lcom/android/systemui/bar/MediaQuickControlBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar$3;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    iget-object v1, v1, Lcom/android/systemui/bar/MediaQuickControlBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v1}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bar/MediaQuickControlBar$3;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    iget-object v1, v1, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/bar/MediaQuickControlBar$3;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    iget-object v2, v2, Lcom/android/systemui/bar/MediaQuickControlBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
