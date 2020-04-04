.class Lcom/samsung/android/animation/SemSweepListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepListAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$100(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$100(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$200(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : animator : onAnimationEnd : prepare copy bitmap to animate fade.. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$100(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$700(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$602(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$600(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$600(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SemSweepListAnimator"

    const-string v4, "animator : create fadeOut animator #2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SemSweepListAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animator : sweepBdToFade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$600(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SemSweepListAnimator"

    const-string v4, "animator : onAnimationEnd : fadeOutAnimator.start()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    goto/16 :goto_1

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$300(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$400(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : animator : onAnimationEnd : send onSweepEnd #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$400(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$100(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$500(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "SemSweepListAnimator"

    const-string/jumbo v2, "onActionUp : animator : onAnimationEnd : failed getBitmap() and so can not copy bitmap, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "SemSweepListAnimator"

    const-string v1, "animator : onAnimationEnd : Animation is back, call resetSweepInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$300(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$400(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "SemSweepListAnimator"

    const-string v1, "animator : onAnimationEnd : send onSweepEnd #3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$400(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$100(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_c
    :goto_1
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "SemSweepListAnimator"

    const-string v1, "animator : onAnimationEnd : call resetSweepAnimationFilter "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$500(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemSweepListAnimator"

    const-string v1, "animator : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
