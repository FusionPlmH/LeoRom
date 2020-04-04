.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_PRESS:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SeslNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3002(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v2, v2, v0, v4}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, p0, v5, v6}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v5

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3002(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, p0, v5, v6}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v5

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_1

    :pswitch_3
    iget v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3002(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    nop

    :goto_0
    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
