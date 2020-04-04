.class Lcom/android/settings/wifi/details/WifiConnectPrefController$4;
.super Ljava/lang/Object;
.source "WifiConnectPrefController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiConnectPrefController;->showSecurityFields(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/support/design/widget/CheckableImageButton;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/support/design/widget/CheckableImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/CheckableImageButton;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1102(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)Z

    const-string v0, "WifiConnectPrefController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsPasswordVisible is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1200(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const v2, 0x7f121e30

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1200(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    const v2, 0x7f121f13

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x90

    goto :goto_1

    :cond_1
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/support/design/widget/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->performClick()Z

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
