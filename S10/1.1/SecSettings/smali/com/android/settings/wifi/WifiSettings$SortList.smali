.class Lcom/android/settings/wifi/WifiSettings$SortList;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$SortList;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getBleRssi()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getBleRssi()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getBleRssi()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getBleRssi()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getHotspotSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    check-cast p2, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings$SortList;->compare(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)I

    move-result p1

    return p1
.end method
