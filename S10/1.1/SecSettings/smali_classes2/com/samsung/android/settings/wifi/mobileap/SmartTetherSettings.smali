.class public Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartTetherSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field private static final DBG:Z

.field private static PROJECTION_DATA:[Ljava/lang/String;


# instance fields
.field private final SET_CHECKED_FALSE:I

.field private final SOCIAL_REGISTER_REQUEST:I

.field private final UPDATE_FAMILY_SWITCH:I

.field private dialogNameTextWatcher:Landroid/text/TextWatcher;

.field private drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private mAccountInfoPreference:Landroid/support/v7/preference/Preference;

.field private mActivity:Landroid/app/Activity;

.field private mAddAllowedDeviceButtonButton:Landroid/widget/Button;

.field private mAddAllowedDeviceButtonLayout:Lcom/android/settings/applications/LayoutPreference;

.field private mAddAllowedDeviceDescription:Lcom/android/settings/applications/LayoutPreference;

.field private mAddAllowedDevicePreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mAddAllowedDevicesDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

.field private mAutoHotspotHeaderDescription:Lcom/android/settings/applications/LayoutPreference;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

.field private mDeviceNameDialog:Landroid/app/AlertDialog;

.field private mDeviceNameOnDialogEditText:Landroid/widget/EditText;

.field private mDivider:Lcom/android/settings/applications/LayoutPreference;

.field private mEditYourFamilyButton:Landroid/widget/Button;

.field private mEditYourFamilyButtonLayout:Lcom/android/settings/applications/LayoutPreference;

.field private mErrorTextOnDialogView:Landroid/widget/TextView;

.field private mFamilyInfoPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

.field private mFamilyMembersHmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mFamilymembers:I

.field private mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mMyAccountPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mProfileUserName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartWhiteListClicked:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempDeviceNameOnDialogEditText:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mWhiteListPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->DBG:Z

    const-string v0, "_id"

    const-string v1, "data14"

    const-string v2, "data15"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->PROJECTION_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->SOCIAL_REGISTER_REQUEST:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mTempDeviceNameOnDialogEditText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilymembers:I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->SET_CHECKED_FALSE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->UPDATE_FAMILY_SWITCH:I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->dialogNameTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mTempDeviceNameOnDialogEditText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mTempDeviceNameOnDialogEditText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mErrorTextOnDialogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotPreferenceScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSmartWhiteListClicked:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;)Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSmartWhiteListClicked:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->refreshMyGroupPreferenceCategory()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startGroupActivity()V

    return-void
.end method

.method private checkServiceRegistered()V
    .locals 3

    const-string v0, "SmartTetherSettings"

    const-string v1, "checkServiceRegistered()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.mhs.smarttethering"

    const-string v2, "com.sec.mhs.smarttethering.ServiceRegisterActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getFamilyId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_familyid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProfileIcon()V
    .locals 8

    const-string v0, "SmartTetherSettings"

    const-string v1, "getProfileIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccountCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->PROJECTION_DATA:[Ljava/lang/String;

    const-string v5, "account_type_and_data_set =? AND mimetype =?"

    const-string v0, "vnd.sec.contact.phone"

    const-string v6, "vnd.android.cursor.item/photo"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-nez v3, :cond_2

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-void

    :cond_2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    const-string v4, "SmartTetherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumbNail ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v5, "SmartTetherSettings"

    const-string v6, "loadBitmap failed to get mediaInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-void

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    return-void

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-void
.end method

.method private getSamsungAccount()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getSamsungAccountCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    return v2
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->simCheck()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SmartTetherSettings"

    const-string v3, "Sim card removed, so closing activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->finish()V

    :cond_0
    goto/16 :goto_2

    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f120a5b

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->finish()V

    :cond_3
    goto/16 :goto_2

    :cond_4
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotPreferenceScreen()V

    goto/16 :goto_2

    :cond_5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const-string v2, "networkType"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotPreferenceScreen()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->updateAutoHotspotPreferenceSwitchState()V

    :cond_7
    :goto_1
    goto :goto_2

    :cond_8
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_9
    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getProfileIcon()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0805bb

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    :cond_c
    :goto_2
    return-void
.end method

.method private initMemberVar()V
    .locals 3

    const-string v0, "SmartTetherSettings"

    const-string v1, "initMemberVar() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceInfo:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "auto_hotspot_header_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAutoHotspotHeaderDescription:Lcom/android/settings/applications/LayoutPreference;

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02a3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceDescription:Lcom/android/settings/applications/LayoutPreference;

    const-string v0, "my_account_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyAccountPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string v0, "my_group_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDevicesDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDevicesDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121d25

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "add_allowed_devices_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDevicePreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0127

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120988

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0276

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDivider:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setEditYourFamilyButton()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAddAllowedDeviceButton()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAddAllowedDeviceDescription()V

    return-void
.end method

.method private isAutoHotspotEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isFamilySharingEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings_with_family"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private mapFamilyMembersToHashMap(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SmartTetherSettings"

    const-string v1, "mapFamilyMembersToHashMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_user_names"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_tethering_family_guids"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :try_start_0
    array-length v8, v5

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v9, v5, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v10, v7, 0x1

    :try_start_1
    aget-object v7, v4, v7

    const-string v11, "SmartTetherSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mFamilyUserName"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "null"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_0

    :catch_0
    move-exception v6

    move v7, v10

    goto :goto_1

    :catch_1
    move-exception v6

    move v7, v10

    goto :goto_2

    :catch_2
    move-exception v6

    :goto_1
    sget-boolean v8, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "SmartTetherSettings"

    const-string v9, "mapFamilyMembersToHashMap ArrayIndexOutOfBoundsException occurs"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v6

    :goto_2
    sget-boolean v8, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "SmartTetherSettings"

    const-string v9, "mapFamilyMembersToHashMap NumberFormatException occurs"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    nop

    :cond_3
    :goto_3
    return-void

    :cond_4
    :goto_4
    return-void
.end method

.method private refreshMyGroupPreferenceCategory()V
    .locals 13

    const-string v0, "SmartTetherSettings"

    const-string v1, "refreshMyGroupPreferenceCategory() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_family_sharing_service_registered"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isFamilySharingEnabled()Z

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isAutoHotspotEnabled()Z

    move-result v4

    const-string v5, "SmartTetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshMyGroupPreferenceCategory() - isCheckServiceDone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mFamilyDbValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", checkIfActiveNetworkHasInternet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->checkIfActiveNetworkHasInternet()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/LayoutPreference;->setShouldDisableView(Z)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyMembersHmap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyMembersHmap:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mapFamilyMembersToHashMap(Ljava/util/HashMap;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isFamilySharingEnabled()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyMembersHmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyMembersHmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-direct {v9, v10, v8, v11, v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;-><init>(Landroid/content/Context;Ljava/util/Map$Entry;Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;I)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyInfoPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyInfoPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-virtual {v9, v4}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyInfoPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v7}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setOrder(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyInfoPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyInfoPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    nop

    move v7, v10

    goto :goto_1

    :cond_1
    const-string v5, "SmartTetherSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshMyGroupPreferenceCategory() - FAMILY MEMBERS NOT ADDED : mFamilyMembersHmap.isEmpty(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyMembersHmap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isFamilySharingEnabled() :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isFamilySharingEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const-string v5, ""

    const-string v7, "d2d"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDivider:Lcom/android/settings/applications/LayoutPreference;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDivider:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceDescription:Lcom/android/settings/applications/LayoutPreference;

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceDescription:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v7

    if-eqz v7, :cond_4

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const-string v10, "SmartTetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smartWhiteList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAutoHotspotCustomPreferenceListener:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;

    invoke-direct {v10, v11, v9, v12}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;)V

    iput-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWhiteListPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWhiteListPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v8}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setOrder(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWhiteListPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWhiteListPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWhiteListPreference:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference;

    nop

    move v8, v11

    goto :goto_3

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v8}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyGroupPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    nop

    move v7, v10

    goto :goto_4

    :cond_5
    const-string v5, "SmartTetherSettings"

    const-string v7, "refreshMyGroupPreferenceCategory() - D2D feature is disabled"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto :goto_4

    :cond_6
    const-string v5, "SmartTetherSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshMyGroupPreferenceCategory() - isFamilySharingEnabled() :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isFamilySharingEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    :cond_8
    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->checkIfActiveNetworkHasInternet()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    :goto_6
    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilyMembersHmap:Ljava/util/HashMap;

    return-void
.end method

.method private setAddAllowedDeviceButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0133

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    const v1, 0x7f121d27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceButtonButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setAddAllowedDeviceDescription()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAddAllowedDeviceDescription:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a086c

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121d25

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAutoHotspotEnabled(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotPreferenceScreen()V

    return-void
.end method

.method private setAutoHotspotPreferenceScreen()V
    .locals 5

    const-string v0, "SmartTetherSettings"

    const-string v1, "setAutoHotspotPreferenceScreen() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_tethering_user_profile_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mProfileUserName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mProfileUserName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_tethering_user_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mUserName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mUserName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartTetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoHotspotPreferenceScreen() -  mDecUserName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDecProfileUserName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f121d41

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccountCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121d31

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getProfileIcon()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v2, :cond_2

    const-string v2, "SmartTetherSettings"

    const-string v3, "setAutoHotspotPreferenceScreen() -  Profile drawable not null:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const-string v2, "SmartTetherSettings"

    const-string v3, "setAutoHotspotPreferenceScreen() -  Profile drawable is null:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0805bb

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isAutoHotspotEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyAccountPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->seslSetSubheaderRoundedBg(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyAccountPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mMyAccountPreferenceCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAccountInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->refreshMyGroupPreferenceCategory()V

    return-void
.end method

.method private setEditYourFamilyButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButtonLayout:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0133

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    const v1, 0x7f121cb0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mEditYourFamilyButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setFamilySharingEnabled(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_smart_tethering_settings_with_family"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotPreferenceScreen()V

    return-void
.end method

.method private setHeaderDescription()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAutoHotspotHeaderDescription:Lcom/android/settings/applications/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->seslSetSubheaderRoundedBg(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mAutoHotspotHeaderDescription:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a086c

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f12188c

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private simCheck()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->DBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const-string v0, "LOADED"

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "READY"

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private startGroupActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sems.action.preference.groups"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSmartTetheringApk(ZZLjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->checkIfActiveNetworkHasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmartTetherSettings"

    const-string v1, "internet is not available, so not starting smarttethering apk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.mhs.smarttethering"

    const-string v2, "com.sec.mhs.smarttethering.SemWifiApBleSAService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "family"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "server_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string v1, "FMLY"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SmartTetherSettings"

    const-string v3, "can\'t start service com.sec.mhs.smarttethering "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateAutoHotspotPreferenceSwitchState()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isAutoHotspotEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->checkIfActiveNetworkHasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method checkIfActiveNetworkHasInternet()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-eqz v3, :cond_1

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xd48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "SmartTetherSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoRemoveInsetCategory(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isAutoHotspotEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startSmartTetheringApk(ZZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCornerColor(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setHeaderDescription()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "SmartTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smarttethersettings onActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne v1, p1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_tethering_family_sharing_service_registered"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setFamilySharingEnabled(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setFamilySharingEnabled(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->semWifiApBleMhsRole(Z)Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SmartTetherSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150125

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->initMemberVar()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f1301be

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    const-string v3, "SmartTetherSettings"

    const-string v4, "onCreateDialog() : create dialog  DIALOG_MODIFY_WHITE_LIST"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0d0020

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a04f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    const v3, 0x7f0a02d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mErrorTextOnDialogView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSmartWhiteListClicked:Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v4}, Landroid/net/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->dialogNameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameOnDialogEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/WifiApUtils;->getDialogTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f121f70

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f121eb5

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f121dbc

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v4

    :cond_0
    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    const-string v0, "SmartTetherSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->drawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "SmartTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFamilySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_tethering_family_sharing_service_registered"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->checkIfActiveNetworkHasInternet()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->checkServiceRegistered()V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setFamilySharingEnabled(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setFamilySharingEnabled(I)V

    :goto_1
    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setFamilySharingEnabled(I)V

    :cond_5
    :goto_2
    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SmartTetherSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotPreferenceScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->isAutoHotspotEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    const-string v0, "SmartTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->simCheck()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f120e79

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f121f61

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotEnabled(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->getSamsungAccountCount()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sems.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "MODE"

    const-string v4, "ADD_ACCOUNT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "IS_FROM_SETTING"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x69

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v2, "SmartTetherSettings"

    const-string v3, "Please login using Samsung Account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotEnabled(I)V

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotEnabled(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startSmartTetheringApk(ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->semWifiApBleMhsRole(Z)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setAutoHotspotEnabled(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->semWifiApBleMhsRole(Z)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->updateAutoHotspotPreferenceSwitchState()V

    :goto_1
    return-void
.end method
