.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$2100(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x17

    const/4 v3, 0x2

    if-eq p2, v0, :cond_6

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_5

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    const/4 v4, 0x5

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$2400(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

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

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateInputState()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    return v1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$2200(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.dual_lcd"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->access$2300(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.folder_type"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v3, :cond_8

    goto :goto_1

    :cond_8
    goto :goto_2

    :cond_9
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method
