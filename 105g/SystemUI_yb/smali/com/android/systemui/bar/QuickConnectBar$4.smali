.class Lcom/android/systemui/bar/QuickConnectBar$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/QuickConnectBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/QuickConnectBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/QuickConnectBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/QuickConnectBar$4;->this$0:Lcom/android/systemui/bar/QuickConnectBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$4;->this$0:Lcom/android/systemui/bar/QuickConnectBar;

    iget-object v1, v1, Lcom/android/systemui/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent receive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.systemui.qspanel.update_bar_item_view"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RETURN_QS_BAR"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "qspanel_media_devices_using_remote_view"

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "qspanel_media_devices_using_remote_view"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bar/QuickConnectBar$4;->this$0:Lcom/android/systemui/bar/QuickConnectBar;

    invoke-virtual {v1, p2}, Lcom/android/systemui/bar/QuickConnectBar;->receiveRemoteView(Landroid/content/Intent;)V

    return-void
.end method
