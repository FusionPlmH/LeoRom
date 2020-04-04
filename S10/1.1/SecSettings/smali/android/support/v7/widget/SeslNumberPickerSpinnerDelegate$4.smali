.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILandroid/support/v7/widget/SeslAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iput p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$602(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$702(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    neg-int v0, v0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x401599999999999aL    # 5.4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;-><init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;I)V

    iget v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->val$delay:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
