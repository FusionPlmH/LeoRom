.class public Lcom/android/settings/network/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnEditor$ApnData;,
        Lcom/android/settings/network/ApnEditor$ErrorDialog;,
        Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field public static final MHENG:Z

.field public static final MHSDBG:Z

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private APN_TYPE_LIST:Ljava/lang/String;

.field private Key:Ljava/lang/String;

.field private SelectKey:Ljava/lang/String;

.field private dunRequired:Z

.field private imsRequired:Z

.field private isInserting:Z

.field private isNoWarning:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mApn:Landroid/support/v7/preference/SecEditTextPreference;

.field mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

.field private mApnSettingsObserver:Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;

.field private mApnType:Landroid/support/v7/preference/SecEditTextPreference;

.field private mApnTypeStyle:Z

.field private mApnType_list:Landroid/support/v7/preference/SecListPreference;

.field private mAuthType:Landroid/support/v7/preference/SecListPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mHasMdmEditedApn:Z

.field private mHasUserEditedApn:Z

.field private mIsSprDiableAll:Z

.field private mIsSprEditable:Z

.field private mIsVzwEditable:Z

.field private mMcc:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMnc:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroid/support/v7/preference/SecListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroid/support/v7/preference/SecEditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/support/v7/preference/SecEditTextPreference;

.field private mPort:Landroid/support/v7/preference/SecEditTextPreference;

.field private mProtocol:Landroid/support/v7/preference/SecListPreference;

.field private mProxy:Landroid/support/v7/preference/SecEditTextPreference;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field private mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

.field private mServer:Landroid/support/v7/preference/SecEditTextPreference;

.field private mSimSlot:I

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUser:Landroid/support/v7/preference/SecEditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-class v0, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/network/ApnEditor;->MHSDBG:Z

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/ApnEditor;->MHENG:Z

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

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->isNoWarning:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->imsRequired:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->isInserting:Z

    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mHasMdmEditedApn:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mHasUserEditedApn:Z

    new-instance v0, Lcom/android/settings/network/ApnEditor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/ApnEditor$1;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/ApnEditor;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/network/ApnEditor;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/network/ApnEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/ApnEditor;->mHasMdmEditedApn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/network/ApnEditor;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnTypesMatch: true because match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "apnTypesMatch: false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "LTE"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "4G"

    aput-object v6, v0, v5

    :cond_1
    if-eqz v2, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v6

    :goto_2
    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    return-object v3

    :cond_4
    const/4 v4, 0x0

    return-object v4
.end method

.method private changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p1

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

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

.method private checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "default"

    return-object v0

    :cond_1
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mms"

    return-object v0

    :cond_2
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "supl"

    return-object v0

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    const-string v0, "*"

    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private checkNullApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->imsRequired:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "internet + mms + ia"

    return-object v0

    :cond_2
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "internet + mms + dun"

    return-object v0

    :cond_3
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "internet + dun + xcap"

    return-object v0

    :cond_4
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "internet + mms + xcap"

    return-object v0

    :cond_5
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "internet + mms"

    return-object v0

    :cond_6
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "internet + dun"

    return-object v0

    :cond_7
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "internet + xcap"

    return-object v0

    :cond_8
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "internet"

    return-object v0

    :cond_9
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mms"

    return-object v0

    :cond_a
    const-string v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "dun"

    return-object v0

    :cond_b
    const-string v0, "12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "ims"

    return-object v0

    :cond_c
    const-string v0, "13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "xcap"

    return-object v0

    :cond_d
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "internet + mms + dun + xcap"

    return-object v0

    :cond_e
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "internet + mms + dun"

    return-object v0

    :cond_f
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "ia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "internet + mms + ia"

    return-object v0

    :cond_10
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "internet + dun + xcap"

    return-object v0

    :cond_11
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "internet + mms + xcap"

    return-object v0

    :cond_12
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "internet + mms"

    return-object v0

    :cond_13
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "internet + dun"

    return-object v0

    :cond_14
    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "internet + xcap"

    return-object v0

    :cond_15
    const-string v0, "internet"

    return-object v0

    :cond_16
    return-object p1

    :cond_17
    :goto_0
    const-string v0, "internet + mms + dun + xcap"

    return-object v0

    :cond_18
    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->imsRequired:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    if-nez v0, :cond_26

    if-nez p1, :cond_19

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_19
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "internet + mms"

    return-object v0

    :cond_1b
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "internet + xcap"

    return-object v0

    :cond_1c
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "internet"

    return-object v0

    :cond_1d
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "mms"

    return-object v0

    :cond_1e
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "ims"

    return-object v0

    :cond_1f
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "xcap"

    return-object v0

    :cond_20
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "internet + mms + xcap"

    return-object v0

    :cond_21
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "internet + mms"

    return-object v0

    :cond_22
    const-string/jumbo v0, "xcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "internet + xcap"

    return-object v0

    :cond_23
    const-string v0, "internet"

    return-object v0

    :cond_24
    return-object p1

    :cond_25
    :goto_1
    const-string v0, "internet + mms + xcap"

    return-object v0

    :cond_26
    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    if-eqz v0, :cond_35

    if-nez p1, :cond_27

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_27
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_2

    :cond_28
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "internet + mms + ia"

    return-object v0

    :cond_29
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "internet + mms"

    return-object v0

    :cond_2a
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "internet + dun"

    return-object v0

    :cond_2b
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "internet"

    return-object v0

    :cond_2c
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "mms"

    return-object v0

    :cond_2d
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "dun"

    return-object v0

    :cond_2e
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "internet + mms + dun"

    return-object v0

    :cond_2f
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "ia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "internet + mms + ia"

    return-object v0

    :cond_30
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "internet + mms"

    return-object v0

    :cond_31
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "internet + dun"

    return-object v0

    :cond_32
    const-string v0, "internet"

    return-object v0

    :cond_33
    return-object p1

    :cond_34
    :goto_2
    const-string v0, "internet + mms + dun"

    return-object v0

    :cond_35
    if-nez p1, :cond_36

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0

    :cond_36
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3

    :cond_37
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "internet"

    return-object v0

    :cond_38
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "mms"

    return-object v0

    :cond_39
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "supl"

    return-object v0

    :cond_3a
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "internet + mms"

    return-object v0

    :cond_3b
    const-string v0, "internet"

    return-object v0

    :cond_3c
    return-object p1

    :cond_3d
    :goto_3
    const-string v0, "internet + mms + supl"

    return-object v0
.end method

.method private deleteApn()V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "ApnEditor"

    const-string v6, "Deleting APN  succeeded"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "ApnEditor"

    const-string v12, "Deleting APN  failed"

    invoke-static/range {v7 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->SelectKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LTE NET"

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LTE NET for DATA"

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "KDDI set default Carrier enable true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "carrier_enabled"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const-string v4, "1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->SelectKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LTE NET"

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LTE NET for DATA"

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "KDDI set default Carrier enable true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "carrier_enabled"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const-string v4, "1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    :cond_3
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    return-void
.end method

.method private disableEditItems()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillUI(Z)V
    .locals 12

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillUi(), isFirstTime? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", newAPN? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2d

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v4, v2}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mApnTypeStyle:Z

    const/16 v4, 0xf

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v7, "default"

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v7, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v7, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v3, v7}, Lcom/samsung/android/settings/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    const-string v7, "gsm.sim.cdmaoperator.numeric"

    iget v8, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    const-string v9, ""

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "45502"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "46003"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    move-object v3, v7

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportGlobalRoamingLRA()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportGlobalRoamingACG()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v7, v8, v3}, Lcom/samsung/android/settings/ConnectionsUtils;->getNumericString(Landroid/content/Intent;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    sget-object v7, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillUi(), numeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_7

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    :cond_7
    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mApnTypeStyle:Z

    if-eqz v3, :cond_1e

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->isDunExist()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dunRequired "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->isImsExist()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->imsRequired:Z

    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsRequired "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/network/ApnEditor;->imsRequired:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->imsRequired:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const v6, 0x7f030006

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const v6, 0x7f03000c

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->imsRequired:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const v6, 0x7f030007

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const v6, 0x7f03000d

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_9
    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const v6, 0x7f030005

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const v6, 0x7f03000b

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListPreference;->setEntryValues(I)V

    :cond_a
    :goto_1
    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillUi(), APN type DB data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v7, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->dunRequired:Z

    if-eqz v3, :cond_17

    if-eqz v0, :cond_16

    const-string v3, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms,dun,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "xcap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms,dun,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "ia"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms,ia"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms,dun"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "xcap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,dun,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "xcap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "supl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,mms"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,dun"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v3, "xcap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v0, :cond_1d

    const-string v3, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_18
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string/jumbo v3, "xcap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_19
    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,mms"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_1a
    const-string/jumbo v3, "xcap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl,xcap"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_1b
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    const-string v4, "default,supl"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_1c
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_1d
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    :cond_1e
    :goto_2
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0xe

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_1f

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/SecListPreference;->setValueIndex(I)V

    goto :goto_3

    :cond_1f
    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v4, :cond_24

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaOpen()Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_20
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "IS_CTC"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "IS_CTC2"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget v7, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    if-nez v7, :cond_21

    if-eq v4, v2, :cond_22

    :cond_21
    iget v7, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    if-ne v7, v2, :cond_23

    if-ne v6, v2, :cond_23

    :cond_22
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/SecListPreference;->setValueIndex(I)V

    :cond_23
    goto :goto_3

    :cond_24
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    :goto_3
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_25

    move v5, v2

    goto :goto_4

    :cond_25
    move v5, v1

    :goto_4
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_26

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v6, :cond_29

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_26
    move v6, v5

    move v5, v2

    :goto_5
    if-eqz v6, :cond_28

    and-int/lit8 v7, v6, 0x1

    if-ne v7, v2, :cond_27

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_27
    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_28
    move v5, v6

    :cond_29
    :goto_6
    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-eqz v6, :cond_2a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2a
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_7

    :cond_2b
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v7, 0x7f03001d

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries(I)V

    goto :goto_8

    :cond_2c
    :goto_7
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v7, 0x7f03001e

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries(I)V

    :goto_8
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_2d
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportGlobalRoamingLRA()Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "LTE - Verizon Internet"

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v4, "LTE Internet"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2e
    const-string v3, "VZW Roaming Internet"

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v4, "Roaming Internet"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2f
    const-string v3, "VZW Roaming FOTA"

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v4, "Roaming FOTA"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_30
    const-string v3, "VZW Roaming IMS"

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v4, "Roaming IMS"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_31
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isCctModel()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "Verizon Internet"

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "VZW Roaming Internet"

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_32
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v4, "Xfinity Mobile"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_33
    iget-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mApnTypeStyle:Z

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_34
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/SecListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_35
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    sget-object v5, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigEditingIpVersionType"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    goto :goto_b

    :cond_36
    const-string v5, "Predefined"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->isPredefined()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    goto :goto_b

    :cond_37
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    goto :goto_b

    :cond_38
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    :goto_b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableEditingIpVersionTypeRoaming"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v6, v2}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    goto :goto_c

    :cond_39
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    goto :goto_c

    :cond_3a
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v6, v2}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v8, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v8

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v8

    if-eqz v8, :cond_3b

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    if-eqz v8, :cond_3c

    :cond_3b
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isLraImsi()Z

    move-result v8

    if-eqz v8, :cond_3d

    :cond_3c
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableEditItems()V

    goto/16 :goto_d

    :cond_3d
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v8, :cond_3e

    const-string v8, "USC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isUSCSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableEditItems()V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    goto/16 :goto_d

    :cond_3e
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v8, :cond_40

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-eqz v8, :cond_40

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_40

    sget-boolean v8, Lcom/android/settings/network/ApnEditor;->MHSDBG:Z

    if-nez v8, :cond_40

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableEditItems()V

    const-string v8, "APN2 EHRPD internet"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-string v8, "APN2 LTE internet"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    :cond_3f
    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    goto :goto_d

    :cond_40
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    if-nez v8, :cond_44

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableEditItems()V

    goto :goto_d

    :cond_41
    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isUSCSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_42

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v8, :cond_44

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableEditItems()V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    goto :goto_d

    :cond_42
    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_44

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v8, :cond_44

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-eqz v8, :cond_44

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableEditItems()V

    const-string v8, "APN2 EHRPD internet"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    const-string v8, "APN2 LTE internet"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    :cond_43
    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecListPreference;->setEnabled(Z)V

    :cond_44
    :goto_d
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->isEditable()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v8

    if-nez v8, :cond_46

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    if-eqz v8, :cond_45

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getOmcNWSalesCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VZW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    :cond_45
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    :cond_46
    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "vzw nonevzweditalbe set True"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    :cond_47
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const/16 v9, 0xb

    if-nez v8, :cond_4c

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    if-eqz v8, :cond_4c

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_4c

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v8, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v10, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "45005"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    const/16 v11, 0x3e8

    if-ne v11, v8, :cond_48

    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    goto :goto_f

    :cond_48
    const-string v11, "45008"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_49

    const-string v11, "45002"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    :cond_49
    const/16 v11, 0x3e9

    if-eq v11, v8, :cond_4b

    const/16 v11, 0x3ea

    if-ne v11, v8, :cond_4a

    goto :goto_e

    :cond_4a
    const-string v11, "45006"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4c

    const/16 v11, 0x3eb

    if-ne v11, v8, :cond_4c

    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    goto :goto_f

    :cond_4b
    :goto_e
    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    :cond_4c
    :goto_f
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    if-eqz v8, :cond_4d

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_4d

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "45407"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    :cond_4d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v8

    if-eqz v8, :cond_4e

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsSprDiableAll:Z

    if-eqz v8, :cond_4e

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-nez v8, :cond_4e

    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "spr disable all = true"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    :cond_4e
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    if-nez v8, :cond_4f

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_4f
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v8

    if-nez v8, :cond_5d

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isLraImsi()Z

    move-result v8

    if-eqz v8, :cond_50

    goto/16 :goto_11

    :cond_50
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v8

    if-eqz v8, :cond_52

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-eqz v8, :cond_51

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_51

    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "isSprEditable = true"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_51
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-eqz v8, :cond_5f

    sget-boolean v8, Lcom/android/settings/network/ApnEditor;->MHSDBG:Z

    if-eqz v8, :cond_5f

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_12

    :cond_52
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    if-eqz v8, :cond_53

    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "isVzwEditable = true"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_10

    :cond_53
    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    :cond_54
    :goto_10
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-eqz v8, :cond_5f

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5f

    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "isSprEditable = true"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_12

    :cond_55
    const-string v8, "XSA"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    sget-boolean v8, Lcom/android/settings/network/ApnEditor;->MHENG:Z

    if-eqz v8, :cond_56

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_12

    :cond_56
    const-string v8, "50501"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    const-string v8, "ims"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string v8, "hos"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string/jumbo v8, "telstra.wap"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string/jumbo v8, "telstra.mms"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    :cond_57
    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "XSA telstra make noneEditable"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_12

    :cond_58
    const-string v8, "50502"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    const-string/jumbo v8, "yesbusiness"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    const-string/jumbo v8, "yesinternet"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    const-string v8, "mms"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    :cond_59
    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "XSA optus make noneEditable"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_12

    :cond_5a
    const-string v8, "50503"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const-string v8, "ims"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5b

    const-string v8, "live.vodafone.com"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    :cond_5b
    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "XSA vodafone make noneEditable"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_12

    :cond_5c
    const-string v8, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const-string v8, "310150"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const-string v8, "ndo"

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "ATT nod make noneEditable"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_12

    :cond_5d
    :goto_11
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    if-eqz v8, :cond_5e

    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "isVzwEditable = true"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "apn_edit"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_12

    :cond_5e
    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    :cond_5f
    :goto_12
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v8

    if-eqz v8, :cond_60

    sget-object v8, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,supl"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,supl"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_60
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v8

    if-eqz v8, :cond_61

    sget-object v8, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v9}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,supl,hipri"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,supl,hipri"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_61
    const-string v8, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->isInserting:Z

    if-eqz v8, :cond_63

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,hipri"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,hipri"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_62
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-static {v7}, Lcom/samsung/android/settings/ConnectionsUtils;->isATTSimInserted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_63

    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->isInserting:Z

    if-eqz v8, :cond_63

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,hipri"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v9, "default,hipri"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_63
    :goto_13
    if-eqz v6, :cond_64

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_14

    :cond_64
    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_14
    iget-boolean v8, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v8, :cond_65

    const-string v8, "CSC"

    invoke-direct {p0, v8}, Lcom/android/settings/network/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    move v1, v2

    nop

    :cond_65
    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->isNoWarning:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Settings_ConfigDefinedApnProtocol"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    iget-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v8}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_66
    return-void
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    return-object p0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_d
    const-string v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_e
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_f
    const-string v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_10
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_11
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_12
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_13
    const-string v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_14
    const-string v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v3, v1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/android/settings/network/ApnEditor;->getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/network/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "name ASC"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getUserEnteredApnType()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "ia"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "emergency"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "hasAllApns: true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isDefinedApn(Ljava/lang/String;)Z
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND apn = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND proxy = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND mmsproxy = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND port = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND mmsport = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND mmsc = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND type = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND protocol = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND roaming_protocol  = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v4, "Telephony"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v11, 0x1

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    if-ne v4, v11, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND current1 = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND current = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    :cond_2
    const-string v4, "CSC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v4, "content://telephony/carriers/no_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    :cond_3
    :goto_1
    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDefinedApn() selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v11, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v2, :cond_5

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_1
    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDefinedApn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
.end method

.method private isDunExist()Z
    .locals 10

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "isDunExist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "No numeric data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x0

    new-instance v7, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://telephony/carriers/no_update"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "Query databases to find dun type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "dun"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "TGY"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "CAN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v6, "Dun type is exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    return v2

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught to query databases : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    return v2

    :goto_0
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4
.end method

.method private isEditable()Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND numeric = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND apn = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v4, "content://telephony/carriers/no_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "No carriers in telephony provider"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEditable count of cursor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "1"

    const-string/jumbo v5, "user_editable"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    sget-boolean v4, Lcom/android/settings/network/ApnEditor;->MHENG:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportEditableAtMHENG()Z

    move-result v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v1, :cond_4

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEditable  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method private isImsExist()Z
    .locals 9

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "isImsExist()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "No numeric data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v2, 0x0

    new-instance v6, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://telephony/carriers/no_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "Query databases to find ims type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ims"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "IMS type is exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught to query databases : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return v1

    :goto_0
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method private isPredefined()Z
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->changeNwkNameQuotesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(name = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' AND numeric = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' AND apn = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPredefined() selection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v5, "content://telephony/carriers/no_update"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    sget-object v6, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPredefined : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method public static synthetic lambda$updateApnDataToDatabase$0(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add a new apn to database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SecListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0300c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v8, "mvno_match_data"

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v7

    :goto_1
    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    invoke-virtual {v8, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setEnabled(Z)V

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    aget-object v7, v5, v0

    const-string v8, "SPN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_4
    aget-object v7, v5, v0

    const-string v8, "IMSI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v4, ""

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    goto :goto_3

    :catch_0
    move-exception v7

    sget-object v8, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mvnoDescription Exception caught : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    aget-object v7, v5, v0

    const-string v8, "GID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v9, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v9, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    aget v4, v9, v4

    invoke-virtual {v8, v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    :try_start_1
    aget-object v4, v5, v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    move-exception v4

    return-object v3
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListPreference;)Ljava/lang/String;
    .locals 6

    const-string v0, "IPV4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "IP"

    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/SecListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030008

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocolDescription raw : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "protocolIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocolDescription value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    return-object v2
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
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    new-instance v0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateAndSaveApnData()Z
    .locals 29

    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/android/settings/network/ApnEditor;->mHasUserEditedApn:Z

    const/4 v11, 0x1

    if-nez v0, :cond_0

    return v11

    :cond_0
    iget-boolean v0, v10, Lcom/android/settings/network/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v10, Lcom/android/settings/network/ApnEditor;->mHasUserEditedApn:Z

    if-nez v0, :cond_1

    return v11

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/android/settings/network/ApnEditor;->mIsSprDiableAll:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "carrier edit 4, do not update apn!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_2
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v11, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move/from16 v16, v0

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, v10, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v8, 0x0

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->showError()V

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "ApnEditor"

    const-string v5, "Saving APN  failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_4
    const-string v0, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AIO"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportDunTypeBlockAIO()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, ""

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    invoke-static {v10, v1}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;I)V

    return v8

    :cond_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v0

    iget-boolean v6, v10, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const-string v2, "name"

    const/4 v5, 0x1

    move-object v0, v10

    move-object v1, v7

    move-object v3, v12

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "apn"

    const/4 v5, 0x2

    move-object v3, v13

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "proxy"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "port"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "mmsproxy"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "mmsport"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string/jumbo v2, "user"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "server"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "password"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "mmsc"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v2, "authtype"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v19, 0xe

    move-object v0, v10

    move-object v1, v7

    move v4, v6

    move-object/from16 v20, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_7
    move-object/from16 v20, v5

    :goto_0
    const-string v2, "protocol"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    move-object v0, v10

    move-object v1, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "roaming_protocol"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string/jumbo v2, "type"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    move-object v0, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v0, ""

    iget-boolean v1, v10, Lcom/android/settings/network/ApnEditor;->mApnTypeStyle:Z

    if-nez v1, :cond_b

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v2, "type"

    const-string v3, "default,mms,supl"

    const/16 v19, 0xf

    move-object v0, v10

    move-object v1, v7

    move v4, v6

    move-object v8, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto/16 :goto_1

    :cond_8
    move-object v8, v5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanSBMModel()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v2, "type"

    const-string v3, "default,mms,supl,xcap"

    const/16 v5, 0xf

    move-object v0, v10

    move-object v1, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanSBMModel()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "default"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "xcap"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v2, "type"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",xcap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    move-object v0, v10

    move-object v1, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "type"

    const/16 v5, 0xf

    move-object v0, v10

    move-object v1, v7

    move-object v3, v8

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateAndSaveApnData checkNotSetApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanSBMModel()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "default"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "xcap"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v2, "type"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",xcap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    move-object v0, v10

    move-object v1, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_1

    :cond_c
    const-string/jumbo v2, "type"

    const/16 v5, 0xf

    move-object v0, v10

    move-object v1, v7

    move-object v3, v8

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    :goto_1
    move v6, v0

    move-object/from16 v19, v8

    const-string v2, "mcc"

    const/16 v5, 0x9

    move-object v0, v10

    move-object v1, v7

    move-object v3, v14

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v2, "mnc"

    const/16 v5, 0xa

    move-object v3, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    const-string v0, "numeric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    if-ne v0, v11, :cond_d

    const-string v0, "current1"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "sim_slot"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_d
    const-string v0, "current"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "sim_slot"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_e
    :goto_2
    const/4 v8, 0x0

    :goto_3
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_4

    :cond_10
    :goto_5
    move v4, v0

    const-string v2, "bearer_bitmask"

    const/16 v21, 0x13

    move-object v0, v10

    move-object v1, v7

    move v3, v4

    move v11, v4

    move v4, v6

    move-object/from16 v22, v5

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v6

    if-eqz v11, :cond_13

    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-static {v11, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    goto :goto_7

    :cond_12
    move v3, v8

    goto :goto_8

    :cond_13
    :goto_6
    const/4 v0, 0x0

    :goto_7
    move v3, v0

    :goto_8
    const-string v2, "bearer"

    const/16 v5, 0x12

    move-object v0, v10

    move-object v1, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    const-string v6, "mvno_type"

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    move-object v4, v10

    move-object v5, v7

    move-object/from16 v23, v7

    move-object v7, v1

    move v1, v8

    move v8, v0

    move-object/from16 v21, v9

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    const-string v6, "mvno_match_data"

    iget-object v2, v10, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16

    move-object/from16 v5, v23

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v10, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0x17

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "edited : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_14

    const-string v4, "edited"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v9, v23

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    :cond_14
    move-object/from16 v9, v23

    :goto_9
    const-string v6, "carrier_enabled"

    iget-object v2, v10, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    const/16 v2, 0x11

    move-object v4, v10

    move-object v5, v9

    move v8, v0

    move-object v1, v9

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    const-string v2, "edited"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "CSC"

    invoke-direct {v10, v2}, Lcom/android/settings/network/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v2, v10, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_15

    const-string v2, "Telephony"

    invoke-direct {v10, v2}, Lcom/android/settings/network/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    iget-boolean v2, v10, Lcom/android/settings/network/ApnEditor;->isNoWarning:Z

    if-nez v2, :cond_18

    const-string v2, "Telephony"

    invoke-direct {v10, v2}, Lcom/android/settings/network/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    invoke-static {v10, v2}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;I)V

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "validateAndSaveApnData() show ERROR_DIALOG_ID"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_18
    if-eqz v0, :cond_1a

    iget-object v2, v10, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v2}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_19

    iget-object v2, v10, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_b

    :cond_19
    iget-object v2, v10, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v2}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v2

    :goto_b
    invoke-direct {v10, v2, v1}, Lcom/android/settings/network/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_1a
    iget-boolean v2, v10, Lcom/android/settings/network/ApnEditor;->isInserting:Z

    if-eqz v2, :cond_1b

    const-string v2, "roaming"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1b
    const/16 v23, 0x5

    const/16 v24, 0x5

    const/16 v25, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    const-string v27, "ApnEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving APN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121af9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_1c
    move-object v4, v12

    :goto_c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeeded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v23 .. v28}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v2

    const/16 v4, 0xe11

    invoke-static {v2, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-direct {v3, p1, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v3

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v0, :cond_4

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get apnData from Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150010

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v1, "apn_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_apn"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecEditTextPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ril.simtype"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecEditTextPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string v1, "apn_http_proxy"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_http_port"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_user"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_server"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_password"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_mms_proxy"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_mms_port"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_mmsc"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_mcc"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_mnc"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_type"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    const-string v1, "apn_type_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecListPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "List"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EditOption4ApnType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mApnTypeStyle:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mApnTypeStyle:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mApnTypeStyle:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    const-string v1, "auth_type"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecListPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "apn_protocol"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecListPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "apn_roaming_protocol"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecListPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "carrier_enabled"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "bearer_multi"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Setting_DisableMenuBearerInApnEdit"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    const-string v1, "mvno_type"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecListPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "mvno_match_data"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecEditTextPreference;

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    const v4, 0x7f120474

    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    const v5, 0x7f120777

    invoke-virtual {p0, v5}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/MultiSelectListPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/MultiSelectListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecEditTextPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    iget v4, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    aget v4, v4, v2

    iput v4, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimSlot : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "vzw"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->SelectKey:Ljava/lang/String;

    :cond_5
    if-nez v4, :cond_6

    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    goto :goto_3

    :cond_6
    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    :goto_3
    const-string v5, "keyString"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    goto :goto_4

    :cond_7
    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    :goto_4
    const-string/jumbo v6, "sprdisable"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mIsSprDiableAll:Z

    goto :goto_5

    :cond_8
    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mIsSprDiableAll:Z

    :goto_5
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "sub_id"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-nez v7, :cond_9

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "onCreate no action error!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    :cond_9
    const-string v8, "carrier_config"

    invoke-virtual {p0, v8}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CarrierConfigManager;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    :cond_a
    const/4 v9, 0x0

    const-string v10, "android.intent.action.EDIT"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_d

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Edit request not for carrier table. Uri: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    :cond_b
    const-string v10, "android.intent.action.INSERT"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->isInserting:Z

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    sget-object v11, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_c

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insert request not for carrier table. Uri: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void

    :cond_c
    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const-string v10, "mvno_type"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    const-string v10, "mvno_match_data"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {p0, v9}, Lcom/android/settings/network/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    goto :goto_6

    :cond_e
    new-instance v10, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v11, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v11, v11

    invoke-direct {v10, v11}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v10, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    :goto_6
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v11, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v3, :cond_f

    move v10, v3

    goto :goto_7

    :cond_f
    move v10, v2

    :goto_7
    sget-object v11, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate: EDITED "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_12

    iget-object v11, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v12, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_10
    sget-boolean v11, Lcom/android/settings/network/ApnEditor;->MHENG:Z

    if-eqz v11, :cond_11

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportEditableAtMHENG()Z

    move-result v11

    if-eqz v11, :cond_11

    return-void

    :cond_11
    sget-object v11, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v12, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    goto :goto_8

    :cond_12
    iget-object v11, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/network/ApnEditor;->disableFields([Ljava/lang/String;)V

    :cond_13
    :goto_8
    move v11, v2

    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    if-ge v11, v12, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_14
    if-nez p1, :cond_15

    move v2, v3

    nop

    :cond_15
    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->fillUI(Z)V

    new-instance v2, Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;

    const/16 v2, 0xc

    const/16 v3, 0xe10

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEnteranceLogging(II)V

    return-void

    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu sim state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const v1, 0x7f120e51

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v3, v0, :cond_0

    invoke-interface {p1, v4, v2, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mSimSlot:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mEditable:Z

    if-ne v5, v3, :cond_d

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupport3LM()Z

    move-result v5

    const v6, 0x7f120e52

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v5, :cond_c

    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v5, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWConcept()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isLraImsi()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getOmcNWSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string v7, "VZW"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_3
    const-string v5, "CSC"

    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSPRNetworkUnLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    if-eqz v5, :cond_5

    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mIsSprEditable:Z

    if-eqz v5, :cond_6

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isLraImsi()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    if-eqz v5, :cond_9

    const-string v5, "ctnet"

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x17

    invoke-virtual {v5, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_9

    sget-object v3, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "do not add delete for china open CTNET(CTC) by CTC requirement: "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_a
    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_b
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mIsVzwEditable:Z

    if-eqz v5, :cond_c

    invoke-interface {p1, v4, v3, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_c
    :goto_1
    const/4 v3, 0x2

    const v5, 0x7f120e5f

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_d
    invoke-interface {p1, v4, v2, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnSettingsObserver:Lcom/android/settings/network/ApnEditor$ApnSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe23

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->deleteApn()V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    return v2

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xe11

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SecListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    return v2

    :cond_0
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/SecListPreference;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object v3, p2

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "apn_apn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "apn_apn"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "wap.cingular"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "pta"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "nxtgenphone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ims"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "IMS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;I)V

    return v2

    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "ril.simtype"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ims.ktfwing.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "tethering.ktfwing.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "lte.ktfwing.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "lte150.ktfwing.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "IMS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const/16 v3, 0x14

    invoke-static {p0, v3}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;I)V

    return v2

    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p2, :cond_d

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_d
    const-string v1, ""

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnType_list:Landroid/support/v7/preference/SecListPreference;

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_10
    if-eqz p2, :cond_11

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mHasUserEditedApn:Z

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apn_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe12

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "apn_apn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe13

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "apn_http_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe14

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "apn_http_port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe15

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "apn_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe16

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe17

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "apn_server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe18

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "apn_mmsc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe19

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "apn_mms_proxy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe1a

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "apn_mms_port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe1b

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "apn_mcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe1c

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "apn_mnc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe1d

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "apn_type_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xe1f

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "apn_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe1e

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_e
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe20

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_f
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe21

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_10
    const-string v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe22

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_11
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe24

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_12
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe25

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_13
    const-string v1, "mvno_match_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe26

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_14
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mHasMdmEditedApn:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/network/ApnEditor;->mFirstTime:Z

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mFirstTime:Z

    invoke-direct {p0, v0}, Lcom/android/settings/network/ApnEditor;->fillUI(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mHasMdmEditedApn:Z

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "apn_type_list"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item4 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSharedPreferenceChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/network/ApnEditor;->mHasUserEditedApn:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

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

.method showError()V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;)V

    return-void
.end method

.method validateApnData()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/SecEditTextPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/SecEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v8, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f120850

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f12084b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_2
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v12, 0x3

    if-eq v9, v12, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const v12, 0xfffe

    and-int/2addr v9, v12

    if-eq v9, v11, :cond_4

    goto :goto_0

    :cond_4
    const v9, 0xffff

    if-le v7, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f12084e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v13, v8

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-string v9, "CSC"

    invoke-direct {v0, v9}, Lcom/android/settings/network/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, v0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-nez v9, :cond_6

    iget-boolean v9, v0, Lcom/android/settings/network/ApnEditor;->isNoWarning:Z

    if-nez v9, :cond_9

    const-string v9, "Telephony"

    invoke-direct {v0, v9}, Lcom/android/settings/network/ApnEditor;->isDefinedApn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f120127

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f12084f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f12084d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_2
    if-nez v1, :cond_c

    iget-object v9, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v9, v12}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v13, v12

    move v14, v10

    :goto_3
    if-ge v14, v13, :cond_a

    aget-object v15, v12, v14

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validateApnData: appending type: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    goto :goto_3

    :cond_a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v10, 0x2

    if-lt v8, v10, :cond_b

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f12084a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    return-object v1
.end method
