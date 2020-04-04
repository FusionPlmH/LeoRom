.class Lcom/samsung/android/widget/SemDatePicker$2;
.super Landroid/os/Handler;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$400(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$900(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$900(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->access$1000(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v0, v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$1100(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$1100(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$1000(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v0

    const v5, 0x3ecccccd    # 0.4f

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$000(Lcom/samsung/android/widget/SemDatePicker;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$900(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->access$1100(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$000(Lcom/samsung/android/widget/SemDatePicker;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$900(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePicker;->access$1000(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v6

    sub-int/2addr v6, v2

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->access$1100(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$800(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$700(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$000(Lcom/samsung/android/widget/SemDatePicker;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$100(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v3

    if-gt v0, v3, :cond_6

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->access$100(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v2

    if-ge v0, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemDatePicker;->access$100(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->access$200(Lcom/samsung/android/widget/SemDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$300(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$400(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$500(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040966

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->access$600(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040965

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$2;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePicker;->access$300(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;

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

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
