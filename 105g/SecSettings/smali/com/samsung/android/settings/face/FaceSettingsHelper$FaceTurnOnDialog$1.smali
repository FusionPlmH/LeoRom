.class Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;
.super Ljava/lang/Object;
.source "FaceSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "FpstFaceTurnOnDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedRegistration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$000(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$000(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$100(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$200(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$300(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$400(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$200(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$300(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$200(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$300(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$500(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->access$500(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOnFaceLock()V

    :cond_3
    return-void
.end method
