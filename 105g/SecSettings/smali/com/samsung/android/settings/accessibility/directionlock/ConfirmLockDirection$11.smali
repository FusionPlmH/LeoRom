.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$1602(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const-string v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startVerifyPattern onVerified:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "ConfirmLockDirection"

    const-string/jumbo v2, "startVerifyPattern token is not null setting token in intent:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    const-string v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ConfirmLockDirection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVerifyPattern :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$100(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$1700(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$2000(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$pattern:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$1700(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J

    move-result-wide v5

    iget v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$localEffectiveUserId:I

    new-instance v8, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;)V

    invoke-static/range {v3 .. v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$1902(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v0, v2, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$1800(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V

    :goto_1
    return-void
.end method
