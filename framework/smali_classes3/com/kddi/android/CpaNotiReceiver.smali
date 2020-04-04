.class public Lcom/kddi/android/CpaNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CpaNotiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    }
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field private static final APN_CPA_KEY:Ljava/lang/String; = "5"

.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final APN_NAVI_KEY:Ljava/lang/String; = "6"

.field public static final AUTHENTICATION_ERROR:I = -0x3

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final BEARER:Ljava/lang/String; = "bearer"

.field public static final CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final CARRIER_ENABLED_INDEX:I = 0x4

.field public static final CHANGE_MODE_CPA_REQUEST:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

.field public static final CHANGE_MODE_REQUEST_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

.field public static final CPA_CUR_PREF_APN_KEY:Ljava/lang/String; = "cpa.cur.pref.apn.key"

.field public static final CPA_CUR_PREF_APN_NAME:Ljava/lang/String; = "cpa.cur.pref.apn.name"

.field public static final CPA_ENABLED:Ljava/lang/String; = "com.kddi.android.cpa.CPA_ENABLED"

.field public static final CPA_PREV_PREF_APN_KEY:Ljava/lang/String; = "cpa.prev.pref.apn.key"

.field public static final CPA_PREV_PREF_APN_NAME:Ljava/lang/String; = "cpa.prev.pref.apn.name"

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DISCONNECTED:I = 0x4

.field public static final DISCONNECTING:I = 0x3

.field public static final ID:Ljava/lang/String; = "_id"

.field private static final ID_INDEX:I = 0x0

.field private static final KDI_APN_KEY_URI:Landroid/net/Uri;

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final MOBILE_DATA_ERROR:Ljava/lang/String; = "com.kddi.android.cpa.MOBILE_DATA_ERROR"

.field public static MODE_CPA:Ljava/lang/String; = null

.field public static MODE_DEFAULT:Ljava/lang/String; = null

.field public static MODE_NAVI:Ljava/lang/String; = null

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_CPA:Ljava/lang/String; = "Manual"

.field private static final NAME_INDEX:I = 0x1

.field public static final NAME_NAVI:Ljava/lang/String; = "Manual_for_Navi"

.field public static final NAVI_APN_NAME:Ljava/lang/String; = "Manual_for_Navi"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final PARAMETER_ERROR:I = -0x1

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PORT:Ljava/lang/String; = "port"

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final RADIO_NOT_AVAILABLE:I = -0x2

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field public static final ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final SERVER:Ljava/lang/String; = "server"

.field static final STATUS_ALERT_AUTHENTICATION_FAILED:I = 0xa

.field static final STATUS_ALERT_CONNECTION_FAIL_OTHER:I = 0xc

.field static final STATUS_ALERT_OUT_OF_3G_NETWORK:I = 0xb

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CpaNotiReceiver"

.field public static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPES_INDEX:I = 0x3

.field public static final UNKNOWN_ERROR:I = -0x4

.field public static final USER:Ljava/lang/String; = "user"

.field private static mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private DBG:Z

.field private isWifiTethered:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "NAVI"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    const-string v0, "DEFAULT"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    const-string v0, "DEFAULT_ON_CPA"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string/jumbo v2, "name"

    const-string v3, "apn"

    const-string/jumbo v4, "proxy"

    const-string/jumbo v5, "port"

    const-string/jumbo v6, "user"

    const-string/jumbo v7, "server"

    const-string/jumbo v8, "password"

    const-string/jumbo v9, "mmsc"

    const-string/jumbo v10, "mcc"

    const-string/jumbo v11, "mnc"

    const-string/jumbo v12, "numeric"

    const-string/jumbo v13, "mmsproxy"

    const-string/jumbo v14, "mmsport"

    const-string v15, "authtype"

    const-string/jumbo v16, "type"

    const-string/jumbo v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string/jumbo v20, "roaming_protocol"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    iput v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private changeStateToBtDunType(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeStateToBtDunType() phoneState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> btDunState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    return-object p1
.end method

.method private getCurrentMode()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "Manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "Manual_for_Navi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    :goto_1
    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentMode()name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getNaviState()I
    .locals 3

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_cpa_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPreferredApnKey()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cpa.cur.pref.apn.key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredApnKey() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private getPreferredApnName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cpa.cur.pref.apn.name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredApnName() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private getWifiTetherState()Z
    .locals 14

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v6, v1, v0

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    array-length v8, v2

    move v9, v5

    move v5, v4

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v10, v2, v5

    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "CpaNotiReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getWifiTetherState() regex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v5, v9

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiTetherState() wifiTethered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5
.end method

.method private handleMobileDataErrorForCpa(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V
    .locals 3

    const-string v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMobileDataErrorForCpa: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", exitCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleMobileDataErrorForNavi(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V
    .locals 3

    const-string v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMobileDataErrorForNavi: phoneState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", exitCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->changeStateToBtDunType(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    invoke-virtual {p0, v1, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loadPreferredApnInfo()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string/jumbo v5, "name"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "name ASC"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CpaNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadPreferredApnInfo() key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CpaNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadPreferredApnInfo() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CpaNotiReceiver"

    const-string v4, "getPreferredApnKey() error!! selected key is nothing. return first apn\'s key"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private loadPrevApnInfo()V
    .locals 14

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevSelectedKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevSelectedName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CpaNotiReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadPrevApnInfo() mPrevSelectedKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mPrevSelectedName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "numeric=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v5, "_id"

    const-string/jumbo v8, "name"

    const-string v9, "apn"

    const-string/jumbo v10, "type"

    const-string v11, "carrier_enabled"

    filled-new-array {v5, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "name ASC"

    const/4 v10, 0x0

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "carrier_enabled"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v11, "Manual"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "Manual"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "carrier_enabled"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v11, "Manual_for_Navi"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "Manual_for_Navi"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "carrier_enabled"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v13, "_id=?"

    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v6

    invoke-virtual {v11, v12, v10, v13, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    return-void
.end method

.method private loadPrevSelectedKey()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cpa.prev.pref.apn.key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadPrevSelectedKey() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private loadPrevSelectedName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cpa.prev.pref.apn.name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadPrevSelectedName() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private naviAuthFailedProcess()V
    .locals 0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevApnInfo()V

    return-void
.end method

.method private notifyCpaEnabled()V
    .locals 2

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    const-string/jumbo v1, "notifyCpaEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kddi.android.cpa.CPA_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private savePrevSelectedKey(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cpa.prev.pref.apn.key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "savePrevSelectedKey()key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private savePrevSelectedName(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cpa.prev.pref.apn.name"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "savePrevSelectedName() name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setApnCarrierEnabledStatus(Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectedName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCurSelectedkey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCurSelectedName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string/jumbo v6, "name"

    const-string v7, "apn"

    const-string/jumbo v8, "type"

    const-string v9, "carrier_enabled"

    filled-new-array {v3, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string/jumbo v9, "name ASC"

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "carrier_enabled"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v9, "Manual"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "Manual"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "carrier_enabled"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "CpaNotiReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mCurkey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mCurName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v9, "Manual_for_Navi"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "Manual_for_Navi"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "carrier_enabled"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnKey(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/kddi/android/CpaNotiReceiver;->setPreferredApnName(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "CpaNotiReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mCurkey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mCurName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v11, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v4

    invoke-virtual {v9, v10, v8, v11, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private setApnListItem()V
    .locals 9

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    const-string/jumbo v1, "setApnListItem() start!with mSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/kddi/android/CpaNotiReceiver;->sProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", APN_NAVI_KEY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0, v0, v1}, Lcom/kddi/android/CpaNotiReceiver;->validateAndSave(Landroid/net/Uri;Landroid/database/Cursor;)Z

    if-eqz v1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, " cursor is null!! "

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :goto_1
    nop

    if-eqz v1, :cond_4

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method private setNaviState(I)V
    .locals 2

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_cpa_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setPreferredApnKey(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredApnKey() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cpa.cur.pref.apn.key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->updatePreferredApnInfo(Ljava/lang/String;)V

    return-void
.end method

.method private setPreferredApnName(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredApnName() name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cpa.cur.pref.apn.name"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showApnListForDebug()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string/jumbo v4, "name"

    const-string v5, "apn"

    const-string/jumbo v6, "type"

    const-string v7, "carrier_enabled"

    filled-new-array {v1, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "name ASC"

    const/4 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaNotiReceiver"

    const-string/jumbo v3, "showApnListForDebug()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "CpaNotiReceiver"

    const-string v3, "--------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurPerfKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "CpaNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APNinfo :key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " carrier="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", apn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "CpaNotiReceiver"

    const-string v3, "--------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private updatePreferredApnInfo(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "apn_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v5, p1, v0

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    array-length v7, v1

    move v8, v4

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v9, v1, v4

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v8

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTetherState() wifiTethered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4
.end method

.method private validateAndSave(Landroid/net/Uri;Landroid/database/Cursor;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateAndSave() start! cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Manual_for_Navi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn name is different with navi\'s apn. (name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "CpaNotiReceiver"

    const-string v2, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "apn"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "password"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "proxy"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "port"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "authtype"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "kddi_cpa_static_dns1"

    sget-object v5, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v5, v5, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "kddi_cpa_static_dns2"

    sget-object v5, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v5, v5, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "CpaNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateAndSave() end! uri ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", values ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method


# virtual methods
.method public broadcastState(II)V
    .locals 4

    const-string v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    const-string v1, "broadcastState : State not changed return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CpaNotiReceiver"

    const-string v1, "broadcastState : Discard broadcasting illegal states"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "connStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "errno"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display for broadcating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CpaNotiReceiver"

    const-string v3, "broadcastState : not found CONNECTIVITY_ACTION"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ril.cpa.isPrevWifiTethered"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :goto_2
    const-string/jumbo v1, "ril.cpa.isPrevWifiTethered"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "CpaNotiReceiver"

    const-string/jumbo v2, "prev wifi tethered - tether trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_6
    return-void
.end method

.method public changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v0, "wifi"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_10

    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "changeMode : Mode is NAVI, settings is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    if-nez v0, :cond_2

    const-string v0, "CpaNotiReceiver"

    const-string v1, "changeMode : Mode is DEFAULT, mSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_2
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const-string v0, "CpaNotiReceiver"

    const-string v2, "changeMode - MODE_NAVI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getWifiTetherState()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "CpaNotiReceiver"

    const-string/jumbo v2, "wifi tethered - untether trigger"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v0, "ril.cpa.isPrevWifiTethered"

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_5
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "CpaNotiReceiver"

    const-string v2, "changeMode - current mode is NAVI : return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "CpaNotiReceiver"

    const-string v2, "changeMode - start change mode DEFAULT -> NAVI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPreferredApnInfo()V

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->savePrevSelectedKey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getPreferredApnName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->savePrevSelectedName(Ljava/lang/String;)V

    :cond_9
    sput-object p2, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    const-string v0, "Manual_for_Navi"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->setApnListItem()V

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "CpaNotiReceiver"

    const-string v2, "changeMode - case MODE_DEFAULT"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "CpaNotiReceiver"

    const-string v2, "changeMode - current mode is DEFAULT : return"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v1

    :cond_c
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "CpaNotiReceiver"

    const-string v2, "changeMode - start change mode NAVI -> DEFAULT"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Manual"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevApnInfo()V

    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    :cond_f
    :goto_2
    return v1

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "changeMode : Mode is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSettingFromIntent(Landroid/content/Intent;)Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    .locals 3

    new-instance v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>(Lcom/kddi/android/CpaNotiReceiver$1;)V

    const-string/jumbo v1, "settings.apn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    const-string/jumbo v1, "settings.userId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    const-string/jumbo v1, "settings.password"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    const-string/jumbo v1, "settings.authType"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    const-string/jumbo v1, "settings.proxyHost"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    const-string/jumbo v1, "settings.proxyPort"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    const-string/jumbo v1, "settings.dns1"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    const-string/jumbo v1, "settings.dns2"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public createTestNaviSetting()Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    .locals 2

    new-instance v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>(Lcom/kddi/android/CpaNotiReceiver$1;)V

    const-string/jumbo v1, "unitrg.au-net.ne.jp"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    const-string v1, "X36yN3Dhe9UjPhzm@unitrg.au-net.ne.jp"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    const-string v1, "KpyrR6BP"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    const-string v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public getExitCode()I
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "ril.cpa_exit_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public isCpaOn()Z
    .locals 3

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_cpa_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "KDI"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    const-string v1, "Intent will be ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CpaNotiReceiver"

    const-string/jumbo v3, "received boot completed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPreferredApnInfo()V

    invoke-direct {p0, v2}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "CpaNotiReceiver"

    const-string/jumbo v2, "received boot completed : MODE_NAVI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->notifyCpaEnabled()V

    const-string v1, "Manual"

    invoke-direct {p0, v1}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->naviAuthFailedProcess()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->notifyCpaEnabled()V

    :cond_6
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const-string v1, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.kddi.android.btdun"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.kddi.android.btdun.oemtest"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.kddi.android.btdun.oemtest2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    invoke-direct {p0, v2}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->naviAuthFailedProcess()V

    :cond_9
    const-string v1, "com.kddi.android.cpa.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p2}, Lcom/kddi/android/CpaNotiReceiver;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    const-string v2, "apn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apnType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->getExitCode()I

    move-result v4

    iget-boolean v5, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "CpaNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_ANY_DATA_CONNECTION_STATE_CHANGED : apnKey["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] apnTypeKey:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] exitCode["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    const-string v6, "default"

    const-string v7, "CpaNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WifiConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " / using="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    sget-object v7, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    if-eqz v7, :cond_d

    sget-object v7, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v7, v7, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct {p0, v1, v4}, Lcom/kddi/android/CpaNotiReceiver;->handleMobileDataErrorForNavi(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v7, :cond_d

    if-eqz v4, :cond_d

    invoke-direct {p0, v1, v4}, Lcom/kddi/android/CpaNotiReceiver;->handleMobileDataErrorForCpa(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V

    :cond_d
    :goto_0
    goto/16 :goto_2

    :cond_e
    const-string v1, "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "CpaNotiReceiver"

    const-string v2, "CHANGE_MODE_REQUEST_ACTION received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string/jumbo v1, "mode"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.cpa_navi_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/kddi/android/CpaNotiReceiver;->createSettingFromIntent(Landroid/content/Intent;)Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    goto/16 :goto_2

    :cond_10
    const-string v1, "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANGE_MODE_CPA_REQUEST received : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "sys.cpa_navi_state"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_12
    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kddi_cpa_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "sys.cpa_navi_state"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_13
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "tetherArray"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kddi/android/CpaNotiReceiver;->updateTetherState([Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    goto :goto_2

    :cond_14
    const-string v1, "com.kddi.android.cpa.testNAVI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_15

    const-string v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "testNAVI received : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "NAVI"

    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->createTestNaviSetting()Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    goto :goto_2

    :cond_16
    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    :cond_17
    :goto_2
    return-void
.end method

.method public showAlertDialog(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAlertDialog : status +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kddi.android.cpa.MOBILE_DATA_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "content"

    const-string v2, "STATUS_ALERT_CONNECTION_FAIL_OTHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string v1, "content"

    const-string v2, "STATUS_ALERT_OUT_OF_3G_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string v1, "content"

    const-string v2, "STATUS_ALERT_AUTHENTICATION_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    nop

    :goto_0
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
