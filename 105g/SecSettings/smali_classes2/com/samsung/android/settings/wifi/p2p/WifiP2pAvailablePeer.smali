.class public Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "WifiP2pAvailablePeer.java"


# instance fields
.field private mBinding:Z

.field private mContactDrawable:Landroid/graphics/drawable/Drawable;

.field public mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceType:I

.field private mIconIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0d02d1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const v2, 0xff00

    and-int/2addr v1, v2

    const/16 v2, 0x8

    shr-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v1, v7, :cond_5

    const/16 v8, 0x1b

    if-gt v1, v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const/16 v9, 0x401

    if-eq v8, v9, :cond_4

    const/16 v6, 0x704

    if-eq v8, v6, :cond_3

    const/16 v6, 0x1502

    if-eq v8, v6, :cond_2

    const/16 v6, 0x1601

    if-eq v8, v6, :cond_1

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 v4, v1, -0x1

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_0
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x5

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_1
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_2
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_3
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_4
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v2, v2, v7

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_1
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v2, v4, v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x7

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x6

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v2, v2, v6

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    goto :goto_0

    :cond_6
    iput v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    goto :goto_0

    :cond_8
    iput v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    if-lt v2, v4, :cond_9

    iget v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    if-gt v2, v4, :cond_9

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    sub-int/2addr v4, v7

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_1

    :cond_a
    const-string v2, "WifiP2pAvailablePeer"

    const-string v4, "Malformed primaryDeviceType"

    invoke-static {v2, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x501
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x701
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f1216e2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_1

    const/4 v1, -0x1

    nop

    :cond_1
    return v1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method protected notifyChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/CheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mBinding:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceName:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->refresh()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mBinding:Z

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method
