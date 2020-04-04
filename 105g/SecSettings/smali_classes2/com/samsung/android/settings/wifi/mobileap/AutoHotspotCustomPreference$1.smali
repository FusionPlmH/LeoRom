.class Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;
.super Ljava/lang/Object;
.source "AutoHotspotCustomPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mSecondaryIconI`s onClick() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSecondaryIconI`s onClick() - (Remove) Removing Device Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->access$200(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;->onDeleteClicked(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
