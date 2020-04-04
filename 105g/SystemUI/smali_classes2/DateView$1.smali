.class Lcom/android/systemui/statusbar/policy/DateView$1;
.super Landroid/content/BroadcastReceiver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$DateView$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$202(Lcom/android/systemui/statusbar/policy/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$002(Lcom/android/systemui/statusbar/policy/DateView;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$100(Lcom/android/systemui/statusbar/policy/DateView;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$002(Lcom/android/systemui/statusbar/policy/DateView;Z)Z

    :cond_1
    :goto_0
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DateView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$1$I-3qZI4QmwEIAfQqo2b2oUNiPII;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$1$I-3qZI4QmwEIAfQqo2b2oUNiPII;-><init>(Lcom/android/systemui/statusbar/policy/DateView$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$000(Lcom/android/systemui/statusbar/policy/DateView;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$100(Lcom/android/systemui/statusbar/policy/DateView;)V

    :cond_5
    return-void
.end method
