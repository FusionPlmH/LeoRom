.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->onVerified([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$2202(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    const-string v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startVerifyPattern onVerified:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "ConfirmLockDirection"

    const-string/jumbo v2, "startVerifyPattern token is not null setting token in intent:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    const-string v2, "hw_auth_token_face"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1$1;->this$2:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;

    iget-object v2, v2, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11$1;->this$1:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    iget-object v2, v2, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v0, v2, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->access$1800(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V

    return-void
.end method
