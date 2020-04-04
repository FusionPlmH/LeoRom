.class public Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DataUsageFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->sendDisableMptcpStartBroadCast(Landroid/content/Context;)V

    return-void
.end method

.method private getMptcpName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12022e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120ec8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f120ada

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f120991

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private sendDisableMptcpStartBroadCast(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mptcp_start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p2
.end method

.method public formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 18

    move-wide/from16 v0, p2

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_1

    neg-long v8, v0

    long-to-float v8, v8

    goto :goto_1

    :cond_1
    long-to-float v8, v0

    :goto_1
    const v9, 0x7f120460

    const-wide/16 v10, 0x1

    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v13, v8, v12

    const/high16 v14, 0x447a0000    # 1000.0f

    if-lez v13, :cond_2

    const v9, 0x7f120c84

    const-wide/16 v10, 0x3e8

    div-float/2addr v8, v14

    :cond_2
    cmpl-float v13, v8, v12

    const-wide/16 v15, 0x3e8

    if-lez v13, :cond_3

    const v9, 0x7f120e58

    mul-long/2addr v10, v15

    div-float/2addr v8, v14

    :cond_3
    cmpl-float v13, v8, v12

    if-lez v13, :cond_4

    const v9, 0x7f120adc

    mul-long/2addr v10, v15

    div-float/2addr v8, v14

    :cond_4
    cmpl-float v13, v8, v12

    if-lez v13, :cond_5

    const v9, 0x7f121a42

    mul-long/2addr v10, v15

    div-float/2addr v8, v14

    :cond_5
    cmpl-float v12, v8, v12

    if-lez v12, :cond_6

    const v9, 0x7f1210b5

    mul-long/2addr v10, v15

    div-float/2addr v8, v14

    :cond_6
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x42c80000    # 100.0f

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_8

    const/16 v12, 0x64

    const-string v13, "%.2f"

    goto :goto_3

    :cond_8
    const/high16 v12, 0x41200000    # 10.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_a

    and-int/lit8 v12, p4, 0x1

    if-eqz v12, :cond_9

    const/16 v12, 0xa

    const-string v13, "%.1f"

    goto :goto_3

    :cond_9
    const/16 v12, 0x64

    const-string v13, "%.2f"

    goto :goto_3

    :cond_a
    and-int/lit8 v12, p4, 0x1

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    const-string v13, "%.0f"

    goto :goto_3

    :cond_b
    const/16 v12, 0x64

    const-string v13, "%.2f"

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v12, 0x1

    const-string v13, "%.0f"

    :goto_3
    nop

    if-eqz v5, :cond_d

    neg-float v8, v8

    :cond_d
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v7, v6

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    and-int/lit8 v7, p4, 0x2

    if-nez v7, :cond_e

    goto :goto_4

    :cond_e
    int-to-float v3, v12

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v10

    int-to-long v0, v12

    div-long/2addr v3, v0

    :goto_4
    move-wide v0, v3

    move-object/from16 v3, p1

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v7, v6, v4, v0, v1}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7
.end method

.method public formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    const v1, 0x1040357

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isMDODimmed(Landroid/content/Context;)Z
    .locals 12

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-nez v2, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    :goto_2
    const-string v9, "MobileDataOnlySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMobileDataOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isDataRoamingOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isAirplaneModeOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isVPN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    invoke-static {v6}, Lcom/samsung/android/settings/ConnectionsUtils;->isRoamingArea(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    nop

    :cond_5
    :goto_3
    return v5
.end method

.method public isSupportATTMobileData()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+enhanced4glte2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public isSupportInternationalDataRoaming()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+internationalenhanced4glte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public makeMDODisablePopup(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, " \u2011 "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mptcp_value"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->getMptcpName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->getMptcpName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    const v9, 0x7f121899

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v9, ""

    const-string v10, ""

    const v11, 0x7f12141d

    const/4 v12, 0x2

    if-ne v1, v6, :cond_4

    const v13, 0x7f121417

    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const v13, 0x7f121415

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v6

    invoke-virtual {v0, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_4
    if-lt v1, v12, :cond_5

    const v12, 0x7f121418

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f121416

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-virtual {v0, v13, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_5
    :goto_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f120475

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f121ac2

    new-instance v11, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;

    move-object/from16 v12, p0

    invoke-direct {v11, v12, v5, v0, v8}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;-><init>(Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;ZLandroid/content/Context;Z)V

    invoke-virtual {v6, v7, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
