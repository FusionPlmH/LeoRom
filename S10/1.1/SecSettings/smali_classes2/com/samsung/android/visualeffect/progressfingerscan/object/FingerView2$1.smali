.class Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;
.super Ljava/lang/Object;
.source "FingerView2.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-static {v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$300(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-static {v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$400(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-static {v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$300(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$202(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;F)F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0xff8b2c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->invalidate()V

    return-void
.end method
