.class Lcom/samsung/android/settings/wifi/WifiWarning$2;
.super Ljava/lang/Object;
.source "WifiWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$600()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v4

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$700(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    const-string v4, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$800(Lcom/samsung/android/settings/wifi/WifiWarning;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$900(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$1000(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$1000(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$600()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v4

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$700(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    const-string v4, "HOTSPOT_P2P_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$800(Lcom/samsung/android/settings/wifi/WifiWarning;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$900(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$1000(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$1000(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$600()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$700(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    const-string v1, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$800(Lcom/samsung/android/settings/wifi/WifiWarning;Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$1100(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$1000(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$1000(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void

    :cond_7
    :goto_0
    return-void
.end method
