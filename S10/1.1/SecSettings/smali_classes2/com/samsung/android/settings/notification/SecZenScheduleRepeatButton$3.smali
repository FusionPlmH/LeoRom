.class Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;
.super Ljava/lang/Object;
.source "SecZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$000(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$000(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->invalidate()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$000(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$400(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$000(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->invalidate()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$100(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->access$300(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    return-void
.end method
