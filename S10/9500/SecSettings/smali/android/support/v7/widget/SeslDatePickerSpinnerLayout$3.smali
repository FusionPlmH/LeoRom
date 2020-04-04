.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$3;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    :cond_0
    return v0
.end method
