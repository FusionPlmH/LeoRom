.class Lcom/android/settings/wifi/details/WifiConnectPrefController$10;
.super Lcom/android/settings/wifi/details/WifiConnectPrefController$EditTextWatcher;
.source "WifiConnectPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiConnectPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$EditTextWatcher;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;Lcom/android/settings/wifi/details/WifiConnectPrefController$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$1500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2502(Lcom/android/settings/wifi/details/WifiConnectPrefController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "inputType=PredictionOff;disableEmoticonInput=true;disableGifKeyboard=true;disableSticker=true;"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-gt v3, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v6, v4, v5

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v1

    sub-int v3, v4, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "inputType=PredictionOff;disableEmoticonInput=true;defaultInputmode=english"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2600(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120e10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$700(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060389

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2600(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2600(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$700(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_3
    return-void
.end method