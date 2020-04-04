.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$902(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->access$2700(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$pattern:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v1, v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$2400(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$2;->val$localEffectiveUserId:I

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
