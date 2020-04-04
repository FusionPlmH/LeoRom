.class Lcom/android/settings/wifi/details/WifiIpSettingsController$5;
.super Ljava/lang/Object;
.source "WifiIpSettingsController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiIpSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userSelectSpinnerItem(I)V
    .locals 5

    const-string v0, "WifiIpSettingsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProxySpinnerCallback item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$300(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    const v4, 0x7f1208f7

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$400(Lcom/android/settings/wifi/details/WifiIpSettingsController;Ljava/lang/String;IJ)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$502(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/net/IpConfiguration$ProxySettings;)Landroid/net/IpConfiguration$ProxySettings;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$600(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    move-result-object v1

    const v2, 0x7f12114f

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$600(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$502(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/net/IpConfiguration$ProxySettings;)Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$600(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$502(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/net/IpConfiguration$ProxySettings;)Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$600(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$702(Lcom/android/settings/wifi/details/WifiIpSettingsController;I)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$800(Lcom/android/settings/wifi/details/WifiIpSettingsController;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$200(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;->this$0:Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->access$900(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    return-void
.end method
