.class Landroid/support/v7/widget/SeslColorPicker$3;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslColorPicker;->initGradientColorSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker$3;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$3;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslColorPicker;->access$600(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    return v1

    :cond_0
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker$3;->this$0:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslColorPicker;->access$600(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
