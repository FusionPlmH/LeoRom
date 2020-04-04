.class public Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;
.super Ljava/lang/Object;
.source "SecDeviceInfoHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceNameEdit:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResolver:Landroid/content/ContentResolver;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0167

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDeviceInfoList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getModelNumberExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isAlterModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persist.sys.iss.altermodel"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v4, 0x7f121544

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v6, 0x7f1218ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5, v2, v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_2

    new-instance v8, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v10, v7}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10, v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v3

    const v6, 0x7f1206ca

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "none"

    const-string v7, "ril.approved_modemver"

    const-string v8, "none"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ril.approved_modemver"

    goto :goto_1

    :cond_3
    const-string v3, "gsm.version.baseband"

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v10, 0x7f121891

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v7}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "ril.hw_ver"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const v8, 0x7f120ad0

    if-nez v7, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCMCCModel()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    add-int/lit8 v7, v6, 0x2

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    new-instance v5, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v7, v6}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    const-string v3, "ro.csb_val"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CSB debug keyindex= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "unknown"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "ABSENT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "Type: Samsung"

    :goto_3
    goto :goto_4

    :cond_9
    const-string v5, "2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "Type: Knox A"

    goto :goto_3

    :cond_a
    const-string v5, "3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "Type: Knox B"

    goto :goto_3

    :cond_b
    const-string v5, "4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "Type: Knox C"

    goto :goto_3

    :cond_c
    const-string v5, "Type: Invalid"

    :goto_4
    new-instance v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    const-string v7, "Secure boot status"

    invoke-direct {v6, p0, v7, v5}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    const-string v5, "XSG"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "XSD"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "XST"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "XSZ"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "XSM"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "XSS"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "XSI"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "country_cert_info_enable"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "country_cert_info_traid"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "country_cert_info_ta"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "country_cert_info_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_f

    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TRA ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\nTA : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    invoke-direct {v8, p0, v6, v7}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    goto :goto_6

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_10
    :goto_6
    return-object v0
.end method

.method private getPhoneNumbers()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$1;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;)V

    invoke-interface {v1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numSubInfos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v8, 0x7f121a85

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLine1Number:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "\\+82"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private initDeviceName()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    const v1, 0x7f0a023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    const v1, 0x7f0a023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isAlterModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initInfoChart()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    const v1, 0x7f0a047d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const v2, 0x7f0a0861

    const/4 v3, 0x0

    const v4, 0x7f0d0166

    const v5, 0x7f0a01c4

    const/4 v6, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v9, 0x7f12159b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getPhoneNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    const v9, 0x7f0a01c6

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0a05c3

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0a05c4

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0a05c5

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const v11, 0x7f121a85

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getDeviceInfoList()Ljava/util/ArrayList;

    move-result-object v1

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;

    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->getContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$DeviceInfo;->isCopyable()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$2;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$2;-><init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getDeviceInfoHeader()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->initInfoChart()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->initDeviceName()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-object v0
.end method

.method public getDeviceNameEditButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    return-object v0
.end method

.method public getDeviceNameView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    return-object v0
.end method
