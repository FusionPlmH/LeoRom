.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ConfirmLockPatternFragment"

    const-string v3, "onVerified Pattern for iris completed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v2, v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1102(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$intent:Landroid/content/Intent;

    const-string v4, "hw_auth_token_iris"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;

    invoke-direct {v9, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;)V

    const-string v3, "ConfirmLockPatternFragment"

    const-string v4, "onVerified Pattern for iris and face start"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$localEffectiveUserId:I

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget v5, v5, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$localUserId:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v5, v5, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$pattern:Ljava/util/List;

    iget-object v6, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v6, v6, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v6, v6, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v6}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget v8, v8, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$localUserId:I

    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v10, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$pattern:Ljava/util/List;

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v4}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v13

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget v15, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$localUserId:I

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1002(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    move/from16 v6, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->this$1:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$2400(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget-object v4, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1$2;->this$2:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;

    iget v5, v5, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5$1;->val$localEffectiveUserId:I

    move/from16 v6, p2

    invoke-virtual {v3, v2, v4, v6, v5}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_2
    return-void
.end method
