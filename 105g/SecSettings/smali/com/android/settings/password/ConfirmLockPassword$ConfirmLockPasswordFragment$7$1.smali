.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2902(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$3000(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token_face"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2800(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget v3, v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
