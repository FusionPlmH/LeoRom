.class public Lcom/android/settings/wifi/details/WifiIpSettingsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiIpSettingsController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field protected focusListener:Landroid/view/View$OnFocusChangeListener;

.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private final mActivity:Landroid/app/Activity;

.field private mAutoGenFirstTime:Z

.field mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

.field private mDns2View:Landroid/widget/TextView;

.field private mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Landroid/app/Fragment;

.field private mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mInitDnsAddress:Ljava/lang/String;

.field private mInitDnsAddress2:Ljava/lang/String;

.field private mInitGwAddress:Ljava/lang/String;

.field private mInitIpAddress:Ljava/lang/String;

.field private mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mInitProxy:I

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

.field private mIpAddressView:Landroid/widget/EditText;

.field protected mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

.field private mIpSpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

.field private mProxyAuthIdView:Landroid/widget/TextView;

.field private mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

.field private mProxyAuthPwView:Landroid/widget/TextView;

.field private mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

.field private mProxyExclusionlistView:Landroid/widget/TextView;

.field private mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

.field private mProxyHostNameView:Landroid/widget/TextView;

.field private mProxyIndex:I

.field private mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

.field private mProxySpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

.field private mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

.field private mSAScreenId:Ljava/lang/String;

.field private mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mTempConfigInstance:Lcom/android/settings/wifi/details/TempWifiConfiguration;

.field private final mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/app/Activity;Landroid/net/ConnectivityManager;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitProxy:I

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iput v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    new-instance v1, Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;Lcom/android/settings/wifi/details/WifiIpSettingsController$1;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAutoGenFirstTime:Z

    new-instance v0, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController$5;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/settings/wifi/details/WifiIpSettingsController$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController$6;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    new-instance v0, Lcom/android/settings/wifi/details/WifiIpSettingsController$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController$7;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mFragment:Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfigInstance:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfigInstance:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    iput-object p7, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/details/WifiIpSettingsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->showIpConfigFields(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSAScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/details/WifiIpSettingsController;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->insertLogging(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/net/IpConfiguration$ProxySettings;)Landroid/net/IpConfiguration$ProxySettings;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/details/WifiIpSettingsController;)Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/details/WifiIpSettingsController;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/details/WifiIpSettingsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->showProxyFields(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->disableViewsIfAppropriate()V

    return-void
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private disableViewsIfAppropriate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEnabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->ipAndProxyFieldsAreValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    return-void
.end method

.method private exitActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private exitActivityWithLoggig()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSAScreenId:Ljava/lang/String;

    const v1, 0x7f120908

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->insertLogging(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->exitActivity()V

    return-void
.end method

.method private findEditTextFromLayout(Lcom/android/settings/applications/LayoutPreference;)V
    .locals 5

    sget-boolean v0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiIpSettingsController"

    const-string v1, "findEditTextFromLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0a086b

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settings/applications/LayoutPreference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiIpSettingsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findEditTextFromLayout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not Visible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0a02a3

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiIpSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findEditTextFromLayout add mEditTexts :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 5

    const-string v0, "WifiIpSettingsController"

    const-string v1, "generateBlankFields"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const v2, 0x7f121eb3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    if-ltz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v0, 0x18

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v0, 0x18

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {p1, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput-byte v4, v2, v3

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_1
    nop

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    const v2, 0x7f121e3a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v4, 0x2

    move v4, v1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_2

    if-eqz v1, :cond_2

    move v2, v4

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "WifiIpSettingsController"

    const-string v2, "getWifiConfigurationForNetworkId return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V
    .locals 10

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiIpSettingsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showIpConfigFields ip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    if-nez v5, :cond_1

    iput-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    if-nez v8, :cond_3

    iput-object v7, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    :cond_3
    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-direct {p0, v6, v5}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    goto :goto_0

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "WifiIpSettingsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showIpConfigFields gw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    if-nez v2, :cond_7

    iput-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    if-nez v1, :cond_a

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    if-nez v7, :cond_9

    iput-object v6, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    :cond_9
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    goto :goto_2

    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, "WifiIpSettingsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showIpConfigFields dns1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v5, :cond_e

    iput-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v5, :cond_10

    const-string v5, ""

    iput-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    :cond_10
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_11
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v5, :cond_12

    const-string v5, "WifiIpSettingsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showIpConfigFields dns2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v5, :cond_13

    iput-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_13
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_14
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v5, :cond_15

    const-string v5, ""

    iput-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_15
    :goto_5
    return-void
.end method

.method private insertLogging(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertLogging(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3, p4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 14

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    const-string v1, "WifiIpSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipAndProxyFieldsAreValid result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "WifiIpSettingsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipAndProxyFieldsAreValid mProxySettings : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionlistView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    move v4, v2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    invoke-static {v0, v1, v9}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const v4, 0x7f121187

    :goto_0
    move v11, v3

    move v10, v4

    if-nez v10, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0, v11, v9}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Landroid/net/ProxyInfo;

    move-object v3, v2

    move-object v4, v0

    move v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    :goto_1
    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_8
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method private isNeedToReconnect()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiIpSettingsController"

    const-string v1, "change ip assignment method by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiIpSettingsController"

    const-string v3, "changed ip address by user"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "WifiIpSettingsController"

    const-string v3, "changed gateway address by user"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "WifiIpSettingsController"

    const-string v3, "changed dns1 address by user"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "WifiIpSettingsController"

    const-string v3, "changed dns2 address by user"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v2

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->save()V

    return-void
.end method

.method public static synthetic lambda$displayPreference$1(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->exitActivityWithLoggig()V

    return-void
.end method

.method private save()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSAScreenId:Ljava/lang/String;

    const v1, 0x7f12090d

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->insertLogging(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_0
    const-string v1, "WifiIpSettingsController"

    const-string v2, "save set ip settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WifiIpSettingsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save mProxySettings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "WifiIpSettingsController"

    const-string v3, "save new IpConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/IpConfiguration;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_0

    :cond_1
    const-string v2, "WifiIpSettingsController"

    const-string v3, "save mIpConfiguration is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiConfiguration;->setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "metered"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiIpSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save update METERED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_1

    :cond_2
    const-string v2, "WifiIpSettingsController"

    const-string v3, "save METERED is not show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "eap_anonymous"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiIpSettingsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save update ANONYMOUS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "WifiIpSettingsController"

    const-string v3, "save METERED is not show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "eap_phase2"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getPhase2Override(II)I

    const-string v4, "WifiIpSettingsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save update PHASE2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_4
    const-string v2, "WifiIpSettingsController"

    const-string v3, "save PHASE2 is not show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "eap_phase1"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "1"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "fast_provisioning="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "1"

    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    const-string v4, "WifiIpSettingsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save update PHASE1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v2, "WifiIpSettingsController"

    const-string v3, "save PHASE1 is not show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->isNeedToReconnect()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "WifiIpSettingsController"

    const-string v3, "disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->saveConfig(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_5

    :cond_8
    const-string v2, "WifiIpSettingsController"

    const-string/jumbo v3, "updateNetwork"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitProxy:I

    iget v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    :cond_9
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->saveConfig(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfigInstance:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setconfig(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfigInstance:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v2}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    :goto_5
    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    const-string v0, "WifiIpSettingsController"

    const-string v1, "save mTempConfig is SAVE FOR CONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const-string v0, "WifiIpSettingsController"

    const-string v1, "save mTempConfig is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->exitActivity()V

    return-void
.end method

.method private saveConfig(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private showIpConfigFields(I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_5

    :cond_1
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAddress:Ljava/lang/String;

    :cond_4
    :goto_0
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    if-nez v2, :cond_5

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitGwAddress:Ljava/lang/String;

    :goto_1
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v3, :cond_7

    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v4, :cond_9

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress:Ljava/lang/String;

    :cond_b
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v3, :cond_c

    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v4, :cond_e

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_e
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    goto :goto_5

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v2, :cond_10

    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->updateImeOptionsForEditText()V

    return-void
.end method

.method private showProxyFields(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionlistView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->updateImeOptionsForEditText()V

    return-void
.end method

.method private showSoftKeyboardOnResume()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/applications/LayoutPreference;

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "WifiIpSettingsController"

    const-string/jumbo v5, "showSoftKeyboardOnResume not LayoutPreference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->findEditTextFromLayout(Lcom/android/settings/applications/LayoutPreference;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiIpSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSoftKeyboardOnResume mEditTexts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0xc8

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v5, Lcom/android/settings/wifi/details/WifiIpSettingsController$3;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController$3;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/android/settings/wifi/details/WifiIpSettingsController$4;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController$4;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;Landroid/view/View;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 11

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f121e8a

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v2, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAutoGenFirstTime:Z

    if-eqz v4, :cond_3

    iput-boolean v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAutoGenFirstTime:Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    :cond_3
    nop

    const/4 v4, -0x1

    :try_start_1
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    if-ltz v4, :cond_5

    const/16 v5, 0x20

    if-le v4, v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    const v1, 0x7f121e8b

    return v1

    :catch_0
    move-exception v1

    return v3

    :catch_1
    move-exception v3

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mContext:Landroid/content/Context;

    const v7, 0x7f121eb3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    nop

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :try_start_2
    invoke-static {v2, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-byte v8, v6, v7

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v5

    :goto_2
    goto :goto_3

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    const v6, 0x7f121e89

    if-nez v5, :cond_7

    return v6

    :cond_7
    invoke-virtual {v5}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v7

    if-eqz v7, :cond_8

    return v6

    :cond_8
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    :goto_3
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const v8, 0x7f121e88

    if-eqz v7, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    return v8

    :cond_9
    const/4 v7, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    :try_start_3
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v9

    nop

    iget-object v9, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_4
    move-exception v1

    return v8

    :cond_a
    iget-object v9, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    :try_start_4
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v7, v9

    nop

    iget-object v8, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_5
    move-exception v1

    return v8

    :cond_b
    :goto_5
    return v1

    :catch_6
    move-exception v1

    return v3

    :cond_c
    :goto_6
    return v3
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "ip_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    const v1, 0x7f121e87

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    const v1, 0x7f03011a

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setCallback(Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;)V

    const-string/jumbo v0, "wifi_ip_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a086b

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f121e85

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddrPref:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a02a3

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    const v3, 0x7f121e86

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    const/high16 v3, 0x80000

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAddressView:Landroid/widget/EditText;

    const-string v4, "inputType=ipAddress"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f121e5d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    const v4, 0x7f121e5e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mGatewayView:Landroid/widget/TextView;

    const-string v4, "inputType=ipAddress"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const-string/jumbo v0, "wifi_network_prefix_length"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f121eb2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLenPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const v4, 0x7f121eb3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const-string/jumbo v0, "wifi_dns1"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f121e39

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    const v5, 0x7f121e3a

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns1View:Landroid/widget/TextView;

    const-string v5, "inputType=ipAddress"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const-string/jumbo v0, "wifi_dns2"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f121e3b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2Pref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    const v5, 0x7f121e3c

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mDns2View:Landroid/widget/TextView;

    const-string v3, "inputType=ipAddress"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const-string v0, "proxy_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    const v3, 0x7f12118f

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    const v3, 0x7f030128

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setCallback(Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;)V

    const-string v0, "proxy_warning_limited_support"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    const-string v0, "proxy_pac"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f121191

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacView:Landroid/widget/TextView;

    const v3, 0x7f121190

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPacView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string v0, "proxy_hostname"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f12118b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNamePref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNameView:Landroid/widget/TextView;

    const v3, 0x7f12118a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyHostNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string v0, "proxy_port"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f12118d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortView:Landroid/widget/TextView;

    const v3, 0x7f12118c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setInputType(I)V

    const-string v0, "proxy_exclusionlist"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f121189

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionListPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionlistView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionlistView:Landroid/widget/TextView;

    const v3, 0x7f121188

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionlistView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyExclusionlistView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string v0, "proxy_authentication_id"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f12117e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthIdView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string v0, "proxy_authentication_password"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12117d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTextWatcher:Lcom/android/settings/wifi/details/WifiIpSettingsController$EditTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyAuthPwView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a06a4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSaveButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiIpSettingsController$H0WCGVtTkt58RKnOhzhSO5ET70Y;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiIpSettingsController$H0WCGVtTkt58RKnOhzhSO5ET70Y;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a015a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiIpSettingsController$U-AMiWEMsatsvITXuuL2_qDIMq0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiIpSettingsController$U-AMiWEMsatsvITXuuL2_qDIMq0;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->showSoftKeyboardOnResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->disableViewsIfAppropriate()V

    return-void
.end method

.method getIpOverride()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getPhase2Override(II)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    packed-switch p2, :pswitch_data_0

    const-string v1, "WifiIpSettingsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhase2Override :: Unknown phase2 method :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    packed-switch p2, :pswitch_data_1

    const-string v1, "WifiIpSettingsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhase2Override :: Unknown phase2 method :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    nop

    :cond_3
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getProxyOverride()I
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    :goto_0
    iget v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    iput v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInitProxy:I

    goto :goto_1

    :cond_2
    const-string v0, "WifiIpSettingsController"

    const-string v1, "mTempConfig is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    return v0
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiIpSettingsController"

    const-string v1, "    **** hideSoftKeyboard *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Lcom/android/settings/wifi/details/WifiIpSettingsController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController$1;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/android/settings/wifi/details/WifiIpSettingsController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController$2;-><init>(Lcom/android/settings/wifi/details/WifiIpSettingsController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getIpOverride()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    const-string v2, "WifiIpSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnCreate ipOverride : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->getProxyOverride()I

    const-string v2, "WifiIpSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnCreate ProxyOverride : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    if-ne v2, v1, :cond_1

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WifiIpSettingsController"

    const-string v1, "onDestroy set mTempConfig null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ip_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->showIpConfigFields(I)V

    const-string v2, "WifiIpSettingsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange KEY_IP_PREF : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v2, "proxy_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne v1, v3, :cond_2

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    const v4, 0x7f121192

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    goto :goto_1

    :cond_3
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyWarningPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    :goto_1
    iput v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->showProxyFields(I)V

    const-string v2, "WifiIpSettingsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange mProxySettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->enableSubmitIfAppropriate()V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->disableViewsIfAppropriate()V

    return v3
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetwork:Landroid/net/Network;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->showIpConfigFields(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "ip_settings"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mIpSettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setSelection(I)V

    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->showProxyFields(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "proxy_settings"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxySettingsPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mProxyIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setSelection(I)V

    :cond_3
    return-void
.end method

.method protected updateImeOptionsForEditText()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settings/applications/LayoutPreference;

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiIpSettingsController"

    const-string/jumbo v6, "updateImeOptionsForEditText not LayoutPreference"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->findEditTextFromLayout(Lcom/android/settings/applications/LayoutPreference;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "WifiIpSettingsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateImeOptionsForEditText - prev:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    nop

    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getId()I

    move-result v6

    if-ne v5, v6, :cond_6

    sget-boolean v5, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "WifiIpSettingsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateImeOptions - active:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_a

    instance-of v2, v3, Landroid/widget/EditText;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mEditTexts:Ljava/util/ArrayList;

    move-object v4, v3

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "WifiIpSettingsController"

    const-string/jumbo v4, "updateImeOptions - focused view is invisible"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    sget-boolean v2, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiIpSettingsController"

    const-string/jumbo v4, "updateImeOptions - focused view is visible"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    sget-boolean v2, Lcom/android/settings/wifi/details/WifiIpSettingsController;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "WifiIpSettingsController"

    const-string/jumbo v4, "updateImeOptions - focused view is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiIpSettingsController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/details/WifiIpSettingsController;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_4

    :cond_c
    goto :goto_3

    :cond_d
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    return-void
.end method
