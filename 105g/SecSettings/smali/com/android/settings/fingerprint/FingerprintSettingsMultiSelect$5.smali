.class Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;
.super Ljava/lang/Object;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprint()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$1002(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    return-void
.end method

.method public onNegativeClick()V
    .locals 2

    const/16 v0, 0x2025

    const/16 v1, 0x2028

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$600(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$800(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$600(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$600(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2025

    const/16 v2, 0x2029

    add-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$5;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$900(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method
