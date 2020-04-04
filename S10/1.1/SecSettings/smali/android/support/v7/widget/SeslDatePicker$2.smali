.class Landroid/support/v7/widget/SeslDatePicker$2;
.super Landroid/os/Handler;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$400(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_TOOLTIP()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    sub-int/2addr v6, v2

    if-ge v3, v6, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    const v6, 0x3ecccccd    # 0.4f

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$000(Landroid/support/v7/widget/SeslDatePicker;)V

    return-void

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$000(Landroid/support/v7/widget/SeslDatePicker;)V

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    iget-object v7, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$000(Landroid/support/v7/widget/SeslDatePicker;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v3

    if-gt v0, v3, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    if-ge v0, v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->access$200(Landroid/support/v7/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$300(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$400(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_switch_to_wheel_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_switch_to_calendar_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$300(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    :goto_1
    return-void

    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
