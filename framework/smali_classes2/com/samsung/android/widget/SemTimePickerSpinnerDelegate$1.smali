.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;-><init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$000(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$100(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)C

    move-result v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-ne p2, v0, :cond_1

    if-eq p3, v1, :cond_2

    :cond_1
    if-ne p2, v1, :cond_4

    if-ne p3, v0, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$202(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/widget/SemNumberPicker;->performClick(Z)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2, v4}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$402(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1$1;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$500(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    return-void
.end method
