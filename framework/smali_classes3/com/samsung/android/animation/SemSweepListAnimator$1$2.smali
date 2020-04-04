.class Lcom/samsung/android/animation/SemSweepListAnimator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

.field final synthetic val$copiedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemSweepListAnimator"

    const-string v1, "fadeOutAnimator : onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$300(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$400(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SemSweepListAnimator"

    const-string v1, "fadeOutAnimator : onAnimationEnd : send onSweepEnd #2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$400(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$100(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$600(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v0, v0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$600(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SemSweepListAnimator"

    const-string v2, "fadeOutAnimator : onAnimationEnd : recycle mSweepBdToFade"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$602(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SemSweepListAnimator"

    const-string v1, "fadeOutAnimator : onAnimationEnd : recycle copiedBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemSweepListAnimator"

    const-string v1, "fadeOutAnimator : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
