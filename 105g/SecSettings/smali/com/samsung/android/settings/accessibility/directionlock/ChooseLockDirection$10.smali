.class Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;
.super Ljava/lang/Object;
.source "ChooseLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->verifyForFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$2102(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z

    const-string v0, "ChooseLockDirection"

    const-string/jumbo v2, "verifyForFace in onVerified()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "ChooseLockDirection"

    const-string/jumbo v2, "verifyForFace critical: no token returned for known good pattern"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$2802(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3500(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "hw_auth_token_face"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$3500(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$2000(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->access$1900(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$10;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    :cond_1
    return-void
.end method
