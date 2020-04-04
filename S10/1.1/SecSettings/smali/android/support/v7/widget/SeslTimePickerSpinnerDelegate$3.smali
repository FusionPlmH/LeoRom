.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/support/v7/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;-><init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$400(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0, v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$402(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-nez v0, :cond_4

    if-ne p3, v1, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$202(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$600(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$700(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    :goto_1
    return-void
.end method
