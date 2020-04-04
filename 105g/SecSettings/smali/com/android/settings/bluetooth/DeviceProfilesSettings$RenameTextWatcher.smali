.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "afterTextChanged ::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x3e

    if-gt v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_2

    if-eq v1, v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-static {v0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$102(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "beforeTextChanged ::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onTextChanged ::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$102(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)Z

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f121f60

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
