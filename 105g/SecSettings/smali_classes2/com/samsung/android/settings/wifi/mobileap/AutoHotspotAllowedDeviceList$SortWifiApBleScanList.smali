.class Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$SortWifiApBleScanList;
.super Ljava/lang/Object;
.source "AutoHotspotAllowedDeviceList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortWifiApBleScanList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$SortWifiApBleScanList;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)I
    .locals 4

    iget-object v0, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SortWifiApBleScanList`s compare() : m1.mSSID is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SortWifiApBleScanList`s compare() : m2.mSSID is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SortWifiApBleScanList`s compare() - m1.mSSID.compareTo(m2.mSSID): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iget-object v3, p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    check-cast p2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$SortWifiApBleScanList;->compare(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)I

    move-result p1

    return p1
.end method
