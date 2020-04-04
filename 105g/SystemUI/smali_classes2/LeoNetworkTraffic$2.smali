.class Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;
.super Landroid/content/BroadcastReceiver;
.source "LeoNetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fusionleo/LeoNetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1900(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateSettings()V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1902(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->updateSettings()V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$1902(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNetworkTraffic$2;->this$0:Lcom/android/systemui/fusionleo/LeoNetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoNetworkTraffic;->access$600(Lcom/android/systemui/fusionleo/LeoNetworkTraffic;)V

    :cond_3
    :goto_0
    return-void
.end method
