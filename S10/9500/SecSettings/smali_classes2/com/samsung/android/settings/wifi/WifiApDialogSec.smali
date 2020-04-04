.class public Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.super Landroid/app/AlertDialog;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DBG:Z

.field private static mSecurityTypeIndex:I

.field public static mSelectedChannel:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

.field private advanced:Landroid/widget/CheckBox;

.field private bTimeOutSpinner:Z

.field private customView:Landroid/view/View;

.field private focusListener:Landroid/view/View$OnFocusChangeListener;

.field private hideSsidDoNotShowAgain:Z

.field private isPMFEnabled:Z

.field private isPowerSaveEnabled:Z

.field private isTimeoutValueChanged:Z

.field private mAdvancedShowLayout:Landroid/widget/LinearLayout;

.field private mBand2gTextView:Landroid/widget/TextView;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel2gLayout:Landroid/widget/LinearLayout;

.field private mChannel5g:Landroid/widget/TextView;

.field private mChannel5gLayout:Landroid/widget/LinearLayout;

.field private mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

.field private mChannel5genabled:Z

.field private mChannelBroadcast:Landroid/widget/TextView;

.field public mChecked5GPrefer:Z

.field private mConfigureTitleTV:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field public mDismissIfOpen:Z

.field private mHideSsid:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPMFCheckBox:Landroid/widget/CheckBox;

.field private mPMFLayout:Landroid/widget/LinearLayout;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordShort:Landroid/widget/TextView;

.field private mPasswordShowLayout:Landroid/widget/LinearLayout;

.field private mPowerSaveCheckBox:Landroid/widget/CheckBox;

.field private mPowerSaveLayout:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveButtonClicked:Z

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSelectedBand:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidHideLayout:Landroid/widget/LinearLayout;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field private mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field private passwordWatcher:Landroid/text/TextWatcher;

.field private ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    const-string v1, "36"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    const-string v1, "149"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_f

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    :cond_0
    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    const/4 v2, -0x1

    const/16 v3, 0xe

    const/16 v4, 0xb

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ltz v1, :cond_2

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-gt v1, v4, :cond_2

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_2
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v3, :cond_4

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wifi_ap_last_2g_channel"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_4
    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    if-ne v1, v2, :cond_7

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-ltz v1, :cond_5

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-gt v1, v4, :cond_5

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto :goto_2

    :cond_5
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v3, :cond_6

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_2

    :cond_6
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v4, :cond_7

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_7

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_5G_checked"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "WifiApDialogSec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " before mSelectedChannel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast2gChannel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast5gChannel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " 5g_checked:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-nez v2, :cond_8

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v2, v4, :cond_8

    const-string v2, "WifiApDialogSec"

    const-string v3, "abnormal case"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_5G_checked"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_8
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/4 v3, 0x1

    if-le v2, v4, :cond_a

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v4, 0x95

    if-ne v2, v4, :cond_9

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_5G_checked"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const-string v2, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing MHS Channel to Auto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v2, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast2gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast5gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_b
    const-string v2, "TMO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "NEWCO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_timeout_setting"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_pmf_checked"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_e

    move v0, v3

    nop

    :cond_e
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    const-string v0, "WifiApDialogSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requirePMF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    const-string v1, "36"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    const-string v1, "149"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPowerSaveEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string v1, "WifiApDialogSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiApDialogSec2 - mSecurityTypeIndex ?  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   permitDismiss ?   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   continueOpen ?   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz p6, :cond_1

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    const/4 v2, -0x1

    const/16 v3, 0xe

    const/16 v4, 0xb

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ltz v1, :cond_4

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-gt v1, v4, :cond_4

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_4
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v3, :cond_6

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wifi_ap_last_2g_channel"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_6
    :goto_3
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    if-ne v1, v2, :cond_9

    iget v1, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-ltz v1, :cond_7

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-gt v1, v4, :cond_7

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto :goto_4

    :cond_7
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v3, :cond_8

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_4

    :cond_8
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-le v1, v4, :cond_9

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_9

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_5G_checked"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "WifiApDialogSec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " before mSelectedChannel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast2gChannel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast5gChannel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " 5g_checked:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/4 v3, 0x1

    if-le v2, v4, :cond_b

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v4, 0x95

    if-ne v2, v4, :cond_a

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_5G_checked"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const-string v2, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing MHS Channel to Auto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v2, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast2gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLast5gChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_c
    const-string v2, "TMO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "NEWCO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_timeout_setting"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_pmf_checked"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_f

    move v0, v3

    nop

    :cond_f
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    const-string v0, "WifiApDialogSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requirePMF..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiAp5gDoNotShowAgain:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method private checkMaxFontSize(Landroid/widget/TextView;)V
    .locals 7

    const v0, 0x3f99999a    # 1.2f

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x111008d

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v3, 0x0

    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    cmpl-float v4, v1, v0

    if-lez v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    div-float/2addr v4, v1

    const/4 v5, 0x0

    mul-float v6, v4, v0

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method private getChgType()Z
    .locals 7

    const-string v0, "/sys/class/sec/switch/chg_type"

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, "WifiApDialogSec"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v6, "Error IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_2
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    return v3

    :cond_2
    :goto_3
    const/4 v3, 0x1

    return v3

    :goto_4
    nop

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WifiApDialogSec"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_3
    :goto_5
    throw v3
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v0

    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    return v0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1

    if-eqz p1, :cond_5

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x258

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4b0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x708

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe10

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1

    const/16 v0, 0x4b0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v0, 0xe10

    return v0

    :pswitch_1
    const/16 v0, 0x708

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/16 v0, 0x258

    return v0

    :pswitch_4
    const/16 v0, 0x12c

    return v0

    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3

    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isWifiSharingEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WifiApDialogSec"

    const-string v3, "Wifi Sharing not defined"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private restartFocusedViewInput()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartViewInput(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private saveTempConfig()V
    .locals 6

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USC"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_2
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto :goto_2

    :cond_4
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_ap_pmf_checked"

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    nop

    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4

    const-string v0, "WifiApDialogSec"

    const-string v1, "Enter to setAdapterToSpinner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02a5

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setTimeout(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string v1, "SAMSUNG_HOTSPOT"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_timeout_setting"

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showSecurityFields()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f0a06ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/16 v1, 0x8

    const v2, 0x7f0a02f2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x90

    goto :goto_0

    :cond_3
    const/16 v2, 0x80

    :goto_0
    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method private validate()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "isWifiApSettingUserModificationAllowed"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "isOpenWifiApAllowed"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v5, :cond_2

    const-string v5, "isOpenWifiApAllowed"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_4

    if-nez v0, :cond_5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :cond_6
    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    :cond_7
    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_9

    :cond_8
    const/4 v2, 0x0

    :cond_9
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_a
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USC"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    const/16 v3, 0x95

    if-eqz v1, :cond_2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto :goto_2

    :cond_2
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :goto_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto :goto_3

    :cond_4
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :goto_3
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto :goto_4

    :cond_6
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_pmf_checked"

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "WifiApDialogSec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfig() "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_7
    return-object v0

    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_8
    return-object v0

    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTempConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    return v0
.end method

.method public isSaveButtonClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f0a06e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    :cond_1
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    const-string v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a0391

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const v6, 0x7f1212a9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v1, :cond_10

    const v1, 0x7f0a0756

    const/16 v9, 0x8

    if-eq v0, v1, :cond_b

    const v1, 0x7f0a075e

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const v0, 0x7f1208d2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v2, v4

    nop

    :cond_0
    invoke-static {v6, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const-string v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPowerSaveEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_1
    const v0, 0x7f1208d1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v2, v4

    nop

    :cond_1
    invoke-static {v6, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const-string v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPMFChecked.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const v1, 0x7f1208cb

    if-eqz v0, :cond_2

    move-wide v2, v4

    nop

    :cond_2
    invoke-static {v6, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    goto/16 :goto_6

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "149"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_6

    :cond_4
    sput v8, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto/16 :goto_6

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    move v2, v9

    goto :goto_0

    :cond_5
    move v2, v8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v8, v9

    :goto_1
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v1, "149"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_7

    move v2, v8

    goto :goto_2

    :cond_7
    move v2, v9

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move v8, v9

    nop

    :cond_8
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x90

    goto :goto_3

    :cond_a
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto/16 :goto_6

    :cond_b
    const v0, 0x7f1208d5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    move-wide v2, v4

    nop

    :cond_c
    invoke-static {v6, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    move v9, v8

    goto :goto_4

    :cond_d
    nop

    :goto_4
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_e
    goto/16 :goto_6

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    goto/16 :goto_6

    :cond_10
    const v0, 0x7f1208ce

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    move-wide v2, v4

    nop

    :cond_11
    invoke-static {v6, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const-string v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v2, 0x7f121c85

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_14

    goto :goto_5

    :cond_14
    move v7, v8

    :goto_5
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    const-string v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSsidDoNotShowAgain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showHideSsidWarningDialog()V

    :cond_15
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a017a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f0d0299

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d029a

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mCustomTitleView:Landroid/view/View;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mCustomTitleView:Landroid/view/View;

    const v2, 0x7f0a0921

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060370

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v4, 0x7f0a06f4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const v4, 0x7f03010d

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v5, 0x7f0a06e8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setView(Landroid/view/View;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setInverseBackgroundForced(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->sSalesCode:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0898

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a07a6

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a07a7

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const v7, 0x7f121ee0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a05b7

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0399

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShort:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a05bb

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0392

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0391

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v8, 0x7f121c83

    invoke-static {v7, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0760

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0757

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a092c

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a017d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a092d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121cfc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPMFCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isPMFEnabled:Z

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a092e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a017e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPowerSaveCheckBox:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0756

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0916

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    const v7, 0x7f030109

    invoke-direct {v1, v0, v7}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0917

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a091a

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0919

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a017a

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a017b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a017c

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0918

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a0851

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v7, 0x7f0a091b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    const v7, 0x1090009

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_ap_5G_checked"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    iget v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_4

    :cond_2
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    const/16 v8, 0xe

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiApDialogSec"

    const-string v9, "Making band and channel selection invisible "

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-ge v0, v8, :cond_3

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_4
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WifiApDialogSec"

    const-string v8, "Wifi Sharing Enabled and 5Ghz not supported So make advanced menu invisible"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_4

    :cond_5
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-eqz v0, :cond_9

    iput v6, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    iget v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iget v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    add-int/2addr v0, v9

    if-lez v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iget v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    add-int/2addr v0, v9

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    move v0, v4

    :goto_1
    iget v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    if-ge v0, v9, :cond_6

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    aget-object v10, v10, v0

    aput-object v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    if-lez v0, :cond_7

    iget v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    :goto_2
    iget v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    iget v10, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    add-int/2addr v9, v10

    if-ge v0, v9, :cond_7

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iget v11, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    sub-int v11, v0, v11

    aget-object v10, v10, v11

    aput-object v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v10, 0x1090008

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    invoke-direct {v0, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    sget v9, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    if-ge v9, v8, :cond_8

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v8, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v8, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v8, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    sget v9, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_8
    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v8, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v8, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannelBroadcast:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    goto :goto_4

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    sget v8, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_a
    :goto_4
    const/4 v0, -0x1

    const v8, 0x7f121e6d

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v8, v9}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    const v8, 0x7f121d75

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v8, v9}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v8, 0x2

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v9, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v10, 0x7f121c7f

    invoke-static {v9, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v10, 0x7f121f10

    invoke-static {v9, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setCustomTitle(Landroid/view/View;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->checkMaxFontSize(Landroid/widget/TextView;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    const-string v0, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "NEWCO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "USC"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v9, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v9, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    xor-int/2addr v9, v6

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_7
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-ne v0, v8, :cond_e

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_8

    :cond_e
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    sget v9, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_8
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-eq v0, v6, :cond_f

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-ne v0, v8, :cond_11

    :cond_f
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v9, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_9

    :cond_10
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_9
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v9, 0x7f0a075e

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v0, Lcom/android/settings/Utils;->ENABLE_SHOW_PASSWORD_AS_DEFAULT:Z

    move v10, v0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "wifi_ap_show_passwd"

    invoke-static {v9, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_12

    move v9, v6

    goto :goto_a

    :cond_12
    nop

    move v9, v4

    :goto_a
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v9, 0x7f0a092a

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v0, :cond_21

    const-string v0, "SPRINT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v9, 0x7f0d02a5

    if-eqz v0, :cond_19

    sget v11, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    move v14, v0

    if-eq v6, v14, :cond_14

    if-eq v8, v14, :cond_14

    const/16 v0, 0x10

    if-eq v0, v14, :cond_14

    if-nez v14, :cond_13

    goto :goto_b

    :cond_13
    :try_start_0
    const-string v0, "chameleon_maxuser"

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    move v11, v0

    goto :goto_c

    :cond_14
    :goto_b
    const-string v0, "chameleon_gsmmaxuser"

    invoke-static {v12, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    const-string v0, "WifiApDialogSec"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GSMMAXUSER, changeableMaxvalue = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    const-string v0, "WifiApDialogSec"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mTelephonyManager.getNetworkType "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " changeableMaxvalue "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    sget v11, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    :goto_d
    if-lez v11, :cond_16

    new-array v0, v11, [Ljava/lang/String;

    nop

    :goto_e
    if-ge v4, v11, :cond_15

    add-int/lit8 v8, v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_15
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8, v9, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_16
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_18

    if-eqz v11, :cond_17

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ge v11, v0, :cond_17

    add-int/lit8 v0, v11, -0x1

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto :goto_f

    :cond_17
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    sub-int/2addr v0, v6

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_18
    :goto_f
    goto :goto_13

    :cond_19
    const-string v0, "TMO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "NEWCO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_10

    :cond_1a
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    sub-int/2addr v0, v6

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto :goto_13

    :cond_1b
    :goto_10
    sget v0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    if-lez v0, :cond_1d

    new-array v8, v0, [Ljava/lang/String;

    nop

    :goto_11
    if-ge v4, v0, :cond_1c

    add-int/lit8 v11, v4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1c
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1d
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_1f

    if-eqz v0, :cond_1e

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ge v0, v4, :cond_1e

    add-int/lit8 v4, v0, -0x1

    iput v4, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto :goto_12

    :cond_1e
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    sub-int/2addr v4, v6

    iput v4, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    :cond_1f
    :goto_12
    nop

    :cond_20
    :goto_13
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    iget v4, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_14

    :cond_21
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v4, 0x7f0a092b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_14
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v4, 0x7f0a0936

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const-string v0, "TMO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "NEWCO"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_15

    :cond_22
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v4, 0x7f0a0937

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_16

    :cond_23
    :goto_15
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const v4, 0x7f03010e

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    iget v4, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    iput-boolean v6, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    :goto_16
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSoftInput()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    const v1, 0x7f121e4a

    const v2, 0x7f1208d4

    const/4 v3, 0x2

    const v4, 0x7f1212a9

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v4, "MHTO"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string v2, "extra"

    const-string v3, "NEVER TIMEOUT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p3, v6, :cond_1

    const-string v2, "extra"

    const-string v3, "5 MINS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p3, v3, :cond_2

    const-string v2, "extra"

    const-string v3, "10 MINS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    const-string v2, "extra"

    const-string v3, "20 MINS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p3, v2, :cond_4

    const-string v2, "extra"

    const-string v3, "30 MINS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p3, v2, :cond_5

    const-string v2, "extra"

    const-string v3, "60 MINS"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_6
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeout(I)V

    goto/16 :goto_2

    :sswitch_1
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_2

    :sswitch_3
    const v0, 0x7f1208cd

    int-to-long v1, p3

    invoke-static {v4, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    goto/16 :goto_2

    :sswitch_4
    int-to-long v7, p3

    invoke-static {v4, v2, v7, v8}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string v0, "WifiApDialogSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1

    :cond_7
    if-ne p3, v6, :cond_8

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    :cond_8
    :goto_1
    const-string v0, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v2, :cond_a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_a
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mDismissIfOpen ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v0, :cond_b

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    goto :goto_2

    :sswitch_5
    int-to-long v7, p3

    invoke-static {v4, v2, v7, v8}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const-string v0, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v2, :cond_d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_d
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mDismissIfOpen ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v0, :cond_e

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    nop

    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a06e8 -> :sswitch_5
        0x7f0a06f4 -> :sswitch_4
        0x7f0a0916 -> :sswitch_3
        0x7f0a0918 -> :sswitch_2
        0x7f0a092a -> :sswitch_1
        0x7f0a0936 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "isWifiApSettingUserModificationAllowed"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v3, 0x7f0a06e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v3, 0x7f0a0391

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0a0756

    const v4, 0x7f0a075e

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method public setSaveButtonClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    return-void
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f0a0756

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const v1, 0x7f0a005c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-void
.end method

.method public showHideSsidWarningDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d029e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v2, 0x7f0a0914

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v2, 0x7f0a0924

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v2, 0x7f0a0915

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f121c58

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f121c5a

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    const v3, 0x7f12076a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showSoftInput()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    :goto_0
    return-void
.end method
