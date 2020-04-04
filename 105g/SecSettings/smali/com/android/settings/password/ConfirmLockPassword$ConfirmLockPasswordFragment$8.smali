.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2302(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$3200(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v1, v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1200(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    const-string v2, "password"

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2800(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v2, p2, v3}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
