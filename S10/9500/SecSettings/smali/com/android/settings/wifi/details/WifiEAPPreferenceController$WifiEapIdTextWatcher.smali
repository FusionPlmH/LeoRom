.class Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;
.super Ljava/lang/Object;
.source "WifiEAPPreferenceController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiEAPPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEapIdTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mErrorText:Landroid/widget/TextView;

.field private mPreviousString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiEAPPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings/wifi/details/WifiEAPPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings/wifi/details/WifiEAPPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->access$200(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    const-string v1, "jia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviousString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v2, "inputType=PredictionOff;disableEmoticonInput=true"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "WifiEAPPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v1, "inputType=PredictionOff;disableEmoticonInput=true;defaultInputmode=english"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f120e10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings/wifi/details/WifiEAPPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/android/settings/wifi/details/WifiEAPPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->access$100(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void
.end method
