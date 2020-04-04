.class public Lcom/samsung/android/settings/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final RCS_RCSPROFILE_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_RCSPROFILE_PREFERENCE_URI_SIM1:Landroid/net/Uri;

.field public static final RCS_RCSPROFILE_PREFERENCE_URI_SIM2:Landroid/net/Uri;

.field public static final RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

.field public static final RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

.field private static sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOmcSupport:Z

.field private mPhoneId:I

.field private mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/rcsprofile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/rcsprofile"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/rcsprofile"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-nez p1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The given context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/support_omc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    if-nez v1, :cond_3

    const-string v1, "persist.sys.omc_path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Lcom/samsung/android/settings/rcs/RcsUtils;->getOmcVersion()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpl-double v3, v3, v5

    const/4 v4, 0x1

    if-ltz v3, :cond_2

    const-string v3, "dsds"

    const-string v5, "persist.radio.multisim.config"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-ne v3, v4, :cond_1

    const-string v3, "persist.sys.omcnw_path2"

    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "persist.sys.omcnw_path"

    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "persist.sys.omcnw_path"

    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    :cond_3
    new-instance v1, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static buildUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/rcs/RcsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-object v0
.end method

.method public static getOmcVersion()D
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_AutoConfigurationType"

    const-string v4, "DISABLE"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIMBASED_OMC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string v4, "0.0"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "NumberFormatException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :goto_1
    return-wide v0
.end method


# virtual methods
.method public checkds()Z
    .locals 2

    const-string v0, "dsds"

    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableRcs(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRcs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "rcs_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v0}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-object v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-nez v2, :cond_0

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_RCSPROFILE_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    :cond_1
    :goto_0
    const/4 v8, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rcsprofile"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_2
    if-nez v8, :cond_3

    return-object v0

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "rcsprofile"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rcsprofile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method public isEnableRcs()Z
    .locals 9

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rcs_enabled"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_2
    const/4 v3, 0x0

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "rcs_enabled"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-ne v4, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    sget-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RCS Enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public isMasterSwitchVisible()Z
    .locals 9

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkds()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->RCS_SWITCH_PREFERENCE_URI_SIM2:Landroid/net/Uri;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "master_switch"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_2
    const/4 v3, 0x0

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "master_switch"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    :goto_1
    goto :goto_2

    :cond_5
    if-ne v4, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method
