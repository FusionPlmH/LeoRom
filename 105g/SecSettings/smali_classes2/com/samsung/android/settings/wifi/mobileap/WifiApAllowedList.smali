.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    }
.end annotation


# static fields
.field private static mDeleteClicked:Z


# instance fields
.field private final ADD_TO_ADAPTER:I

.field private final DELETE_ONE_ITEM:I

.field private final TAG:Ljava/lang/String;

.field private desktopMode:Z

.field private fromOnSave:Z

.field private isCheckBoxSelected:Z

.field private isEnabledShowBtnBg:Z

.field private isLand:Z

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/support/v7/app/AppCompatActivity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mAllSelectionMode:I

.field private mAllowAll:Z

.field private mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

.field private mAllowedListContainer:Landroid/widget/ListView;

.field private mAllowedListReceiverListener:Z

.field private mBubbleLandscape:Landroid/widget/RelativeLayout;

.field private mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

.field private mBubblePortrait:Landroid/widget/RelativeLayout;

.field private mCheckBoxMarginLeft:I

.field private mCheckBoxMarginRight:I

.field private mCheckBoxWidthForDeleteAnimation:I

.field private mClickedPos:I

.field private mCount:Landroid/widget/TextView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

.field private mDialogType:I

.field private mDividerLayout:Landroid/widget/LinearLayout;

.field private mDragSelectedUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mIsReset:Z

.field private mIsTablet:Z

.field private mIsZeroSelected:Z

.field private mMultiSelectionMode:Z

.field private mPrevMAC:Ljava/lang/String;

.field private mPrevName:Ljava/lang/String;

.field private mProgressCircle:Landroid/widget/ProgressBar;

.field private mSPenSelect:Z

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSelectAllFrame:Landroid/widget/FrameLayout;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchPref:Landroid/widget/LinearLayout;

.field private mSwitchPrefListener:Landroid/view/View$OnClickListener;

.field private mTitleAllowed:Landroid/widget/TextView;

.field private mWifiApDeviceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

.field private relLayout:Landroid/widget/RelativeLayout;

.field private saveArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "WifiApAllowedList"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->ADD_TO_ADAPTER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->DELETE_ONE_ITEM:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListReceiverListener:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isCheckBoxSelected:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->fromOnSave:Z

    const/16 v1, 0xa

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->saveArray:[Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->desktopMode:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->insertLog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->fromOnSave:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->fromOnSave:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDividerLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->handleWifiApState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->saveArray:[Z

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;[Z)[Z
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->saveArray:[Z

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isCheckBoxSelected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isCheckBoxSelected:Z

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    return p1
.end method

.method private changeActionBar()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setCustomActionBar()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method private changeAllowPolicy()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x3

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    return-void
.end method

.method private changeScreen()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const-string v2, "WifiApAllowedList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDisconnectDialog()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    :goto_0
    return-void
.end method

.method private getRvfMode()I
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method private handleWifiApState(I)V
    .locals 7

    const-string v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiApState.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "WifiApAllowedList"

    const-string v1, "WIFI_AP_STATE_FAILED case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initActionBar()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v1, 0x7f121d53

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initSwitch()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private insertLog()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHOM"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    if-eqz v3, :cond_0

    const-string v3, "ALL"

    goto :goto_0

    :cond_0
    const-string v3, "ONLY"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private isSupportSpen()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "WifiApAllowedList"

    const-string v3, " isSupportSpen true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v3, "WifiApAllowedList"

    const-string v4, " isSupportSpen false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v2, "WifiApAllowedList"

    const-string v3, " isSupportSpen false - context null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private refreshAdapter(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeScreen()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setCustomActionBar()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v3, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    :cond_3
    return-void
.end method

.method private showDisconnectDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f121ce2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121cbf

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f121238

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f120475

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method private showFadeOutAnimation(Z)V
    .locals 8

    const-string v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFadeOutAnimation.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-wide/16 v1, 0x5dc

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private updateActionBarCount(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    const v5, 0x7f1206eb

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v4

    if-ne p1, v4, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p2, p1}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    const-string v2, "WifiApAllowedList"

    const-string v3, "Updated device successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private updateEmptyView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateList()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showFadeOutAnimation(Z)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public deleteFromListAdapter([Ljava/lang/Boolean;)V
    .locals 11

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v7, v3, :cond_0

    const/4 v7, 0x4

    iput v7, v0, Landroid/os/Message;->what:I

    const-string v7, "mac"

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v8, 0x4d

    iput v8, v7, Landroid/os/Message;->what:I

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "feature"

    const-string v10, "MHAD"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "extra"

    const-string v10, "DELETE"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->initArr()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->clearList()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xd52

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const-string v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivity.getSupportActionBar1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_2

    const-string v1, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v3, 0x7f080641

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0d02a2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f0a02b0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    const v5, 0x7f0a02af

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    const v5, 0x7f0a012e

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    const v6, 0x7f0a012c

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a012d

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscapeDex:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a006d

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    const v7, 0x7f0a0433

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDividerLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDividerLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v7, 0x7f0a0828

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/16 v9, 0xf

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0601bb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const v9, 0x7f0a065b

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->relLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->relLayout:Landroid/widget/RelativeLayout;

    const v9, 0x7f0a086b

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mTitleAllowed:Landroid/widget/TextView;

    const v7, 0x7f0a006e

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    const v7, 0x7f0a0675

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->fromOnSave:Z

    const-string v7, "isCheckBoxSelected"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isCheckBoxSelected:Z

    const-string v7, "saveArray"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->saveArray:[Z

    const-string v7, "mPrevName"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    const-string v7, "mPrevMAC"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    const-string v7, "mClickedPos"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "desktopmode"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeskManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->desktopMode:Z

    :cond_4
    const-string v7, "WifiApAllowedList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityCreated, desktopMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->desktopMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "VZW"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isSupportSpen()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const-string v6, "device_list_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

    const v6, 0x7f0d02a8

    invoke-virtual {v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    const v6, 0x7f121d53

    invoke-virtual {v4, v6}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_8
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v6, 0x7f0a01ed

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v6, 0x7f0a070b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v6, 0x7f0a0709

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v6, 0x7f0a070c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    const/16 v6, 0x10

    invoke-virtual {v4, v6, v6}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    move v4, v2

    goto :goto_1

    :cond_a
    move v4, v0

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initSwitch()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    sget-object v8, Lcom/android/settings/R$styleable;->AllowedListItemView:[I

    invoke-virtual {v7, v4, v8}, Landroid/support/v7/app/AppCompatActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x4d

    :try_start_0
    invoke-virtual {v7, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    const/16 v6, 0xb

    invoke-virtual {v7, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    const/16 v0, 0x18

    invoke-virtual {v7, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const v2, 0x7f1212e7

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const v5, 0x7f1208d5

    invoke-static {v2, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_0

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto/16 :goto_0

    :cond_0
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v5, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_ap_number_of_max_macaddr_client"

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v7, 0x4d

    iput v7, v6, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "feature"

    const-string v9, "MHAD"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "extra"

    const-string v9, "ADD"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    :pswitch_3
    const v3, 0x7f1208d7

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setMac(Ljava/lang/String;)V

    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    nop

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    const v0, 0x7f15014a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v1, 0x7f1212e7

    const v2, 0x7f1208d6

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    :cond_0
    const/4 v0, 0x4

    const/high16 v1, 0x1040000

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f121d64

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120511

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f121fd8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f12069a

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$15;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f12069a

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_4

    const/4 v0, 0x2

    const v2, 0x7f12050d

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    const v3, 0x7f1212e7

    if-eq v1, v2, :cond_b

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f121d9e

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_0
    return v2

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-nez v1, :cond_8

    const v1, 0x7f1212e8

    const v3, 0x7f1208db

    invoke-static {v1, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_number_of_max_macaddr_client"

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    const v1, 0x7f1208da

    invoke-static {v3, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne v1, v2, :cond_9

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return v2

    :cond_9
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_a
    return v2

    :cond_b
    const v0, 0x7f1208df

    invoke-static {v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isCheckBoxSelected"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isCheckBoxSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "saveArray"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->saveArray:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v0, "mPrevName"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mPrevMAC"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mClickedPos"

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListReceiverListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListReceiverListener:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListReceiverListener:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListReceiverListener:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public reloadWhiteList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V
    .locals 9

    const-string v0, "WifiApAllowedList"

    const-string v1, "SelectAll CheckBox Animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v4, v5

    neg-int v0, v4

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v5, 0x14d

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v4, p3, p4}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/ListView;J)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v4, v5

    neg-int v0, v4

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setTransitionGroup(Z)V

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v5, 0x14d

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060396

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#ff"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<font color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const v4, 0x7f121cb0

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$16;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
