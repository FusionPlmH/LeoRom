.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;
.super Ljava/lang/Object;
.source "DoNotShowAgainDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$002(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
