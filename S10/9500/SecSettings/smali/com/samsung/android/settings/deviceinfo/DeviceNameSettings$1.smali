.class Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$402(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$000(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$002(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    return-void

    :cond_0
    const-string v1, ""

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$100(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$100(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x20

    if-gt v1, v5, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$200(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06012d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$400(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$100(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$400(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$002(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$400(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$002(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$002(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$002(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$200(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$200(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$500(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/ScrollView;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1$1;-><init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$400(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x2

    if-lt v1, v3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$002(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$400(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$400(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$002(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->access$300(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    return-void
.end method
