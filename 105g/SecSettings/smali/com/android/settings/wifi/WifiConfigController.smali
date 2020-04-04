.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;
    }
.end annotation


# static fields
.field private static final CSC_SUPPORT_EAP_AKA:Z

.field private static final CSC_SUPPORT_WAPI:Z

.field private static final DBG:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I

.field private static final mApMaskCheckVsie:[I

.field private static final mIgnorableApMASK:[I

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
.field private UNKNOWN:Ljava/lang/String;

.field certListFromCCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM_uri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected focusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field private mCaCertificateShouldBeSelectedString:Ljava/lang/String;

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDialogContainer:Landroid/widget/ScrollView;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousErrorText:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityErrorText:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapNoCaCertWarningText:Landroid/widget/TextView;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mFqdn:Ljava/lang/String;

.field private mGateway:Ljava/lang/String;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHiddenNetworkCheckbox:Landroid/widget/CheckBox;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mInManageNetwork:Z

.field protected mInitDnsAddress:Ljava/lang/String;

.field protected mInitDnsAddress2:Ljava/lang/String;

.field protected mInitGwAddress:Ljava/lang/String;

.field protected mInitIpAddress:Ljava/lang/String;

.field private mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIpAddressView:Landroid/widget/EditText;

.field protected mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field protected mIsRequestHideKeyboard:Z

.field private mLevels:[Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field protected mPasswordWatcher:Landroid/text/TextWatcher;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2FastAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2FullAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mProxyAuthId:Landroid/widget/TextView;

.field private mProxyAuthPassword:Landroid/widget/TextView;

.field private mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mQrHiddenSsid:Z

.field private mSAScreenId:I

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mShowPasswordView:Landroid/widget/CheckBox;

.field private mSpinnerTintColor:I

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidView:Landroid/widget/EditText;

.field protected mSsidWatcher:Landroid/text/TextWatcher;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mTempSsid:Ljava/lang/String;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->isSupportEapAka()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->CSC_SUPPORT_EAP_AKA:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->CSC_SUPPORT_WAPI:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x2ba8c0

    aput v3, v1, v2

    sput-object v1, Lcom/android/settings/wifi/WifiConfigController;->mIgnorableApMASK:[I

    new-array v0, v0, [I

    const v1, 0xa14ac

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/samsung/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsRequestHideKeyboard:Z

    const-string v5, "Unknown"

    iput-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->UNKNOWN:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$4;

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/WifiConfigController$4;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidWatcher:Landroid/text/TextWatcher;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$5;

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/WifiConfigController$5;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordWatcher:Landroid/text/TextWatcher;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$6;

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/WifiConfigController$6;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v7

    :goto_0
    iput v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v7, p4

    iput v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const v8, 0x7f1212f6

    if-eqz v2, :cond_4

    const-string v9, "manage_network"

    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mInManageNetwork:Z

    const-string v9, "args_linkproperties"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "args_linkproperties"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/LinkProperties;

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_1
    const-string v9, "screen_id"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const-string v8, "fqdn"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "fqdn"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->UNKNOWN:Ljava/lang/String;

    :goto_1
    iput-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mFqdn:Ljava/lang/String;

    const-string v8, "name"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "name"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->UNKNOWN:Ljava/lang/String;

    :goto_2
    iput-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mProviderFriendlyName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    :goto_3
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060383

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v9, 0x7f03012f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    const v10, 0x7f0d02e6

    if-nez v9, :cond_6

    const v9, 0x112005b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f030121

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v10, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_5

    :cond_6
    :goto_4
    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v12, 0x7f030120

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v10, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    :goto_5
    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    const v11, 0x1090009

    invoke-virtual {v9, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v13, 0x7f030120

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v10, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v13, 0x7f030126

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v10, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f121f16

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f121eae

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f121fb8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f121e3d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f121e3e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f121f46

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mCaCertificateShouldBeSelectedString:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0a0250

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupMeteredHintSettings()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupIpAndProxySettings()V

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mQrHiddenSsid:Z

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0a074f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v10

    sget-object v11, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v12, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v11, v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupSecuritySpinner()V

    :cond_7
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const v14, 0x7f121eeb

    const/4 v15, 0x2

    const v13, 0x7f121dff

    if-nez v11, :cond_c

    iget v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v12, 0xb

    if-eq v11, v12, :cond_a

    iget v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v12, 0xc

    if-ne v11, v12, :cond_8

    goto :goto_6

    :cond_8
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v12, 0x7f121c9c

    invoke-interface {v11, v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupSsidView()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupSecuritySpinner()V

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f0a08a2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupAdvancedOptionsView()V

    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupHiddenNetworkCheckbox()V

    sget-object v3, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v11, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v3, v11, :cond_9

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    :cond_9
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_e

    :cond_a
    :goto_6
    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mProviderFriendlyName:Ljava/lang/String;

    invoke-interface {v5, v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0a0401

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0d02c7

    invoke-virtual {v11, v12, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v11, 0x7f0a04f6

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f121e14

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    const v11, 0x7f0a08db

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mFqdn:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v12, 0xc

    if-ne v11, v12, :cond_b

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v12, 0x7f121e58

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    invoke-interface {v11, v12, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    :cond_b
    goto/16 :goto_e

    :cond_c
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupApInformation()V

    const/4 v11, 0x0

    sget-boolean v12, Lcom/android/settings/wifi/WifiConfigController;->CSC_SUPPORT_EAP_AKA:Z

    if-eqz v12, :cond_e

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-object v13, v12, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v14

    if-eqz v14, :cond_e

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_e

    const/4 v11, 0x1

    :cond_e
    iget-object v12, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0a0401

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v13

    if-eqz v13, :cond_14

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget v15, v13, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v14, v15, :cond_f

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v5}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v12, 0x1

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_8

    :cond_f
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v3}, Landroid/widget/Spinner;->setSelection(I)V

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :goto_8
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v15, v13, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean v14, v13, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v14, :cond_10

    const/4 v12, 0x1

    :cond_10
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v14, v15, :cond_11

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v5}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v12, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v14

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v14, v15, :cond_12

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v12, 0x1

    goto :goto_9

    :cond_12
    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14, v3}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_9
    if-eqz v11, :cond_13

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView(Z)V

    goto :goto_a

    :cond_13
    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView(Z)V

    :cond_14
    :goto_a
    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v13

    if-nez v13, :cond_15

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v13

    if-nez v13, :cond_15

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v13

    if-eqz v13, :cond_16

    :cond_15
    iget v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eqz v13, :cond_18

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupAdvancedOptionsView()V

    if-eqz v12, :cond_17

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0a0922

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    invoke-virtual {v13, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0a0921

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView(Z)V

    :cond_18
    iget v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v13, 0x2

    if-ne v3, v13, :cond_1a

    sget-object v3, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v14, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v3, v14, :cond_19

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v14, 0x7f121eeb

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f121dff

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    :cond_19
    const v14, 0x7f121eeb

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    :cond_1a
    iget v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const v13, 0x7f121e49

    if-ne v3, v5, :cond_1c

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v14, 0x7f121dff

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    sget-object v3, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v5, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v3, v5, :cond_29

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v3, Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v3, v3, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    if-nez v3, :cond_29

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_29

    if-nez v11, :cond_1b

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x3

    invoke-interface {v3, v5, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    :cond_1b
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v5, 0x7f121e58

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x4

    invoke-interface {v3, v5, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    :cond_1c
    iget v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v14, 0xa

    if-ne v3, v14, :cond_1d

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f121dff

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    :cond_1d
    iget v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v14, 0x3

    if-ne v3, v14, :cond_20

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-boolean v13, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mQrHiddenSsid:Z

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v13, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eq v13, v5, :cond_1e

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-eq v13, v5, :cond_1e

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v14, 0x16

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-ne v13, v5, :cond_1f

    :cond_1e
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiConfigController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1f

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1f
    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v14, 0x7f121dff

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    :cond_20
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    sget-boolean v16, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v16, :cond_21

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v15

    :cond_21
    if-eqz v3, :cond_22

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v13, :cond_23

    :cond_22
    if-eqz v14, :cond_23

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mInManageNetwork:Z

    if-nez v13, :cond_23

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v1, 0x7f121dff

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto :goto_b

    :cond_23
    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v2, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v1, v2, :cond_26

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v1, Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v1, v1, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    if-nez v1, :cond_26

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121e58

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    invoke-interface {v1, v2, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    if-nez v11, :cond_29

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121e49

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-interface {v1, v2, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    goto/16 :goto_d

    :cond_24
    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121e58

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x4

    invoke-interface {v1, v2, v13}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto :goto_c

    :cond_25
    const v2, 0x7f121e58

    const/4 v13, 0x4

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v13, 0x7f121dff

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    invoke-interface {v1, v2, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    :goto_c
    if-nez v11, :cond_29

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121e49

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-interface {v1, v2, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    goto :goto_d

    :cond_26
    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_27
    if-nez v15, :cond_29

    if-nez v9, :cond_29

    if-nez v10, :cond_29

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121e0f

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    invoke-interface {v1, v2, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    goto :goto_d

    :cond_28
    const/4 v5, 0x4

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121e58

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    :cond_29
    :goto_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM_TGY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v3, "SIM"

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2a

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2a
    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "SFR WiFi Mobile"

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "Orange Mobile Wi-Fi"

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2b
    const-string v2, "WifiConfigController"

    const-string v3, "--Found access point SFR WiFi Mobile or Orange Mobile Wi-Fi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v3, "SIM"

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2c

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2c
    const-string v2, "AKA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "Orange Mobile Wi-Fi"

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "WifiConfigController"

    const-string v3, "--Found access point Orange Mobile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v3, "AKA"

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2d

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2d
    if-eqz v11, :cond_2f

    const-string v2, "AKA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "WifiConfigController"

    const-string v3, "--Found access point Verizon Vendor EAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v3, "AKA"

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2e

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2e
    const-string v3, "WifiConfigController"

    const-string v5, "not saved Verizon Vendor EAP dialog. default AKA selected"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a0920

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    :cond_2f
    const-string v2, "AKA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "0001docomo"

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "WifiConfigController"

    const-string v3, "--Found access point 0001docomo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v3, "AKA"

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_30

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_30
    const-string v2, "AKAPRIME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "0001docomo"

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "WifiConfigController"

    const-string v3, "--Found access point 0001docomo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v3, "AKA\'"

    invoke-direct {v0, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_31

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_31
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_32
    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonCount()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_33

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121df0

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    :cond_33
    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v2, 0x7f121e16

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->hasSubmitButton()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboardOnResume()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiConfigController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiConfigController;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method private addCaptivePortalRow(Landroid/view/ViewGroup;I)V
    .locals 0

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0955

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d02c7

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d03dd

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a08db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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

.method private findEditTextFromLayout(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 5

    const-string v0, "WifiConfigController"

    const-string v1, "generateBlankFields"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121eb3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

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
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

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

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

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
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121e3a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

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

.method private getSignalString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
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

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showIpConfigFields ip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v5, :cond_1

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

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

    invoke-direct {p0, v6, v4}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v8, :cond_3

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    :cond_3
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-direct {p0, v6, v5}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    goto :goto_0

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

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

    sget-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "WifiConfigController"

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

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v2, :cond_7

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    if-nez v1, :cond_a

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v7, :cond_9

    iput-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    :cond_9
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

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

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showIpConfigFields dns1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v5, :cond_e

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v5, :cond_10

    const-string v5, ""

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

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

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_11
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_12

    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showIpConfigFields dns2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v5, :cond_13

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_13
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_14
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v5, :cond_15

    const-string v5, ""

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_15
    :goto_5
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v3, v2, :cond_7

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v5, 0x0

    move v6, v4

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    invoke-static {v11, v12, v13}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const v0, 0x7f121187

    :goto_1
    move v14, v5

    if-nez v0, :cond_6

    iget-object v5, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0a0622

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v16, v10

    goto :goto_2

    :cond_2
    new-instance v4, Landroid/net/ProxyInfo;

    move-object v5, v4

    move-object v6, v11

    move v7, v14

    move-object v8, v15

    move-object v9, v10

    move-object/from16 v16, v10

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3

    :cond_3
    move-object/from16 v16, v10

    :goto_2
    return v4

    :cond_4
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v11, v14, v13}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, v1, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_5
    :goto_3
    goto :goto_4

    :cond_6
    return v4

    :cond_7
    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    return v4

    :cond_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_9

    return v4

    :cond_9
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v5}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v4, v1, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_a
    :goto_4
    return v2
.end method

.method public static synthetic lambda$onCheckedChanged$0(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "WifiConfigController"

    const-string v5, "****Trying to Load certificates from CCM*****"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "USRPKEY_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "knox_ccm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v7, "3.0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "WifiConfigController"

    const-string v8, "Fetching WiFi aliases from CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasesForWifi(Z)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    move-object v7, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " [Knox]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v7, "WifiConfigController"

    const-string v8, "Failed at ClientCertificateManager API getAliasesForWiFi-Exception "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v0, "USRPKEY_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->sawUcmPrivateKeyForWifi()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    nop

    :goto_4
    if-ge v5, v8, :cond_4

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add UCM List : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v10, v11}, Lcom/android/settings/wifi/WifiConfigController;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v14, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    goto :goto_5

    :catch_1
    move-exception v0

    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception happened : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    iput-object v5, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    nop

    :try_start_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const/16 v5, 0x3f2

    invoke-virtual {v0, v2, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v5, "WifiConfigController"

    const-string v6, "can\'t get the certificate list from KeyStore"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x7f0d02e6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v0, v3, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private sawUcmPrivateKeyForWifi()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3e8

    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sawUcmPrivateKeyForWifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v2, "KNOX"

    invoke-direct {v1, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "WifiConfigController"

    const-string v5, "UniversalCredentialUtil is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v3

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v3

    :cond_4
    const-string/jumbo v3, "stringarrayresponse"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    array-length v5, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_8

    aget-object v6, v3, v5

    sget-boolean v7, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tempUri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    sget-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "WifiConfigController"

    const-string/jumbo v6, "uris length is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    sget-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "WifiConfigController"

    const-string/jumbo v6, "uris is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_9
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :goto_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v5
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02e6

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0434

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAutoReconnectEnabled(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x47

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "netId"

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "autoReconnect"

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0435

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0436

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a05bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0765

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setVisibility(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 9

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->CSC_SUPPORT_EAP_AKA:Z

    const v1, 0x7f0a0437

    const v2, 0x7f0a0438

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    const v6, 0x7f0a0439

    if-eqz v5, :cond_1

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget-object v1, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibleAutoReconnectView(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0436

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0435

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a05bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0765

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a043a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0a0434

    const v6, 0x7f0a043b

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FastAdapter:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    if-eq v2, v7, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_2

    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a043c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_2

    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq v2, v7, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_7

    const-string v2, "CMCC"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const v4, 0x7f0a07d1

    if-ne v1, v3, :cond_16

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0413

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0344

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0522

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0277

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0278

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_5

    :cond_5
    if-eqz v1, :cond_15

    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_7

    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v3, :cond_6

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    :cond_8
    :goto_0
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_a

    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v3, :cond_9

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    :cond_9
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    :cond_b
    :goto_1
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v4, :cond_c

    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    :cond_c
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v5, :cond_e

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    goto :goto_3

    :cond_f
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-nez v3, :cond_10

    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    :cond_10
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v4, :cond_11

    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_11
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_12
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v5, :cond_13

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_13
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    goto :goto_5

    :cond_14
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v3, :cond_15

    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    :cond_15
    :goto_5
    goto :goto_6

    :cond_16
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_6
    return-void
.end method

.method private showPeapFields()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const v1, 0x7f0a0437

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0434

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a05bf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0765

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    :goto_1
    return-void
.end method

.method private showProxyFields()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a062a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x1

    const v4, 0x7f0a0627

    const v5, 0x7f0a0624

    const v6, 0x7f0a062c

    const/16 v7, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v6, v2}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v5, v2}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0625

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0628

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0623

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a061f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0620

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v8, 0x2

    if-ne v1, v8, :cond_6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v4, v2}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0626

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    goto :goto_0

    :cond_6
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_d

    new-array v1, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_d
    return-void
.end method

.method private showSecurityFields()V
    .locals 20

    move-object/from16 v7, p0

    iget v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const v1, 0x7f0a06ee

    const/16 v8, 0x8

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v1, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v0, v1, :cond_0

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupConnectionWarningView()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v9, 0x3

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    iget v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v0, v9, :cond_2

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v11, 0x1

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupPasswordView()V

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0764

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v14, 0x0

    const-string v15, "getPasswordHidden"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "getPasswordHidden"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    :goto_1
    goto :goto_3

    :cond_5
    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v11, :cond_7

    if-eqz v0, :cond_7

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v4, 0xd

    if-le v0, v4, :cond_6

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v6, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x1a

    if-le v0, v4, :cond_7

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v6, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_7
    :goto_2
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v3, v7, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v3, v7, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_3
    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->CSC_SUPPORT_WAPI:Z

    const/4 v12, 0x6

    const/4 v13, 0x5

    if-eqz v0, :cond_f

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0905

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v13, :cond_a

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-nez v2, :cond_8

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0906

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    const v3, 0x7f030134

    invoke-direct {v7, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    :cond_8
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_b

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    iget-object v3, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_9
    goto :goto_4

    :cond_a
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    :goto_4
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0904

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iget v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v2, v12, :cond_c

    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-nez v1, :cond_d

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0903

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    :cond_d
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-nez v1, :cond_e

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0907

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    :cond_e
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v3, "WAPIAS_"

    iget-object v4, v7, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string v3, "WAPIUSR_"

    iget-object v4, v7, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_f
    :goto_5
    iget v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const v1, 0x7f0a0294

    if-eq v0, v9, :cond_10

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_10
    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x2

    const/4 v15, 0x4

    const/16 v6, 0x13

    if-nez v0, :cond_23

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a04d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v1, :cond_11

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_11

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "PWD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d02e6

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v4, v1

    const v1, 0x1090009

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setupEapPhase()V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a014f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a08c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    new-array v2, v11, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a095b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityErrorText:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    iget-object v3, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityErrorText:Landroid/widget/TextView;

    invoke-direct {v2, v7, v3, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    new-array v2, v11, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0923

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    iget-object v3, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    invoke-direct {v2, v7, v3, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0564

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapNoCaCertWarningText:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    iget-object v5, v7, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v1, v7

    move-object/from16 v18, v4

    move-object v4, v5

    const/16 v8, 0x12

    move/from16 v5, v16

    move v9, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    iget-object v4, v7, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_22

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    move v1, v5

    if-ne v5, v8, :cond_12

    const/4 v1, 0x7

    goto :goto_7

    :cond_12
    if-ne v5, v9, :cond_13

    const/16 v1, 0x8

    goto :goto_7

    :cond_13
    const/4 v2, 0x7

    if-ne v5, v2, :cond_14

    const/4 v1, 0x0

    :cond_14
    :goto_7
    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_15

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_15

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-ne v1, v15, :cond_18

    const/4 v1, 0x1

    goto :goto_8

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_16

    if-le v5, v9, :cond_18

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_16
    if-ne v5, v12, :cond_17

    add-int/lit8 v1, v1, -0x2

    goto :goto_8

    :cond_17
    if-le v5, v13, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    :goto_8
    move v9, v1

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v12

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-direct {v7, v5}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v2, "fast_provisioning="

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_19
    if-eqz v5, :cond_1c

    if-eq v5, v8, :cond_1a

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_9

    :cond_1a
    if-eqz v12, :cond_1b

    packed-switch v12, :pswitch_data_0

    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phase 2 method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_0
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :pswitch_1
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :cond_1b
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :cond_1c
    if-eqz v12, :cond_1d

    packed-switch v12, :pswitch_data_1

    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phase 2 method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_2
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :pswitch_3
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v15}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :pswitch_4
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :pswitch_5
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :pswitch_6
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    :cond_1d
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setSelection(I)V

    nop

    :goto_9
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_a
    move-object/from16 v16, v4

    move v13, v5

    move-object v14, v6

    goto :goto_b

    :cond_1e
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1f

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_a

    :cond_1f
    array-length v1, v8

    if-ne v1, v11, :cond_20

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v2, v8, v10

    invoke-direct {v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_a

    :cond_20
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    iget-object v13, v7, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v1, v7

    move-object/from16 v16, v4

    move-object v4, v13

    move v13, v5

    move v5, v14

    move-object v14, v6

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_b
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v3, v7, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {v7, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_c

    :cond_21
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-direct {v7, v2, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_c
    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getDefaultEapFieldsIndex()I

    move-result v1

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v3, "1"

    invoke-direct {v7, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    :goto_d
    goto/16 :goto_e

    :cond_23
    move v9, v6

    const/16 v8, 0x12

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {v7, v10}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_24
    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {v7, v11}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_25
    const-string v1, "TTLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {v7, v14}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_26
    const-string v1, "PWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x3

    invoke-direct {v7, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_27
    const-string v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {v7, v15}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_28
    const-string v1, "AKA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {v7, v13}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_29
    const-string v1, "AKA\'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-direct {v7, v12}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_2a
    const-string v1, "FAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {v7, v8}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_e

    :cond_2b
    const-string v1, "LEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {v7, v9}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    :cond_2c
    :goto_e
    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2e

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_f

    :cond_2d
    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_2e
    :goto_f
    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_33

    iget-object v0, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_33

    new-array v0, v11, [Ljava/lang/String;

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "WifiPolicy"

    const-string v2, "Enterprise Wifi settings not editable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2f

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_2f
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_30

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_30
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_31

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_31
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_32

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_32
    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_33

    iget-object v1, v7, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_33
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

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
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v4, :cond_3

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_3
    nop

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f121e8b

    if-eqz v5, :cond_4

    return v6

    :cond_4
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    if-ltz v3, :cond_a

    const/16 v5, 0x20

    if-le v3, v5, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    nop

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const v7, 0x7f121e89

    if-eqz v6, :cond_6

    return v7

    :cond_6
    const/4 v6, 0x0

    :try_start_2
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v8

    nop

    iput-object v6, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const v10, 0x7f121e88

    if-eqz v9, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    return v10

    :cond_7
    const/4 v9, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    :try_start_3
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v11

    nop

    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    return v10

    :cond_8
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    :try_start_4
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v9, v11

    nop

    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v1

    return v10

    :cond_9
    :goto_1
    return v1

    :catch_2
    move-exception v1

    return v7

    :cond_a
    :goto_2
    return v6

    :catch_3
    move-exception v1

    return v6

    :catch_4
    move-exception v1

    return v3
.end method


# virtual methods
.method protected addGatewayRow(Landroid/view/ViewGroup;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->semSamsungSpecificFlags:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiConfigController"

    const-string v2, "Go to Webpage: SEC_MOBILE_AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/WifiConfigController;->mIgnorableApMASK:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const v6, 0xffffff

    if-ge v5, v3, :cond_4

    aget v7, v2, v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    and-int/2addr v6, v8

    if-ne v6, v7, :cond_3

    const-string v2, "WifiConfigController"

    const-string v3, "Go to Webpage: Masked Android Hotspot"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/settings/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_7

    aget v5, v2, v4

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v7

    and-int/2addr v7, v6

    if-ne v7, v5, :cond_6

    sget-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "WifiConfigController"

    const-string v3, "This has a LO Gateway Address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_8

    iget v4, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Go to Webpage: gateway addr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenNetworkCheckbox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenNetworkCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_0

    :cond_1
    iput-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_0
    iget v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mQrHiddenSsid:Z

    if-ne v3, v4, :cond_4

    iput-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_4
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v6, 0x22

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    return-object v2

    :pswitch_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    iput v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, ""

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keystore://WAPIAS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ""

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, ""

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIUSR_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    goto :goto_4

    :cond_8
    move-object v4, v3

    :goto_4
    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_f

    :pswitch_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_a
    :goto_5
    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-eqz v2, :cond_2a

    sget-object v2, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget v2, v2, v3

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_f

    :pswitch_2
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_6

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_6
    goto/16 :goto_f

    :pswitch_3
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    new-instance v3, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, ""

    invoke-virtual {v3, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    sget-boolean v9, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CMCC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-ne v8, v4, :cond_c

    const/4 v8, 0x4

    :cond_c
    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    iget-object v10, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    const-string v11, "PEAP"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x5

    const/4 v13, 0x6

    const/4 v14, 0x4

    if-eqz v11, :cond_d

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    packed-switch v10, :pswitch_data_1

    const-string v6, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown phase2 method"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_4
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v11, 0x7

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :pswitch_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :pswitch_6
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :pswitch_7
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :pswitch_8
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :pswitch_9
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :cond_d
    const-string v11, "FAST"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v11, 0x12

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v11, "/data/vendor/wifi/wpa/wpa_supplicant.pac"

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    packed-switch v10, :pswitch_data_2

    const-string v6, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown phase2 method"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_a
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :pswitch_b
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_8

    :pswitch_c
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_8

    :cond_e
    const-string v11, "TLS"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_f
    const-string v11, "TTLS"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_10
    const-string v6, "PWD"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_11
    const-string v6, "SIM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_12
    const-string v6, "AKA"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_13
    const-string v6, "AKA\'"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_14
    const-string v6, "LEAP"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v11, 0x13

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_15
    :goto_7
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :goto_8
    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_9

    :cond_16
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v11, "/system/etc/security/cacerts"

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v7, :cond_1a

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "WifiConfigController"

    const-string v11, "Multiple certs can only be set when editing saved network"

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v15, v4, [Ljava/lang/String;

    aput-object v6, v15, v7

    invoke-virtual {v11, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_1a
    :goto_9
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    const-string v7, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ca_cert ("

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") and ca_path ("

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v15}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") should not both be non-null"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    :cond_1c
    const-string v7, ""

    :cond_1d
    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    if-eqz v11, :cond_20

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    if-eqz v11, :cond_20

    iget-object v11, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-virtual {v7, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1f

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v15, v5, :cond_1e

    goto :goto_a

    :cond_1e
    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto :goto_b

    :cond_1f
    :goto_a
    return-object v2

    :cond_20
    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, " [Knox]"

    const-string v5, ""

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/sec/tima_keychain/TimaKeychain;->display2KeyChainAlias(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    :cond_21
    :goto_b
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_23

    if-eq v8, v14, :cond_22

    if-eq v8, v12, :cond_22

    if-ne v8, v13, :cond_23

    :cond_22
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    const/4 v2, 0x3

    if-ne v8, v2, :cond_24

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_c

    :cond_24
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :goto_c
    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isShown()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_2a

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_25
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_d
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_d

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_27
    :goto_d
    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-eqz v2, :cond_2a

    sget-object v2, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget v2, v2, v3

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto :goto_f

    :pswitch_e
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_28

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_28

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_29

    :cond_28
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v7

    goto :goto_e

    :cond_29
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    :goto_e
    goto :goto_f

    :pswitch_f
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    nop

    :cond_2a
    :goto_f
    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecFlags()Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->semSamsungSpecificFlags:Ljava/util/BitSet;

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    :cond_2b
    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPMFRequired()Z

    move-result v3

    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :cond_2c
    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    :cond_2d
    new-instance v2, Landroid/net/IpConfiguration;

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    :cond_2e
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected getDefaultEapFieldsIndex()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->SingTel:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v3, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->isVendorSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIS:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v3, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->isVendorSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "52003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x4

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "AKA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/wifi/WifiConfigController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-virtual {v2}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->getCountry()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->isVendorSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    :cond_3
    :goto_0
    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    return v0
.end method

.method protected hasSubmitButton()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hideEditButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method hideForgetButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiConfigController"

    const-string v1, "    **** hideSoftKeyboard *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method hideSubmitButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isNeedToReconnect()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiConfigController"

    const-string v2, "new network"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiConfigController"

    const-string v2, "not active one"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiConfigController"

    const-string v1, "change ip assignment method by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "WifiConfigController"

    const-string v2, "changed ip address by user"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitGwAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "WifiConfigController"

    const-string v2, "changed gateway address by user"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v3

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "WifiConfigController"

    const-string v2, "changed dns1 address by user"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v3

    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitDnsAddress2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "WifiConfigController"

    const-string v2, "changed dns2 address by user"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v3

    :cond_d
    return v1
.end method

.method isSplitSystemUser()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    return v0
.end method

.method isSubmittable()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/16 v6, 0xa

    if-ne v2, v6, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lt v2, v5, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-ge v2, v5, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_8

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-ge v2, v5, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_d

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    if-nez v1, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    goto :goto_2

    :cond_d
    :goto_1
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v3, :cond_e

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    :cond_e
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0435

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x0

    :cond_f
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0436

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v0, 0x0

    :cond_10
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a043c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    :cond_11
    return v0
.end method

.method protected isVendorSsid(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigVendorSsidList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const v5, 0x7f0a0764

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v5, 0x7f120934

    if-eqz p2, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v0, v5, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const/16 v3, 0x90

    goto :goto_1

    :cond_1
    const/16 v3, 0x80

    :goto_1
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    goto/16 :goto_9

    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v5, 0x7f0a00ab

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v5, 0x7f120910

    if-eqz p2, :cond_4

    move-wide v1, v3

    goto :goto_2

    :cond_4
    nop

    :goto_2
    invoke-static {v0, v5, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController;->setAutoReconnectEnabled(Z)V

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v5, 0x7f0a0392

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0394

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_6

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$4vPl1p5x_J2SwQWVgl_bq-B5_lI;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$4vPl1p5x_J2SwQWVgl_bq-B5_lI;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    goto/16 :goto_9

    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v5, 0x7f0a0922

    if-ne v0, v5, :cond_a

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v5, 0x7f120933

    if-eqz p2, :cond_8

    move-wide v1, v3

    goto :goto_4

    :cond_8
    nop

    :goto_4
    invoke-static {v0, v5, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0920

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard()V

    goto :goto_5

    :cond_9
    nop

    :goto_5
    move v1, v6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0921

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v5, 0x7f0a0951

    const v8, 0x7f0a0958

    if-ne v0, v8, :cond_d

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v6, 0x7f12091a

    if-eqz p2, :cond_b

    move-wide v1, v3

    goto :goto_6

    :cond_b
    nop

    :goto_6
    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v0, :cond_c

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_c
    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    if-ne v0, v5, :cond_10

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v6, 0x7f120919

    if-eqz p2, :cond_e

    move-wide v1, v3

    goto :goto_7

    :cond_e
    nop

    :goto_7
    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v0, :cond_f

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_f
    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v5, 0x7f0a0622

    if-ne v0, v5, :cond_13

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v5, 0x7f12091b

    if-eqz p2, :cond_11

    move-wide v1, v3

    goto :goto_8

    :cond_11
    nop

    :goto_8
    invoke-static {v0, v5, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const v0, 0x7f0a061e

    if-eqz p2, :cond_12

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateImeOptionsForEditText()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v1, 0x7f12091e

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v1, 0x7f12091d

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSAScreenId:I

    const v1, 0x7f12091c

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateImeOptionsForEditText()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
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

.method protected setVisibleAutoReconnectView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_AUTO_RECONNECT:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/settings/Utils;->COMMON_SUPPORTCOMCASTWIFI:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a00ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method protected setupAdvancedOptionsView()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0920

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0922

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected setupApInformation()V
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const v2, 0x7f0a0401

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0921

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Mbps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f121f4c

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1
    move-object v3, v0

    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    :cond_2
    const v2, 0x7f121ef8

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const v7, 0x7f121e85

    if-ne v4, v6, :cond_4

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v7, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_3
    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    if-eqz v4, :cond_5

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v8, :cond_5

    iget v8, v4, Landroid/net/DhcpInfo;->ipAddress:I

    if-eqz v8, :cond_5

    iget v8, v4, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v8}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_5
    sget-boolean v7, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-nez v7, :cond_a

    iget v7, v4, Landroid/net/DhcpInfo;->netmask:I

    if-eqz v7, :cond_6

    const v7, 0x7f121eaf

    iget v8, v4, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v8}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_6
    iget v7, v4, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v7, :cond_7

    const v7, 0x7f121e5d

    iget v8, v4, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v8}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_7
    iget v7, v4, Landroid/net/DhcpInfo;->dns1:I

    if-eqz v7, :cond_8

    const v7, 0x7f121e39

    iget v8, v4, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v8}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_8
    iget v7, v4, Landroid/net/DhcpInfo;->dns2:I

    if-eqz v7, :cond_9

    const v7, 0x7f121e3b

    iget v8, v4, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v8}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    const v8, 0x7f121d50

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v8, v9}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_a
    :goto_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_b

    const v4, 0x7f1210a8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x7f1210a7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_b
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_AP_LINK"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v5, Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v5, v5, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    if-nez v5, :cond_d

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_d

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    iget-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    const v6, 0x7f121ccd

    if-nez v5, :cond_c

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, v3, v6}, Lcom/android/settings/wifi/WifiConfigController;->addCaptivePortalRow(Landroid/view/ViewGroup;I)V

    :cond_d
    :goto_2
    return-void
.end method

.method protected setupConnectionWarningView()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a04c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121816

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setupEapPhase()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a05c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const v1, 0x7f030124

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a05c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const v1, 0x7f030126

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method protected setupHiddenNetworkCheckbox()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0392

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenNetworkCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenNetworkCheckbox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenNetworkCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0394

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setupIpAndProxySettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a040f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f03011a

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0629

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f030128

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0621

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0622

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected setupMeteredHintSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a04cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f03011c

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected setupPasswordView()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a05b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a095f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f121e51

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const v2, 0x8000

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0764

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v4, 0x7f12058e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f121faf

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    :cond_1
    return-void
.end method

.method protected setupSecuritySpinner()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a06ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->CSC_SUPPORT_WAPI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f030137

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f03012b

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    :goto_0
    return-void
.end method

.method protected setupSsidView()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a07ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a097a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const v1, 0x7f121f5f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const v2, 0x8000

    invoke-virtual {v0, v2, v4}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected showKeyMgmtFields()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const v1, 0x7f0a0952

    const v2, 0x7f0a0959

    const/4 v3, 0x0

    const v4, 0x7f0a095c

    const/16 v5, 0x8

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    const-string v0, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accessPoint.keyMgmts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v6, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method protected showSoftKeyboard()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSoftKeyboard requestHideKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsRequestHideKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsRequestHideKeyboard:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiConfigController"

    const-string v2, "    **** showSoftKeyboard : ignored (Accessory Keyboard Mode) *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "WifiConfigController"

    const-string v2, "    **** showSoftKeyboard *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public showSoftKeyboardOnResume()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0xc8

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v5, p0, v4}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/view/View;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0564

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0566

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0435

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapNoCaCertWarningText:Landroid/widget/TextView;

    const v6, 0x7f121e3f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapNoCaCertWarningText:Landroid/widget/TextView;

    const v6, 0x7f121f46

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0436

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updateImeOptionsForEditText()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    sget-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateImeOptions - prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_1

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getId()I

    move-result v6

    if-ne v5, v6, :cond_3

    sget-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateImeOptions - active:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEditTexts:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "WifiConfigController"

    const-string/jumbo v4, "updateImeOptions - focused view is invisible"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard()V

    goto :goto_2

    :cond_6
    sget-boolean v3, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "WifiConfigController"

    const-string/jumbo v4, "updateImeOptions - focused view is visible"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    sget-boolean v3, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "WifiConfigController"

    const-string/jumbo v4, "updateImeOptions - focused view is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    goto :goto_1

    :cond_a
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    return-void
.end method

.method public updatePassword()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a05b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    nop

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0764

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    :goto_0
    const/4 v2, 0x1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method
