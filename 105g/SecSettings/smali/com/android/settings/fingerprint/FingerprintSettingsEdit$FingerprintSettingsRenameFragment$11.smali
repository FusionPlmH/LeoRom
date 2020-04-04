.class Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;
.super Ljava/lang/Object;
.source "FingerprintSettingsEdit.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

.field final synthetic val$isEnableFeatures:Z

.field final synthetic val$isEnableFingerprintLock:Z


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    iput-boolean p2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->val$isEnableFingerprintLock:Z

    iput-boolean p3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->val$isEnableFeatures:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$1402(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

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

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2025

    const/16 v1, 0x2029

    const-wide/16 v2, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->val$isEnableFingerprintLock:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "FpstFingerprintSettingsRenameFragment"

    const-string v2, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->val$isEnableFingerprintLock:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->val$isEnableFeatures:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$1300(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Z)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$1300(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;Z)Z

    :goto_1
    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method
