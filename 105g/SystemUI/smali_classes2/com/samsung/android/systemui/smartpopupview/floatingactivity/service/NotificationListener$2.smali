.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->registerBootCompletedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->enableListValidationCheck()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$2;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->updateDBState()V

    return-void
.end method
