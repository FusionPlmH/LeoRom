.class public Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mLockVirgin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside Pattern mIsSharedDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->access$1900()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->access$1900()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v3, v5, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mHasChallenge:Z

    const-wide/16 v5, 0x0

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-wide v9, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    cmp-long v9, v9, v5

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v11, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    iget v13, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v9

    move-object v3, v9

    :cond_2
    iget-wide v9, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeIris:J

    cmp-long v9, v9, v5

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v11, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeIris:J

    iget v13, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v9

    move-object v7, v9

    :cond_3
    iget-wide v9, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeFace:J

    cmp-long v9, v9, v5

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v11, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeFace:J

    iget v13, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v9
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v9

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    :goto_0
    if-eqz v3, :cond_5

    if-nez v7, :cond_6

    :cond_5
    const-string v9, "ChooseLockPattern"

    const-string v10, "critical: no token returned for known good pattern"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v8, :cond_7

    const-string v9, "ChooseLockPattern"

    const-string v10, "critical: no tokenFace returned for known good pattern"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object v0, v9

    const-string v9, "hw_auth_token"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v9, "hw_auth_token_iris"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v9, "hw_auth_token_face"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_8
    if-nez v2, :cond_a

    iget v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallenge:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_a

    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeIris:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_a

    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeFace:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    move v1, v4

    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, "password"

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->lockProfile(I)V

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->printStackTrace()V

    :cond_c
    :goto_2
    return-object v0
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

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJJLjava/util/List;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJJJ",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v7, p0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    move-object/from16 v0, p11

    iput-object v0, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    move/from16 v2, p12

    iput v2, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    move-wide/from16 v3, p6

    iput-wide v3, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeIris:J

    move-wide/from16 v5, p8

    iput-wide v5, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChallengeFace:J

    iget-object v8, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    iput-boolean v8, v7, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    invoke-virtual {v7}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start()V

    return-void
.end method
