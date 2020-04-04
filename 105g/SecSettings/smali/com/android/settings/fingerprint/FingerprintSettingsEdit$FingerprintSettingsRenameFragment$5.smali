.class Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;
.super Ljava/lang/Object;
.source "FingerprintSettingsEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initRenameEditTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$700(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$800(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$700(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$700(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$800(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$700(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$500(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$600(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$600(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "FpstFingerprintSettingsRenameFragment"

    const-string v3, "mDoneButton is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
    return-void
.end method
