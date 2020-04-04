.class Lcom/samsung/android/widget/SemColorPicker$5;
.super Ljava/lang/Object;
.source "SemColorPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemColorPicker;->initOpacitySeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$5;->this$0:Lcom/samsung/android/widget/SemColorPicker;

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
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$5;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->access$600(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemGradientColorSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->setSelected(Z)V

    return v1

    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$5;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->access$600(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemGradientColorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemGradientColorSeekBar;->setSelected(Z)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
