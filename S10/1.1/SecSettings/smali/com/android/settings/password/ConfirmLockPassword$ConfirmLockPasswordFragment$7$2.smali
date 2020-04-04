.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;
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

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$3102(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const-string v4, "hw_auth_token_iris"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2600(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2$1;

    invoke-direct {v9, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2$1;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;)V

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget v4, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget v5, v5, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v5, v5, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v6, v6, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v6}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2600(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget v8, v8, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v10, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v11, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2600(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v13

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget v15, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2902(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    move/from16 v6, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2800(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;->this$1:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    iget v5, v5, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    move/from16 v6, p2

    invoke-virtual {v3, v2, v4, v6, v5}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_2
    return-void
.end method
