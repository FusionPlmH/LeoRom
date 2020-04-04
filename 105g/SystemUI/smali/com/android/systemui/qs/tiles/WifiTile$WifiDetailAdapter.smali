.class public Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WifiDetailAdapter"
.end annotation


# instance fields
.field private mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mAvailable:Landroid/view/ViewGroup;

.field private mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mAvailableNetworksTitle:Landroid/widget/TextView;

.field private mBleScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedNetworksTitle:Landroid/view/View;

.field private mConntected:Landroid/view/ViewGroup;

.field private mHotspotLive:Landroid/view/ViewGroup;

.field private mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mHotspotLiveNetworksDivider:Landroid/view/View;

.field private mHotspotLiveNetworksTitle:Landroid/widget/TextView;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private filterUnreachableAPs()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    array-length v0, v0

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    new-array v1, v4, [Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    add-int/lit8 v7, v1, 0x1

    aput-object v5, v6, v1

    move v1, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic lambda$setToggleState$0(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setToggleState(Z)V

    return-void
.end method

.method private updateHotspotItems()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    return-void
.end method

.method private updateHotspotItems(ILjava/lang/String;)V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getWifiApBleScanList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mBleScanList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mBleScanList:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mBleScanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    new-instance v3, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    iput-object v2, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getSmartTetheringIcon(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    iget-object v4, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6200(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    if-eqz v4, :cond_6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6300(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateHotspotItems(): status getting from mhsMac->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, p1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6400(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateHotspotItems(): status getting from res.mWifiMac->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getWifiApBleStatus(Ljava/lang/String;)I

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6500(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateHotspotItems(): ConnectedStatus-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " res.mWifiMac-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6600(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateHotspotItems(): This mac is connected (do nothing) res.mWifiMac-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    iget v5, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v6, 0xf

    const/4 v7, 0x1

    if-gt v5, v6, :cond_2

    iput-boolean v7, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6700(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120468

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    if-eq v4, v7, :cond_5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    if-gez v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6900(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f120bc5

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    iput-boolean v7, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v5, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->access$6800(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120bc4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method private updateItems()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    const/16 v3, 0x8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    const v2, 0x7f0a008e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    const v2, 0x7f0a008f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    move v6, v2

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    array-length v7, v7

    if-ge v6, v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    aget-object v7, v7, v6

    new-instance v8, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v8}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    iput-object v7, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getIcon(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result v9

    iput v9, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_6

    iput-boolean v2, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    :cond_6
    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_7

    iput-boolean v1, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v9, v10, :cond_8

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v9, v10, :cond_8

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v9, v10, :cond_8

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_9

    :cond_8
    iput-boolean v1, v8, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    :cond_9
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    move v2, v3

    nop

    :cond_b
    move v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    const v3, 0x7f0a011b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v3, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSDetailItems;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3800(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDetailView convertView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " State : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enabled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v3, v3, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const v1, 0x7f120abe

    const v3, 0x7f120abf

    if-nez p2, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4000(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0191

    invoke-virtual {v4, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0135

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    const v4, 0x7f0a011a

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    const v4, 0x7f0a008e

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableNetworksTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    invoke-static {p1, v0, v2}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConntected:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v4, "Wifi"

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0a0222

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    const v4, 0x7f0a0223

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveNetworksTitle:Landroid/widget/TextView;

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveNetworksTitle:Landroid/widget/TextView;

    const v4, 0x7f120b76

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    const v4, 0x7f0a0224

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveNetworksDivider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    invoke-static {p1, v0, v2}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v4, "Hotspot.Available"

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    const v2, 0x7f0a008d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    invoke-static {p1, v0, v2}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v2, "Wifi.Available"

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v2, :cond_5

    move v1, v3

    nop

    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->scanForAccessPoints()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateQSColoringResources(Landroid/view/View;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x98

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a9c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onAccessPointsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->filterUnreachableAPs()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 5

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120d50

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4700(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown secured ap is selected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->connect(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->startSettings(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4050"

    invoke-static {v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->triggerWifiApBleConnection(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5500(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDetailItemClick(): Triggering updateHotspotItems for connecting with apBLE.mWifiMac-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5600(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDetailItemClick(): Triggering updateHotspotItems for connection time out with apBLE.mWifiMac-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0xa

    iget-object v2, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$4500(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public onWifiApBleStateChanged(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$7200(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiApBleStateChanged() : mhsMac -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$7302(Lcom/android/systemui/qs/tiles/WifiTile;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$7402(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$7500(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiApBleStateChanged(): Triggering updateHotspotItems for connection time out with mhsMac-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateHotspotItems(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$5800(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setItemsVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSDetailItems;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mHotspotLiveItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_1
    return-void
.end method

.method public setToggleState(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1500(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x99

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiTileBlocked()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1700(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2500(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$WifiTile$WifiDetailAdapter$um3y14UGScQU1ZVrwzDJf0BaLEI;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$WifiTile$WifiDetailAdapter$um3y14UGScQU1ZVrwzDJf0BaLEI;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$2900()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3000(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3200(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setToggleState fireToggleStateChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3400(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setToggleState fireToggleStateChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3500(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    const v0, 0x7f120abe

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$3700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz p1, :cond_8

    const v0, 0x7f120abf

    nop

    :cond_8
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    return-void

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1800(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 3

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mConnectedNetworksTitle:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableNetworksTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAvailableNetworksTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
