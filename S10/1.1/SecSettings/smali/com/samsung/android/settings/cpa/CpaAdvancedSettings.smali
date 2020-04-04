.class public Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "CpaAdvancedSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mApn:Landroid/preference/EditTextPreference;

.field mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mDns1:Landroid/preference/EditTextPreference;

.field private mDns2:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRegExpn:Ljava/lang/String;

.field private mRegExpn1:Ljava/lang/String;

.field private mRegExpn_Domain_num:Ljava/lang/String;

.field private mRegExpn_Domain_num1:Ljava/lang/String;

.field private mRegExpn_IP:Ljava/lang/String;

.field private mRegExpn_Pwd:Ljava/lang/String;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-class v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "proxy"

    const-string v5, "port"

    const-string/jumbo v6, "user"

    const-string v7, "server"

    const-string v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string/jumbo v16, "type"

    const-string v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v23, "mvno_match_data"

    const-string v24, "edited"

    const-string/jumbo v25, "user_editable"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn:Ljava/lang/String;

    const-string v0, "^[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn1:Ljava/lang/String;

    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num:Ljava/lang/String;

    const-string v0, "^[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num1:Ljava/lang/String;

    const-string v0, "^[a-z0-9A-Z!#$%&()*+-./:;<>=?@\\[\\]_\\{\\}]{1,16}$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Pwd:Ljava/lang/String;

    const-string v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_IP:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private fillUI(Z)V
    .locals 10

    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillUi(), isFirstTime? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", newAPN? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    const/16 v6, 0xe

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v7, :cond_3

    if-lt v4, v2, :cond_1

    if-le v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x2

    :cond_2
    sget-object v5, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillUI() : mCursor.getInt(AUTH_TYPE_INDEX) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns1"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kddi_cpa_static_dns2"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    sget-object v5, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private isValidIP(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_IP:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidIP : Valid IP == "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    sget-object v3, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidIP : unValid IP == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isValidPort(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    move v1, v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    nop

    const v3, 0xffff

    if-gt v1, v3, :cond_3

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidPort : Valid Port == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidPort : unValid Port == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "It\'s not number type!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static synthetic lambda$updateApnDataToDatabase$0(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    const/16 v2, 0x2a

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    return-object v0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateAndSaveApnData()Z
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateApnData()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showDialog(I)V

    return v1

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v1

    iget-boolean v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    const-string v3, "apn"

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, v14

    move-object v4, v0

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    const-string v10, "proxy"

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    move-object v8, p0

    move-object v9, v14

    move v12, v1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    const-string v10, "port"

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    move v12, v1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    const-string/jumbo v10, "user"

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x5

    move v12, v1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    const-string v10, "password"

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x7

    move v12, v1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v10, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v11, v4, 0x1

    const/16 v13, 0xe

    move-object v8, p0

    move-object v9, v14

    move v12, v1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v1

    :cond_1
    const-string v10, "mcc"

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    const/16 v13, 0x9

    move-object v8, p0

    move-object v9, v14

    move v12, v1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    const-string v10, "mnc"

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    const/16 v13, 0xa

    move v12, v1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    const-string v4, "numeric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    invoke-virtual {v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCarrierUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    invoke-virtual {v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v4

    :goto_0
    invoke-direct {p0, v4, v14}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_3
    return v3
.end method


# virtual methods
.method getApnDataFromUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get apnData from Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public isValidID(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v2, "isValidID : inputEmail == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn1:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num1:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    sub-int/2addr v8, v6

    const/16 v6, 0x18

    if-le v7, v6, :cond_2

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isValidID : limitId == "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v6, 0x14

    if-le v8, v6, :cond_3

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isValidID : limitDomain == "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isValidID : Invalid id == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isValidID : Valid id == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_1
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isValidID : domain made only numberic!!  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isValidPwd(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v2, "inputPwd : inputPwd == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Pwd:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "isValidPwd : Vaild pwd"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "isValidPwd : Invalid pwd"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500a8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    const-string v1, "apn_apn"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    const-string v1, "apn_http_proxy"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    const-string v1, "apn_http_port"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    const-string v1, "apn_user"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    const-string v1, "apn_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    const-string v1, "dns1"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    const-string v1, "dns2"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "auth_type"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    return-void

    :cond_0
    const/4 v3, 0x0

    const-string v4, "com.samsung.settings.CPA_EDIT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Edit request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    return-void

    :cond_1
    const-string v4, "com.samsung.android.settings.cpa.CpaAdvancedSettings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCarrierUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCarrierUri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    return-void

    :cond_2
    const-string v4, "new"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getApnDataFromUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    array-length v6, v6

    invoke-direct {v4, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const v6, 0x7f0601b2

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->semSetCategoryBGColor(I)V

    if-nez p1, :cond_5

    const/4 v5, 0x1

    nop

    :cond_5
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->fillUI(Z)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    const v1, 0x104000a

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateApnData()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120852

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121146

    new-instance v3, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$3;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121e1e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120853

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateAndSaveApnData()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "kddi_cpa_added"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    :cond_1
    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string v1, "apn_http_port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidPort(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto/16 :goto_1

    :catch_1
    move-exception v2

    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120574

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v3

    :cond_2
    const-string v1, "apn_apn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v4, ".au-net.ne.jp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120571

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v3

    :cond_3
    goto/16 :goto_1

    :cond_4
    const-string v1, "apn_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidID(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120575

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v3

    :cond_6
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidPwd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120573

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v3

    :cond_8
    const-string v1, "dns1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x7f120572

    if-eqz v1, :cond_b

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kddi_cpa_static_dns2"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns1"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :goto_0
    nop

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v3

    :cond_b
    const-string v1, "dns2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kddi_cpa_static_dns2"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    return v3

    :cond_d
    :goto_1
    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateApnData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    invoke-virtual {v0, p5}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return v1
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApnData:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;

    invoke-virtual {v0, p5}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public showAlertDialogAboutInvalid(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120852

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$2;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    return-void
.end method

.method validateApnData()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12084b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120854

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120851

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120574

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method
