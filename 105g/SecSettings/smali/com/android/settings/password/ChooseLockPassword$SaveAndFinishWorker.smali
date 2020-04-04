.class public Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$500()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    :cond_0
    iget-object v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v8, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    iget v9, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$1800()Z

    iget-boolean v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v11, v0

    :try_start_0
    iget-wide v12, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    cmp-long v0, v12, v7

    const/4 v12, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v13, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v14, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    iget v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v13, v14, v15, v7}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_2
    new-array v0, v6, [B

    move-object v9, v0

    aput-byte v12, v9, v5

    const-string v0, "ChooseLockPassword"

    const-string v7, "critical: challenge returned zero."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-wide v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    const-wide/16 v13, 0x0

    cmp-long v0, v7, v13

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v13, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    iget v8, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v7, v13, v14, v8}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_3
    new-array v0, v6, [B

    move-object v10, v0

    aput-byte v12, v10, v5

    const-string v0, "ChooseLockPassword"

    const-string v7, "critical: challenge returned zero."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-wide v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    const-wide/16 v13, 0x0

    cmp-long v0, v7, v13

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v12, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    iget v8, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v7, v12, v13, v8}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v0

    goto :goto_2

    :cond_4
    new-array v0, v6, [B

    move-object v11, v0

    aput-byte v12, v11, v5

    const-string v0, "ChooseLockPassword"

    const-string v7, "critical: mChallengeFace returned zero."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v11

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v9, 0x0

    const/4 v0, 0x1

    move v4, v0

    move-object v0, v11

    :goto_3
    if-nez v9, :cond_5

    const-string v7, "ChooseLockPassword"

    const-string v8, "critical: no token returned for known good password."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v2, v7

    const-string v7, "hw_auth_token"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v7, "hw_auth_token_iris"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v7, "hw_auth_token_face"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_6
    if-nez v4, :cond_8

    iget v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-wide v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_8

    iget-wide v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_8

    iget-wide v7, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_8

    move v5, v6

    nop

    :cond_8
    move v3, v5

    invoke-static {}, Lcom/android/settings/password/ChooseLockPassword;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v5, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "password"

    iget-object v5, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->lockProfile(I)V

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    :try_start_1
    iget-object v0, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget v6, v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->printStackTrace()V

    :cond_a
    :goto_4
    return-object v2
.end method

.method public bridge synthetic setBlocking(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 10

    move-object v7, p0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p13

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    move-object/from16 v0, p10

    iput-object v0, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    move/from16 v2, p12

    iput v2, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    move/from16 v3, p13

    iput v3, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    move-wide/from16 v4, p6

    iput-wide v4, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    move-wide/from16 v8, p8

    iput-wide v8, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    invoke-virtual {v7}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start()V

    return-void
.end method
