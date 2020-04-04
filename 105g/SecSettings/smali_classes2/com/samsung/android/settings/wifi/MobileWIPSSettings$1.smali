.class Lcom/samsung/android/settings/wifi/MobileWIPSSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileWIPSSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/MobileWIPSSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$1;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$1;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$000(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$1;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$000(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)V

    :cond_3
    :goto_0
    return-void
.end method
