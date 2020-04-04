.class Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$6;
.super Landroid/text/InputFilter$LengthFilter;
.source "FingerprintSettingsEdit.java"


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
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$700(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$800(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$700(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-object v0
.end method
