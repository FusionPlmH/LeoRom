.class Lcom/android/server/notification/SmartAlertController$5;
.super Landroid/content/BroadcastReceiver;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SmartAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SmartAlertController"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/notification/SmartAlertController;->access$502(Lcom/android/server/notification/SmartAlertController;Z)Z

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v1}, Lcom/android/server/notification/SmartAlertController;->unregisterListener()V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SmartAlertController"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/notification/SmartAlertController;->access$502(Lcom/android/server/notification/SmartAlertController;Z)Z

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->access$400(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v1}, Lcom/android/server/notification/SmartAlertController;->registerListener()V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/notification/SmartAlertController;->access$102(Lcom/android/server/notification/SmartAlertController;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
