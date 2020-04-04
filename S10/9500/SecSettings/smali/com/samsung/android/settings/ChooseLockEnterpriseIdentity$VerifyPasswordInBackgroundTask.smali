.class Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyPasswordInBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mChallenge:J

.field mPassword:Ljava/lang/String;

.field mUserId:I

.field final synthetic this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;JI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->mPassword:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->mChallenge:J

    iput p5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->mUserId:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->access$400(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->mPassword:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->mChallenge:J

    iget v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$VerifyPasswordInBackgroundTask;->mUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ChooseLockEnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestThrottledException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
