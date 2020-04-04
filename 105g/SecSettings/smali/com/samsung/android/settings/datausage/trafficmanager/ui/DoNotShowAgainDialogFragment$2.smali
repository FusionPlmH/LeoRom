.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;
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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$202(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
