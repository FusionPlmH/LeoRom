.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_PRESS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, p0}, Lcom/samsung/android/widget/SemNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2800(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2802(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2900(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3000(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3002(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v2, v2, v0, v4}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3000(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, p0, v5, v6}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3080(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v4, v0, v3}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2800(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, p0, v5, v6}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2880(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2900(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    goto :goto_1

    :pswitch_3
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3002(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$3100(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v4, v0, v3}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2802(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->access$2900(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate(IIII)V

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
