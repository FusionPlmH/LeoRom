.class public Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoHotspotAllowedDeviceList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$SortWifiApBleScanList;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final MSG_DISPLAY_TOAST_FAILED:I

.field private final MSG_FETCH_SCAN_RESULT:I

.field private final MSG_REMOVE_FROM_PREF:I

.field private mActivity:Landroid/app/Activity;

.field private mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

.field private mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanResultDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressBarItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AutoHotspotAllowedDeviceList"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->MSG_DISPLAY_TOAST_FAILED:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->MSG_FETCH_SCAN_RESULT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->MSG_REMOVE_FROM_PREF:I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->showAllowedListPreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/support/v7/preference/SecPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->findPreferenceFromAllowedList(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->checkIfAnyPreferenceIsConnecting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mSemWifiApSmartCallback:Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->startScanningDevices()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->stopScanningDevices()V

    return-void
.end method

.method private checkIfAnyPreferenceIsConnecting()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v6, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    move-object v4, v6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfAnyPreferenceIsConnecting() - Processing ssid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", connectionState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v6, v5, :cond_0

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfAnyPreferenceIsConnecting() - ssid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is already in connecting state. State: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "checkIfAnyPreferenceIsConnecting() - no other preference is in connecting state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->removeHeaderView()V

    const v1, 0x7f15001f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->addPreferencesFromResource(I)V

    const-string v1, "allowed_device_list_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->seslSetSubheaderRoundedBg(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->setAutoRemoveInsetCategory(Z)V

    return-object v0
.end method

.method private findPreferenceFromAllowedList(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findPreferenceFromAllowedList() - mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findPreferenceFromAllowedList() - found preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v2, "findPreferenceFromAllowedList() - preference not found "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private setDivider()V
    .locals 8

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    move-object v2, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v14/preference/R$styleable;->PreferenceFragment:[I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f04019a

    const v7, 0x1010506

    invoke-static {v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/utils/DividerItemDecorator;

    invoke-direct {v0, v2}, Lcom/android/settings/utils/DividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v0
.end method

.method private showAllowedListPreference()V
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "showAllowedListPreference() : Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->semGetWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAllowedListPreference() - Before sort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$SortWifiApBleScanList;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$SortWifiApBleScanList;-><init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showAllowedListPreference() - After sort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mScanResultDevices:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->updateAllowedDevicePreferenceList(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->showEmptyScreenPreference()V

    :goto_2
    return-void
.end method

.method private showEmptyScreenPreference()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "showEmptyScreenPreference() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    return-void
.end method

.method private startScanningDevices()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "startScanningDevices() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->semWifiApBleD2DMhsRole(Z)Z

    return-void
.end method

.method private stopScanningDevices()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "stopScanningDevices() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->semWifiApBleD2DMhsRole(Z)Z

    return-void
.end method

.method private updateAllowedDevicePreferenceList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllowedDevicePreferenceList() - Triggered, Number of devices received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-direct {v4, v5, v3, v6}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, v3, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAllowedDevicePreferenceList() - tempDevice status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-gez v5, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setEnabled(Z)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setEnabled(Z)V

    const v6, 0x7f121884

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setSummary(I)V

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setEnabled(Z)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/SemWifiApSmartWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAllowedDevicePreferenceList() - Device name is modified already to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v7, "updateAllowedDevicePreferenceList() - Device name is not modified from add allowed list section"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mAllowedDeviceListPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setOrder(I)V

    nop

    move v1, v6

    goto/16 :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateDivider()V
    .locals 8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v1, v3

    nop

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    invoke-virtual {v3}, Lcom/android/settings/utils/DividerItemDecorator;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070479

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v2, v4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    if-eqz v4, :cond_3

    const v4, 0x7f07047c

    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/settings/utils/DividerItemDecorator;->setDivider(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v5, v6, v4, v2}, Lcom/android/settings/utils/DividerItemDecorator;->setDivider(Landroid/graphics/drawable/Drawable;II)V

    :cond_3
    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mItemDecoration:Lcom/android/settings/utils/DividerItemDecorator;

    invoke-virtual {v4, v3}, Lcom/android/settings/utils/DividerItemDecorator;->setDividerHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xd48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dClientUpdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->setDivider()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->updateDivider()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "DialogInterface onClick() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->progressBarItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->progressBarItem:Landroid/view/MenuItem;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->progressBarItem:Landroid/view/MenuItem;

    const v2, 0x7f0d02be

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onPause() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onResume() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->showAllowedListPreference()V

    return-void
.end method

.method public onStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onStart() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->startScanningDevices()V

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->TAG:Ljava/lang/String;

    const-string v1, "onStop() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->stopScanningDevices()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
