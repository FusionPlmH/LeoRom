.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;->this$3:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4

    const-string v0, "ConfirmLockPatternFragment"

    const-string v1, "onVerified Pattern for iris and face completed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;->this$3:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1002(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;->this$3:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token_face"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;->this$3:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$2400(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;->this$3:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;->this$3:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$localEffectiveUserId:I

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
