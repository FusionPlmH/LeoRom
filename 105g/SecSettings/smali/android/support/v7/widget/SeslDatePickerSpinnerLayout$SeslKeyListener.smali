.class Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x17

    if-eq p2, v0, :cond_6

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_5

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    const/4 v3, 0x5

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslDatePicker;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    const/4 v3, 0x6

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    return v1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    return v2

    :cond_7
    return v2
.end method
