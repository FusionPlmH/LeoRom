.class public Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiQrCodeSharingPreference.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mQrBmp:Landroid/graphics/Bitmap;

.field private mSSID:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d02de

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getQrCodeString()Ljava/lang/String;
    .locals 15

    const/4 v0, 0x0

    const-string v1, "T:"

    const-string v2, "S:"

    const-string v3, "P:"

    const-string v4, "H:"

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v6

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    iget v10, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v10, v7, :cond_10

    const-string v8, "WifiQrCodeSharingPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "networkId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mSSID:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    const/4 v11, 0x0

    if-eqz v8, :cond_2

    const-string v1, "T:WEP;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_2
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    const/16 v12, 0x16

    const/16 v13, 0x8

    const/4 v14, 0x4

    if-eqz v8, :cond_8

    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_3

    const-string v1, "T:NONE;"

    goto/16 :goto_3

    :cond_3
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eq v8, v10, :cond_7

    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_4

    goto :goto_1

    :cond_4
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_5

    const-string v1, "T:SAE;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_5
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_6

    const-string v1, "T:WAPI-PSK;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_6
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v8, v8, v11

    if-eqz v8, :cond_e

    const-string v1, "T:WEP;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_7
    :goto_1
    const-string v1, "T:WPA;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_8
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_9

    const-string v1, "T:NONE;"

    goto/16 :goto_3

    :cond_9
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eq v8, v10, :cond_d

    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_a

    goto :goto_2

    :cond_a
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_b

    const-string v1, "T:SAE;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_b
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-ne v8, v10, :cond_c

    const-string v1, "T:WAPI-PSK;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    iget-object v8, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v8, v8, v11

    if-eqz v8, :cond_e

    const-string v1, "T:WEP;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_d
    :goto_2
    const-string v1, "T:WPA;"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_e
    :goto_3
    iget-boolean v8, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "true;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "false;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIFI:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->DBG:Z

    if-eqz v8, :cond_11

    const-string v8, "WifiQrCodeSharingPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_10
    goto/16 :goto_0

    :cond_11
    :goto_5
    return-object v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
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
    return-object v1
.end method

.method private updateQrCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/android/camera/vision/BarcodeGenerator;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/vision/BarcodeGenerator;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;->H:Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;

    sget-object v3, Lcom/samsung/android/camera/vision/QRCodeMode;->BYTE:Lcom/samsung/android/camera/vision/QRCodeMode;

    nop

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/samsung/android/camera/vision/BarcodeGenerator;->createQrImage(Ljava/lang/String;Lcom/samsung/android/camera/vision/QRCodeMode;Lcom/samsung/android/camera/vision/QRCodeErrorCorrectionLevel;Z)Lcom/samsung/android/camera/vision/Image;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/camera/vision/Image;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/camera/vision/Image;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/camera/vision/Image;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/camera/vision/Image;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    new-array v7, v6, [I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-byte v9, v5, v8

    const v10, 0x10101

    mul-int/2addr v9, v10

    const/high16 v10, -0x1000000

    or-int/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/camera/vision/Image;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/camera/vision/Image;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    const v0, 0x7f0a0965

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0966

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->updateView()V

    return-void
.end method

.method public updateView()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->getQrCodeString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mSSID:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f121ee2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->updateQrCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v6, 0x400

    mul-int/2addr v5, v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeSharingPreference;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/2addr v5, v7

    invoke-static {v4, v6, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
