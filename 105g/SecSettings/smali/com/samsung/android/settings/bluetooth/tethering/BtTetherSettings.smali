.class public final Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "BtTetherSettings.java"

# interfaces
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;
.implements Landroid/widget/SemExpandableListView$OnGroupClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private TetheringStateCheck:Z

.field private isDrawingFirst:Z

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothState:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mIsAppbarExpanded:Z

.field private mIsListTop:Z

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTetherDescription:Landroid/widget/TextView;

.field private mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mTouchPosDiff:F

.field private mTouchStartY:F

.field private mTurnOnBtForTether:Z

.field private mUm:Landroid/os/UserManager;

.field private statusbarExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->statusbarExpanded:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isDrawingFirst:Z

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mIsAppbarExpanded:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mIsListTop:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTouchStartY:F

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTouchPosDiff:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->TetheringStateCheck:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mIsListTop:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mIsListTop:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mIsAppbarExpanded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mIsAppbarExpanded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTouchPosDiff:F

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTouchPosDiff:F

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTouchStartY:F

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTouchStartY:F

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->statusbarExpanded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateBtTetheredDeviceHistory()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v0

    return v0
.end method

.method private addTetheredDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addTetheredDevices()V

    return-void
.end method

.method private addTetheredDevices()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v6, v7, v6

    invoke-interface {v6, v5}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BtTetherSettings"

    const-string v7, "added connected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "BtTetherSettings"

    const-string v7, "added disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v7, v7, v6

    invoke-interface {v7, v5}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->createTetheredDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_3
    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v7, v7, v6

    invoke-interface {v7, v5}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->createTetheredDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_5
    goto :goto_3

    :cond_6
    return-void
.end method

.method private clearDeviceSummary()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private connectFromNAP(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$5;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Landroid/bluetooth/BluetoothDevice;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private createTetheredDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDevicePreference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    const-string v0, "BtTetherSettings"

    const-string v1, "Trying to create a device preference before the list of group or category exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    return-void
.end method

.method private isPanAllowed()I
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v3, :cond_0

    return v4

    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v3, "BtTetherSettings"

    const-string v4, "WIFI is connected, so BT tethering is not allowed by VZW requirement."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v1, "false"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string v6, "isBluetoothEnabled"

    invoke-static {v0, v5, v6, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isBluetoothTetheringEnabled"

    invoke-static {v0, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v5, :cond_6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "device_policy"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v9

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    if-eqz v9, :cond_5

    if-eq v8, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v2, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v10

    if-ne v10, v4, :cond_4

    return v3

    :cond_4
    const/4 v3, 0x0

    return v3

    :cond_5
    :goto_0
    const-string v2, "BtTetherSettings"

    const-string v3, "Internet Sharing is not allowed by MDM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    return v2

    :cond_6
    :goto_1
    const/4 v2, 0x3

    return v2

    :cond_7
    const-string v1, "BtTetherSettings"

    const-string v2, "mActivity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x63

    return v1
.end method

.method private isTetherOn()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "bluetooth.pan.tether_on"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private removeAllDevices()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    :cond_1
    return-void
.end method

.method private setBluetoothTethering(Z)V
    .locals 4

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private setListDivider(Landroid/graphics/drawable/InsetDrawable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDividerHeight(I)V

    return-void
.end method

.method private setListViewVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setTetherOffDescription()V
    .locals 5

    const-string v0, ""

    const v1, 0x7f12044f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120450

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeAll()V

    return-void
.end method

.method private setTetherOnDescription()V
    .locals 3

    const-string v0, ""

    const v1, 0x7f120452

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120453

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setGuideGroupMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGuidePreferenceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    return-void
.end method

.method private startBluetoothTethering()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isPanAllowed()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAN errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->showErrormsgfortether(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startProvisioningIfNecessary()V

    return-void
.end method

.method private startProvisioningIfNecessary()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TETHER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->turnOnBluetoothTethering()V

    :goto_1
    return-void
.end method

.method private turnOnBluetoothTethering()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    const-string v0, "BtTetherSettings"

    const-string v2, "Bluetooth was off, turn it on first"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    return-void
.end method

.method private updateBtTetheredDeviceHistory()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private updateContent()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v0

    const-string v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateContent - isTetherOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeAll()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setTetherOnDescription()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v4, 0x7f120451

    sget-object v5, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addTetheredDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setListViewVisible(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->updateDeviceListGroup(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setListViewVisible(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setTetherOffDescription()V

    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->statusbarExpanded:Z

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_3

    :cond_5
    const-string v2, "BtTetherSettings"

    const-string/jumbo v4, "skip setScanMode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->TetheringStateCheck:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isPanAllowed()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_7
    :goto_4
    goto :goto_5

    :cond_8
    const-string v0, "BtTetherSettings"

    const-string/jumbo v1, "skip updateContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f130376

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setListDivider(Landroid/graphics/drawable/InsetDrawable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "BtTetherSettings"

    const-string v1, "provisioning passed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->turnOnBluetoothTethering()V

    goto :goto_0

    :cond_0
    const-string v0, "BtTetherSettings"

    const-string v1, "provisioning not passed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateBtTetheredDeviceHistory()V

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    :cond_1
    return-void
.end method

.method public onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f1212b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f120897

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    const-string v3, "BtTetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChildClick :: selected device - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->connectFromNAP(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateBtTetheredDeviceHistory()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "BtTetherSettings"

    const-string v1, "Bluetooth is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setHasOptionsMenu(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f0d0226

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a089d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SemExpandableListView;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    const v2, 0x7f0a0500

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/NestedScrollView;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setAppbarLayoutListener(Landroid/support/design/widget/AppBarLayout;)V

    goto :goto_0

    :cond_1
    const-string v2, "BtTetherSettings"

    const-string v3, "onCreateView() :: AppBarLayout is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "right_pane_toolbar"

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->removeAllDevices()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceBondStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->TetheringStateCheck:Z

    :cond_0
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceDeleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onGroupClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1212b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f120899

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setTetheredSettings(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->clearDeviceSummary()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_1
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged : state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->TetheringStateCheck:Z

    :cond_1
    if-eq p3, v1, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->TetheringStateCheck:Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateBtTetheredDeviceHistory()V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setTetheredSettings(Z)V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/SemStatusBarManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->statusbarExpanded:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "BtTetherSettings"

    const-string v2, "onResume: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_2
    const-string v1, "BtTetherSettings"

    const-string v2, "mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateBtTetheredDeviceHistory()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    :goto_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const-string v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " bTetherState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    const v1, 0x7f120898

    const v2, 0x7f1212b3

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startBluetoothTethering()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    :goto_0
    return-void
.end method

.method public onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public setAppbarLayoutListener(Landroid/support/design/widget/AppBarLayout;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_0

    const-string v0, "BtTetherSettings"

    const-string v1, "mExpandableAppBarLayout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-nez v0, :cond_1

    const-string v0, "BtTetherSettings"

    const-string v1, "mNestedScrollView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout$Behavior;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$6;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$7;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$9;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$10;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method showErrormsgfortether(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121f97

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12077a

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121a58

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f1213e1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x10402d4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
