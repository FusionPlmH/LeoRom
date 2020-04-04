.class Lcom/android/settings/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserInfoController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->access$000()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/users/EditUserInfoController;->access$102(Lcom/android/settings/users/EditUserInfoController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->access$000()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v3}, Lcom/android/settings/users/EditUserInfoController;->access$100(Lcom/android/settings/users/EditUserInfoController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121f60

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->access$000()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const-string v2, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserInfoController;->access$200(Lcom/android/settings/users/EditUserInfoController;)Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserInfoController;->access$200(Lcom/android/settings/users/EditUserInfoController;)Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method
