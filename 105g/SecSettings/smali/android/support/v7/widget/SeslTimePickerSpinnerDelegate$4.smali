.class Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/support/v7/widget/SeslNumberPicker$OnEditTextModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
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

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextModeChanged(Landroid/support/v7/widget/SeslNumberPicker;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0, p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$800(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)V

    return-void
.end method
