.class Lcom/samsung/android/settings/deviceinfo/status/SimStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/status/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellBroadcastMessage;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$100(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    const-string v5, "latest_area_info"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$200(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
