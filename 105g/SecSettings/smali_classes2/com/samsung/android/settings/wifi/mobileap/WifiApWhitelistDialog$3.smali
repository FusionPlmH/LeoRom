.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

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

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$602(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v2, v1

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v2, v1

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int v4, p2, p4

    invoke-virtual {v0, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v1, v4, :cond_3

    move v1, p2

    const/4 v4, 0x0

    move v5, v4

    move v4, v1

    move v1, v3

    :goto_0
    if-gt v1, v2, :cond_1

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isEnclosedAlphanumSuppplement(I)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v5, v5, 0x2

    :cond_0
    add-int v6, v4, v5

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v1, v6

    goto :goto_0

    :cond_1
    if-le v4, p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int v7, p2, p4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    add-int v4, p2, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int v5, p2, p4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$900(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f121f60

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$802(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$602(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    :goto_5
    return-void
.end method
