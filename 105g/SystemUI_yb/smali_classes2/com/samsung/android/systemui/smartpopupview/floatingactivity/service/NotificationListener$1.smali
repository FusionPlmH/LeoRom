.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->registerPackageRemoveReceiver()V
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

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-static {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPackageRemovedReceiver received : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-static {v6}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPackageRemovedReceiver intentInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget-object v4, v3, v2

    if-eqz v4, :cond_1

    aget-object v2, v3, v2

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-static {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-static {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->removePackageFromEnabledList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
