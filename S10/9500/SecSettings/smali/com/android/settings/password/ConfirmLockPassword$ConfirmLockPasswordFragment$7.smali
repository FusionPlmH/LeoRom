.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$localUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    iput p5, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2302(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v3, v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const-string v4, "hw_auth_token"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const-string v4, "password"

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2400(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2500(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    :cond_1
    if-nez v2, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2600(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$intent:Landroid/content/Intent;

    iget v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    move/from16 v7, p2

    invoke-virtual {v3, v2, v4, v7, v5}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto/16 :goto_2

    :cond_3
    move/from16 v7, p2

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2500(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    new-instance v13, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;

    invoke-direct {v13, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$1;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;)V

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    iget v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v8, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2400(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v10

    iget v12, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    invoke-static/range {v8 .. v13}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v14, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v15, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2400(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v17

    iget v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    move/from16 v19, v4

    move-object/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2702(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;

    invoke-direct {v3, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7$2;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;)V

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localEffectiveUserId:I

    iget v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    if-ne v4, v5, :cond_6

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v14, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v15, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2500(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v16

    iget v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    move/from16 v18, v4

    invoke-static/range {v14 .. v19}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    goto :goto_1

    :cond_6
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v8, v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2500(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v11

    iget v13, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$localUserId:I

    move-object/from16 v14, v19

    invoke-static/range {v8 .. v14}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v4

    :goto_1
    invoke-static {v3, v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$2902(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :goto_2
    return-void
.end method
