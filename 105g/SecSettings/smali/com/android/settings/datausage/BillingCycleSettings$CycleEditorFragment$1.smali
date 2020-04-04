.class Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-static {v1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->access$100(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    :goto_0
    return v0
.end method
