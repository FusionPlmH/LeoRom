.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$1200(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemTimePicker"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x17

    if-eq p2, v0, :cond_7

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_6

    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    const/4 v3, 0x5

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v1, v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    const/4 v3, 0x6

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->access$1100(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_5
    :goto_0
    return v2

    :cond_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    move v1, v2

    nop

    :cond_8
    return v1
.end method
