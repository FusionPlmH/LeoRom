.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;
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

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    const/16 v1, 0xc

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$100(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)C

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
    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object v3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$202(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SeslNumberPicker;->performClick(Z)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2, v4}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$402(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1$1;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1$1;-><init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    return-void
.end method
