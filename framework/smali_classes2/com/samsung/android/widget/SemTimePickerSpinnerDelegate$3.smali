.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$400(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$402(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$200(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$200(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-nez v0, :cond_4

    if-ne p3, v1, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$202(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$600(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$500(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$700(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    :goto_1
    return-void
.end method
