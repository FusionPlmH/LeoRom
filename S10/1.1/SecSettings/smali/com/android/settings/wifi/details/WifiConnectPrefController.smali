.class public Lcom/android/settings/wifi/details/WifiConnectPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiConnectPrefController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiConnectPrefController$WifiEapIdTextWatcher;,
        Lcom/android/settings/wifi/details/WifiConnectPrefController$EditTextWatcher;
    }
.end annotation


# static fields
.field private static final CSC_SUPPORT_EAP_AKA:Z

.field public static final SUPPORT_WAPI:Z

.field private static final SUPPORT_WPA3_SAE:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# instance fields
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

.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field protected mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectingState:Z

.field private mContext:Landroid/content/Context;

.field private mDisableReason:I

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

.field private mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

.field private mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

.field private mEapIdentityErrorText:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapMethod:I

.field private mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

.field private mEapSpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

.field private mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

.field private mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDialogDiaply:Z

.field protected mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mFragment:Landroid/app/Fragment;

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsPasswordVisible:Z

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordImageButton:Landroid/support/design/widget/CheckableImageButton;

.field private mPasswordInput:Landroid/support/design/widget/TextInputLayout;

.field private mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

.field private mPasswordToggleButton:Landroid/view/View;

.field private mPasswordView:Landroid/widget/EditText;

.field protected mPasswordWatcher:Landroid/text/TextWatcher;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private mSSIDPref:Lcom/android/settings/applications/LayoutPreference;

.field private mSaveButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

.field protected mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

.field private mSecuritySpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidView:Landroid/widget/EditText;

.field protected mSsidWatcher:Lcom/android/settings/wifi/details/WifiConnectPrefController$EditTextWatcher;

.field private mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

.field private mTempSsid:Ljava/lang/String;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

.field private mWapiType:I

.field private mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

.field private mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->SUPPORT_WAPI:Z

    const-string v0, "0"

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->SUPPORT_WPA3_SAE:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->isSupportEapAka()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->CSC_SUPPORT_EAP_AKA:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiType:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    iput v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDisableReason:I

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$6;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapSpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$7;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecuritySpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$8;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$9;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$10;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempSsid:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$11;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$11;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidWatcher:Lcom/android/settings/wifi/details/WifiConnectPrefController$EditTextWatcher;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$12;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$12;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordWatcher:Landroid/text/TextWatcher;

    iput-object p3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mFragment:Landroid/app/Fragment;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    iput-object p6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSAScreenId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ee0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f121e0a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotValidateEapServerString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f121f82

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUseSystemCertsString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f121e09

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/settings/wifi/details/WifiConnectPrefController;->CSC_SUPPORT_EAP_AKA:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defatul eap method is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SIM_TGY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SIM"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_2
    const-string v3, "SIM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SFR WiFi Mobile"

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Orange Mobile Wi-Fi"

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "WifiConnectPrefController"

    const-string v4, "--Found access point SFR WiFi Mobile or Orange Mobile Wi-Fi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SIM"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_4
    const-string v3, "AKA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Orange Mobile Wi-Fi"

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "WifiConnectPrefController"

    const-string v4, "--Found access point Orange Mobile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AKA"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    const-string v3, "AKA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "WifiConnectPrefController"

    const-string v4, "--Found access point Verizon Vendor EAP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v3, v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "AKA"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    const-string v1, "WifiConnectPrefController"

    const-string v3, "not saved Verizon Vendor EAP dialog. default AKA selected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v1, "AKA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "0001docomo"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "WifiConnectPrefController"

    const-string v3, "--Found access point 0001docomo"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AKA"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_7
    const-string v1, "AKAPRIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "0001docomo"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "WifiConnectPrefController"

    const-string v3, "--Found access point 0001docomo"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AKA\'"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSCFEATURE_WIFI_EAPMETHODSETTING is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c

    const-string v3, "SIM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->SingTel:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v4, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->isVendorSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "SIM"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIS:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v4, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->isVendorSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v4, "52001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "52003"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    const-string v4, "SIM"

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_b
    goto :goto_1

    :cond_c
    if-eqz v1, :cond_d

    const-string v3, "AKA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-virtual {v3}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->getCountry()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->isVendorSsid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "AKA"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_d
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settingslib/wifi/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/android/settings/wifi/details/TempWifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/support/design/widget/CheckableImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordImageButton:Landroid/support/design/widget/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mIsPasswordVisible:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mIsPasswordVisible:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethod:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshEapItems(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->disableViewsIfAppropriate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showErrorTextMsg(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSAScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/details/WifiConnectPrefController;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->insertLogging(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showSecurityFields(I)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSecurity()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/wifi/details/WifiConnectPrefController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/details/WifiConnectPrefController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->passwordCheck(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->exitActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settings/display/widget/ButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setPreferenceEnable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setButtonEnable(Z)V

    return-void
.end method

.method private disableViewsIfAppropriate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->isSubmittable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setButtonEnable(Z)V

    return-void
.end method

.method private exitActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private findEditTextFromLayout(Lcom/android/settings/applications/LayoutPreference;)V
    .locals 5

    const-string v0, "WifiConnectPrefController"

    const-string v1, "findEditTextFromLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a086c

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settings/applications/LayoutPreference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WifiConnectPrefController"

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

    return-void

    :cond_0
    const v1, 0x7f0a02a1

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string v2, "WifiConnectPrefController"

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

    :cond_1
    return-void
.end method

.method private findIndexOfValue(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private findTogglePasswordButton(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findTogglePasswordButton(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    goto :goto_1

    :cond_1
    instance-of v3, v2, Landroid/support/design/widget/CheckableImageButton;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/support/design/widget/CheckableImageButton;

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordImageButton:Landroid/support/design/widget/CheckableImageButton;

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEapMethod()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "AKA\'"

    return-object v1

    :pswitch_1
    const-string v1, "AKA"

    return-object v1

    :pswitch_2
    const-string v1, "SIM"

    return-object v1

    :pswitch_3
    const-string v1, "PWD"

    return-object v1

    :pswitch_4
    const-string v1, "TTLS"

    return-object v1

    :pswitch_5
    const-string v1, "TLS"

    return-object v1

    :pswitch_6
    const-string v1, "PEAP"

    return-object v1

    :cond_0
    const-string v1, "FAST"

    return-object v1

    :cond_1
    :goto_0
    const-string v0, "PEAP"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private insertLogging(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertLogging(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3, p4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private isSimCheck()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    if-nez v2, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v5, 0x7f121e85

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showErrorDialog(Ljava/lang/String;)V

    :cond_1
    return v4

    :cond_2
    return v3
.end method

.method private isSubmittable()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_7

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-ge v2, v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_0
    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubmittable passwordInvalid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSSIDPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/LayoutPreference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_c

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    if-nez v1, :cond_c

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    goto :goto_1

    :cond_b
    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubmittable enabled1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v0, 0x0

    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubmittable mSsidView enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "WifiConnectPrefController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSubmittable caCertSelection : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    const v4, 0x7f121f10

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_d
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    const v4, 0x7f121e0b

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    goto :goto_3

    :cond_e
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    :goto_3
    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    :goto_4
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSubmittable userCertSelection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v0, 0x0

    :cond_10
    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubmittable enabled2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/wifi/details/WifiConnectPrefController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->save()V

    return-void
.end method

.method public static synthetic lambda$displayPreference$1(Lcom/android/settings/wifi/details/WifiConnectPrefController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->save()V

    return-void
.end method

.method private loadCertificates(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "WifiConnectPrefController"

    const-string v5, "****Trying to Load certificates from CCM*****"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "USRPKEY_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "knox_ccm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

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

    const-string v7, "WifiConnectPrefController"

    const-string v8, "Fetching WiFi aliases from CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasesForWifi(Z)Ljava/util/List;

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

    iput-object v8, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromCCM:Ljava/util/List;

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

    const-string v7, "WifiConnectPrefController"

    const-string v8, "Failed at ClientCertificateManager API getAliasesForWiFi-Exception "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromCCM:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromCCM:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v0, "USRPKEY_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->sawUcmPrivateKeyForWifi()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM_uri:Ljava/util/List;

    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    move v9, v6

    :goto_4
    if-ge v9, v8, :cond_4

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "WifiConnectPrefController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add UCM List : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v11, v12}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    goto :goto_5

    :catch_1
    move-exception v0

    const-string v5, "WifiConnectPrefController"

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

    iput-object v5, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    iput-object v5, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM_uri:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    nop

    :try_start_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const/16 v5, 0x3f2

    invoke-virtual {v0, v3, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v5, "WifiConnectPrefController"

    const-string v6, "can\'t get the certificate list from KeyStore"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/DropDownPreference;->setPersistent(Z)V

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

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

.method private passwordCheck(Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v2, 0x1

    const v3, 0x7f06038d

    const v4, 0x7f120e24

    const v5, 0x7f06006b

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v1, v2, :cond_6

    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/16 v8, 0x1a

    const/16 v9, 0xd

    if-le v0, v9, :cond_1

    if-ne v0, v8, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v7

    nop

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    if-le v0, v9, :cond_4

    if-nez v1, :cond_4

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_4
    if-le v0, v8, :cond_5

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const/16 v1, 0xc8

    goto :goto_3

    :cond_7
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x40

    if-nez v1, :cond_8

    const/16 v1, 0x3f

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    if-le v0, v1, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_4
    return-void
.end method

.method private refreshAutoReconnectViews()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/Utils;->COMMON_SUPPORTCOMCASTWIFI:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_AUTO_RECONNECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setVisible(Z)V

    return-void
.end method

.method private refreshEapItems(I)V
    .locals 6

    const-string v0, "WifiConnectPrefController"

    const-string v1, "refreshEapItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "PEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TTLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshPhase2Method(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setEapMethod(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    const v0, 0x7f121f79

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    const/4 v3, 0x7

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    if-eq p1, v3, :cond_6

    const/16 v3, 0x8

    if-ne p1, v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    goto :goto_2

    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "WifiConnectPrefController"

    const-string v3, "refreshEapItems loadCertificates"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    const-string v3, "CACERT_"

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->loadCertificates(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findIndexOfValue(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v4}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getCaCertificateAliases()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v4}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getCaCertificateAliases()I

    move-result v3

    :cond_a
    if-gez v3, :cond_b

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v4, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    goto :goto_3

    :cond_b
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    :goto_3
    goto :goto_5

    :cond_c
    array-length v3, v0

    if-ne v3, v2, :cond_e

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    aget-object v4, v0, v1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findIndexOfValue(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_d

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v4, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    :goto_4
    goto :goto_5

    :cond_e
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    const-string v4, "CACERT_"

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->loadCertificates(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "WifiConnectPrefController"

    const-string v3, "refreshEapItems loadCertificates"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    const-string v3, "USRPKEY_"

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->loadCertificates(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findIndexOfValue(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v3}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getClientCertificateAlias()I

    move-result v3

    if-lez v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v3}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getClientCertificateAlias()I

    move-result v2

    :cond_10
    if-gez v2, :cond_11

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    :goto_6
    goto :goto_7

    :cond_12
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v2, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findIndexOfValue(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_13

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    goto :goto_7

    :cond_13
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/LayoutPreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method

.method private refreshPhase2Method(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_1
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move-object v1, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method private save()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSAScreenId:Ljava/lang/String;

    const v1, 0x7f120920

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->insertLogging(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->hideSoftKeyboard(Landroid/view/View;)V

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_0
    iget v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://WAPIAS_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, ""

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://WAPIUSR_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_d

    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x16

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->clear()V

    invoke-virtual {v6}, Ljava/lang/String;->clear()V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiType:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_d

    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->clear()V

    invoke-virtual {v6}, Ljava/lang/String;->clear()V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_4
    goto/16 :goto_d

    :pswitch_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v6

    const-string v7, "PEAP"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :cond_7
    const-string v7, "FAST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v7, 0x12

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v7, "fast_provisioning="

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v3, "1"

    :cond_9
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, "/data/vendor/wifi/wpa/wpa_supplicant.pac"

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :cond_a
    const-string v7, "TLS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    :cond_b
    const-string v7, "TTLS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_5

    :cond_c
    const-string v3, "PWD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    :cond_d
    const-string v3, "SIM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    :cond_e
    const-string v3, "AKA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    :cond_f
    const-string v3, "AKA\'"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_5

    :cond_10
    const-string v3, "LEAP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v7, 0x13

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_11
    :goto_5
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_6

    :cond_12
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v8, "/system/etc/security/cacerts"

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v4

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    :cond_14
    :goto_6
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    const-string v3, ""

    :cond_16
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM_uri:Ljava/util/List;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_18

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_17

    goto :goto_7

    :cond_17
    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto :goto_8

    :cond_18
    :goto_7
    return-void

    :cond_19
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromCCM:Ljava/util/List;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, " [Knox]"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/sec/tima_keychain/TimaKeychain;->display2KeyChainAlias(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    :cond_1a
    :goto_8
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    :cond_1b
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/LayoutPreference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_1c
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "SIM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "AKA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "AKA\'"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :cond_1e
    const-string v3, "TTLS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "PEAP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_9

    :cond_1f
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_a

    :cond_20
    :goto_9
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    :goto_a
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/LayoutPreference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_25

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_21
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_b

    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->clear()V

    invoke-virtual {v6}, Ljava/lang/String;->clear()V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_b
    goto :goto_d

    :pswitch_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    if-eq v1, v7, :cond_23

    const/16 v7, 0x1a

    if-eq v1, v7, :cond_23

    const/16 v7, 0x3a

    if-ne v1, v7, :cond_24

    :cond_23
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v6, v3, v4

    goto :goto_c

    :cond_24
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    :goto_c
    goto :goto_d

    :pswitch_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    nop

    :cond_25
    :goto_d
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecFlags()Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->semSamsungSpecificFlags:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    :cond_26
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPMFRequired()Z

    move-result v3

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :cond_27
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    :cond_28
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_29

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_e

    :cond_29
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_e
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v6, :cond_2a

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    :cond_2a
    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v7

    new-instance v8, Landroid/net/IpConfiguration;

    invoke-direct {v8, v1, v3, v6, v7}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isRecommended()Z

    move-result v8

    if-eqz v8, :cond_2b

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->semIsRecommended:Z

    :cond_2b
    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v8, :cond_2c

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->exitActivity()V

    return-void

    :cond_2c
    iput-boolean v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    iget v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v5, v2, :cond_2e

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "SIM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "AKA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_2d
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->isSimCheck()Z

    move-result v5

    if-nez v5, :cond_2e

    return-void

    :cond_2e
    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isRecommended()Z

    move-result v2

    if-eqz v2, :cond_2f

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.wifi.RecommendNetworkNotification.CONNECT_TO_NETWORK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2f
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f1216aa

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setButtonEnable(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setPreferenceEnable(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setconfig(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v2}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const-string v1, "WifiConnectPrefController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sawUcmPrivateKeyForWifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v4, "WifiConnectPrefController"

    const-string v5, "UniversalCredentialUtil is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    const-string/jumbo v3, "stringarrayresponse"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v5, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_4

    aget-object v6, v3, v5

    const-string v7, "WifiConnectPrefController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tempUri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "WifiConnectPrefController"

    const-string/jumbo v6, "uris length is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v5, "WifiConnectPrefController"

    const-string/jumbo v6, "uris is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :goto_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v5
.end method

.method private setAutoReconnectEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x47

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "netId"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "autoReconnect"

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reconnect()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setButtonEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setEnabled(Z)V

    return-void
.end method

.method private setEapMethod(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WifiConnectPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEapMethod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PEAP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "FAST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "TLS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_2
    const-string v0, "TTLS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_3
    const-string v0, "PWD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_4
    const-string v0, "SIM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_5
    const-string v0, "AKA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_6
    const-string v0, "AKA\'"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_7
    const-string v0, "LEAP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method private setPreferenceEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    return-void
.end method

.method private setupEapSpinner()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PEAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "PEAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TTLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PWD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA\'"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "FAST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupSecuritySpinner(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEntries(I)V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$5;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorTextMsg(I)V
    .locals 7

    const-string v0, "WifiConnectPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showErrorTextMsg disableReason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", connectingstate is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/16 v1, 0x9

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f121e23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showErrorDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0xd

    if-ne p1, v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setShowRetryDialog(Z)V

    const-string v3, "WifiConnectPrefController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showDialogForRetry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v3

    const v5, 0x7f121dcb

    const/4 v6, 0x1

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setButtonEnable(Z)V

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setPreferenceEnable(Z)V

    iput-boolean v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    iput-boolean v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    goto/16 :goto_2

    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v3, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f121de9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showErrorDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const v3, 0x7f121de8

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setButtonEnable(Z)V

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setPreferenceEnable(Z)V

    iput-boolean v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    iput-boolean v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mErrorDialogDiaply:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mConnectingState:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    const v1, 0x7f121de6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showErrorDialog(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private showSecurityFields(I)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setVisible(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshEapItems(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    goto/16 :goto_3

    :cond_0
    const v3, 0x7f121f79

    if-eq p1, v1, :cond_7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->getEapMethodOverride()I

    move-result v3

    if-ne v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshEapItems(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    goto/16 :goto_3

    :cond_3
    const/4 v4, 0x5

    if-ne p1, v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->getWapiPskTypeOverride()I

    move-result v4

    if-ne v4, v0, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    move v4, v5

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v5, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setVisible(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshEapItems(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setVisible(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshEapItems(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    const-string v3, "WAPIAS_"

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->loadCertificates(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    const-string v3, "WAPIUSR_"

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->loadCertificates(Landroid/support/v7/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setVisible(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshEapItems(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a0407

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f121f13

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findTogglePasswordButton(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordToggleButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordToggleButton:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordToggleButton:Landroid/view/View;

    new-instance v3, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController$4;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordInput:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateImeOptionsForEditText()V

    return-void
.end method

.method private showSoftKeyboardOnResume()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/applications/LayoutPreference;

    if-nez v4, :cond_0

    const-string v4, "WifiConnectPrefController"

    const-string/jumbo v5, "showSoftKeyboardOnResume not LayoutPreference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findEditTextFromLayout(Lcom/android/settings/applications/LayoutPreference;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSoftKeyboardOnResume mEditTexts-:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0xc8

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v5, Lcom/android/settings/wifi/details/WifiConnectPrefController$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController$2;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController$3;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController$3;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;Landroid/view/View;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private updateSecurity()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->passwordCheck(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 10

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "ssid"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSSIDPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSSIDPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a086c

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f121f28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSSIDPref:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a02a1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidWatcher:Lcom/android/settings/wifi/details/WifiConnectPrefController$EditTextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSSIDPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a0958

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidErrorText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "security_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    const v5, 0x7f121ec2

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecuritySpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setCallback(Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;)V

    const-string/jumbo v0, "wapi_pak_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    const-string/jumbo v0, "wapi_as_cert"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    const-string/jumbo v0, "wapi_user_cert"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    sget-boolean v0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->SUPPORT_WAPI:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f030136

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setupSecuritySpinner(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->SUPPORT_WPA3_SAE:Z

    if-eqz v0, :cond_1

    const v0, 0x7f03012d

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setupSecuritySpinner(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f03012a

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setupSecuritySpinner(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiTypePref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiAaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSSIDPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setVisible(Z)V

    :cond_2
    const-string v0, "eap_method"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    const v7, 0x7f121e11

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapSpinnerCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setCallback(Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setupEapSpinner()V

    const-string v0, "eap_ca_cert"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapCaCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "eap_user_cert"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapUserCertPref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->disableViewsIfAppropriate()V

    const-string/jumbo v0, "wifi_eap_ca_error_text"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapErrorPref:Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/SecWiFiUnclickablePreference;->setVisible(Z)V

    const-string v0, "eap_identity"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f121e10

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings/wifi/details/WifiConnectPrefController$WifiEapIdTextWatcher;

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityErrorText:Landroid/widget/TextView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/settings/wifi/details/WifiConnectPrefController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdentityErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-eq v0, v7, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapIdPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    :cond_3
    const-string/jumbo v0, "wifi_password"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121ea6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f121e1d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->removeDoubleQuotes(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSsidView:Landroid/widget/EditText;

    const v1, 0x7f121f29

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    if-ne v2, v5, :cond_8

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->removeDoubleQuotes(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->removeDoubleQuotes(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    const-string/jumbo v0, "wifi_autoreconnect_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAutoReconnectPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshAutoReconnectViews()V

    const-string v0, "save_button"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSaveButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSaveButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiConnectPrefController$2WO0g-BmGmbeherIHgtnssTMp10;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiConnectPrefController$2WO0g-BmGmbeherIHgtnssTMp10;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSaveButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121dcb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSaveButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->seslSetSubheaderRoundedBg(I)V

    const-string v0, "button"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->seslSetSubheaderRoundedBg(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    new-instance v1, Lcom/android/settings/wifi/details/-$$Lambda$WifiConnectPrefController$j7SBnonnP0_MM4osjTyYltL5Mpg;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details/-$$Lambda$WifiConnectPrefController$j7SBnonnP0_MM4osjTyYltL5Mpg;-><init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121eb5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSaveButtonPref:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showSoftKeyboardOnResume()V

    return-void
.end method

.method getEapMethodOverride()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getWapiPskTypeOverride()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiType:I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiType:I

    return v0
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiConnectPrefController"

    const-string v1, "    **** hideSoftKeyboard *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

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

.method protected isVendorSsid(Ljava/lang/String;)Z
    .locals 9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigVendorSsidList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "WifiConnectPrefController"

    const-string/jumbo v3, "vendorSsidList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v6, "WifiConnectPrefController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isVendorSsid :: vendorSsid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "WifiConnectPrefController"

    const-string v1, "onDestroy clearall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v1}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->clearall()V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->save()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/wifi/details/TempWifiConfiguration;->forceScrollToTopOfList:Z

    const-string v0, "WifiConnectPrefController"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_autoreconnect_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->setAutoReconnectEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSAScreenId:Ljava/lang/String;

    const v4, 0x7f12091e

    if-eqz v1, :cond_1

    const-wide/16 v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    :goto_0
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->insertLogging(Ljava/lang/String;IJ)V

    return v2

    :cond_2
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "security_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange KEY_PASSWORD_PREF : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showSecurityFields(I)V

    iput v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setSelection(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSecurity()V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->enableSubmitIfAppropriate()V

    return v2

    :cond_3
    const-string/jumbo v3, "wapi_pak_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    iput v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWapiType:I

    move-object v3, p1

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->enableSubmitIfAppropriate()V

    return v2

    :cond_5
    const-string/jumbo v3, "wapi_as_cert"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    return v2

    :cond_6
    const-string/jumbo v3, "wapi_user_cert"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    return v2

    :cond_7
    const-string v3, "eap_method"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange KEY_EAP_METHOD_PREF : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethod:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshEapItems(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethodPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setSelection(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->enableSubmitIfAppropriate()V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->disableViewsIfAppropriate()V

    return v2

    :cond_8
    const-string v3, "eap_ca_cert"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange KEY_EAP_CA_CERT_PREF : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v3, v1}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setCaCertificateAliases(I)V

    move-object v3, p1

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->enableSubmitIfAppropriate()V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->disableViewsIfAppropriate()V

    return v2

    :cond_9
    const-string v3, "eap_user_cert"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange KEY_EAP_USER_CERT_PREF : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {v3, v1}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setClientCertificateAlias(I)V

    move-object v3, p1

    check-cast v3, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->enableSubmitIfAppropriate()V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->disableViewsIfAppropriate()V

    return v2

    :cond_a
    return v4
.end method

.method public onResume()V
    .locals 3

    const-string v0, "WifiConnectPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mAccessPointSecurity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "wifi_autoreconnect_switch"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->refreshAutoReconnectViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "security_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mSecurityPref:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setSelection(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->getEapMethodOverride()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEapMethod:I

    iget v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mAccessPointSecurity:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->showSecurityFields(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->updateSecurity()V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method protected updateImeOptionsForEditText()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateImeOptionsForEditText preferenceCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settings/applications/LayoutPreference;

    if-nez v5, :cond_0

    const-string v5, "WifiConnectPrefController"

    const-string/jumbo v6, "updateImeOptionsForEditText not LayoutPreference"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->findEditTextFromLayout(Lcom/android/settings/applications/LayoutPreference;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "WifiConnectPrefController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateImeOptionsForEditText - prev:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    nop

    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getId()I

    move-result v6

    if-ne v5, v6, :cond_3

    const-string v5, "WifiConnectPrefController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateImeOptions - active:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_6

    instance-of v2, v3, Landroid/widget/EditText;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mEditTexts:Ljava/util/ArrayList;

    move-object v4, v3

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "WifiConnectPrefController"

    const-string/jumbo v4, "updateImeOptions - focused view is invisible"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_4

    :cond_5
    const-string v2, "WifiConnectPrefController"

    const-string/jumbo v4, "updateImeOptions - focused view is visible"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string v2, "WifiConnectPrefController"

    const-string/jumbo v4, "updateImeOptions - focused view is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    return-void
.end method
