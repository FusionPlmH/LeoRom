.class Lcom/android/server/policy/SamsungPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$100(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManagerFuncs:Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy$SamsungWindowManagerFuncs;->getPenState()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$200(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v3

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$300(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$400(Lcom/android/server/policy/SamsungPhoneWindowManager;)Lcom/android/server/policy/OneHandOpPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/OneHandOpPolicyManager;->systemBooted()V

    :cond_2
    return-void
.end method
