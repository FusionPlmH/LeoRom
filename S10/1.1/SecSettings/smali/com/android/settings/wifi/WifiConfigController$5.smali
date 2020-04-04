.class Lcom/android/settings/wifi/WifiConfigController$5;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$500(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f06038d

    const v5, 0x7f120e24

    const v6, 0x7f06006b

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v2, v3, :cond_6

    const-string v2, "[0-9A-Fa-f]*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/16 v9, 0x1a

    const/16 v10, 0xd

    if-le v1, v10, :cond_1

    if-ne v1, v9, :cond_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v8

    nop

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$700(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    if-le v1, v10, :cond_4

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$700(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_2

    :cond_4
    if-le v1, v9, :cond_5

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$700(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$700(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    nop

    :goto_2
    goto/16 :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$500(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    const/16 v2, 0xc8

    goto :goto_3

    :cond_7
    const/16 v2, 0x40

    :goto_3
    if-le v1, v2, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$5;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_4
    return-void
.end method
