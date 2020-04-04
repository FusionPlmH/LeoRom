.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;
.super Landroid/app/Fragment;
.source "WifiApQrCode.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApSsidView:Landroid/widget/TextView;

.field private mQrBmp:Landroid/graphics/Bitmap;

.field private mQrImageView:Landroid/widget/ImageView;

.field private mSSID:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private generateQrCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
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

.method private getQrCodeString()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const-string v1, "T:NONE"

    const-string v2, "S:"

    const-string v3, "P:"

    const-string v4, "H:"

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v6

    :cond_1
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mSSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    const-string v1, "T:WEP;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    const/16 v9, 0x16

    const/4 v10, 0x4

    if-eqz v6, :cond_6

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v7, :cond_3

    const-string v1, "T:NONE;"

    goto/16 :goto_2

    :cond_3
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eq v6, v7, :cond_5

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v7, :cond_4

    goto :goto_0

    :cond_4
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v7, :cond_b

    const-string v1, "T:WAPI-PSK;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_5
    :goto_0
    const-string v1, "T:WPA;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v7, :cond_7

    const-string v1, "T:NONE;"

    goto :goto_2

    :cond_7
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eq v6, v7, :cond_a

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v7, :cond_8

    goto :goto_1

    :cond_8
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v7, :cond_9

    const-string v1, "T:WAPI-PSK;"

    goto :goto_2

    :cond_9
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v8

    if-eqz v6, :cond_b

    const-string v1, "T:WEP;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_a
    :goto_1
    const-string v1, "T:WPA;"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    :goto_2
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_c

    const-string v4, "H:true;"

    goto :goto_3

    :cond_c
    const-string v4, "H:false;"

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "WifiApQrCode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-object v0
.end method

.method private updateView()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->getQrCodeString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->generateQrCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x400

    mul-int/2addr v3, v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v3, v5

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mSSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mApSsidView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mApSsidView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    const v1, 0x7f0a0630

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mApSsidView:Landroid/widget/TextView;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d02b4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->updateView()V

    return-void
.end method
