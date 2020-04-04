.class Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$10;
.super Ljava/lang/Object;
.source "FingerprintSettingsEdit.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->deleteFingerprint()Z
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$10;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$10;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$1202(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

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
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$10;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$1000(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    const/16 v2, 0x2025

    const/16 v3, 0x2029

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$10;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$1100(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method
