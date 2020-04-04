.class Lcom/samsung/android/widget/SemColorPicker$4;
.super Ljava/lang/Object;
.source "SemColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemColorPicker;->access$002(Lcom/samsung/android/widget/SemColorPicker;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->access$100(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v0}, Lcom/samsung/android/widget/SemColorPicker;->access$100(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemColorPicker;->access$300(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemColorPicker;->access$300(Lcom/samsung/android/widget/SemColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemColorPicker;->access$500(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$4;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemColorPicker;->access$500(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
