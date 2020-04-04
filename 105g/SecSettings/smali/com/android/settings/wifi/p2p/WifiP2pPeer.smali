.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroid/support/v7/preference/Preference;
.source "WifiP2pPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    }
.end annotation


# static fields
.field public static final deviceTypeDefaultIcon:[I

.field public static final deviceTypeOpionalIcon:[I

.field public static final sDeviceTypeImages:[I


# instance fields
.field private mBinding:Z

.field private mContactDrawable:Landroid/graphics/drawable/Drawable;

.field public mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceType:I

.field private mIconIndex:I

.field private mSecondSummary:Landroid/widget/TextView;

.field private mTalkback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void

    :array_0
    .array-data 4
        0x7f08072a
        0x7f08073d
        0x7f080740
        0x7f08072f
        0x7f08071e
        0x7f08073e
        0x7f080728
        0x7f080737
        0x7f080733
        0x7f08073f
        0x7f080724
        0x7f080725
        0x7f080735
        0x7f08073c
        0x7f08071f
        0x7f08072e
        0x7f080732
        0x7f080734
        0x7f080738
        0x7f080731
        0x7f080729
        0x7f08073a
        0x7f08073e
        0x7f080737
        0x7f080736
        0x7f080723
        0x7f080722
    .end array-data

    :array_1
    .array-data 4
        0x7f080730
        0x7f08072c
        0x7f080726
        0x7f080727
        0x7f080739
        0x7f080720
        0x7f080721
        0x7f08072b
        0x7f080728
    .end array-data

    :array_2
    .array-data 4
        0x7f08072f
        0x7f080727
        0x7f080731
        0x7f080723
        0x7f08073b
        0x7f08072d
        0x7f08073e
        0x7f080739
        0x7f080726
        0x7f08072a
        0x7f080728
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const v3, 0xff00

    and-int/2addr v2, v3

    const/16 v3, 0x8

    shr-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v4, v4, 0xff

    const v5, 0x7f0d02d2

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setLayoutResource(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-lt v2, v7, :cond_5

    const/16 v8, 0x1b

    if-gt v2, v8, :cond_5

    sget-object v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    iput v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const/16 v9, 0x401

    if-eq v8, v9, :cond_4

    const/16 v0, 0x704

    if-eq v8, v0, :cond_3

    const/16 v0, 0x1502

    if-eq v8, v0, :cond_2

    const/16 v0, 0x1601

    if-eq v8, v0, :cond_1

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v3, 0x5

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v0, v0, v6

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v0, v0, v5

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v3, 0x7

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v3, 0x6

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_4
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v0, v3, v0

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    goto :goto_0

    :cond_6
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    goto :goto_0

    :cond_8
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    :goto_0
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v3

    if-lt v0, v3, :cond_9

    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v3

    if-gt v0, v3, :cond_9

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sub-int/2addr v3, v7

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v3

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_1

    :cond_a
    const-string v0, "WifiP2pPeer"

    const-string v3, "Malformed primaryDeviceType"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v3

    aget v0, v0, v3

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

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
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const v3, 0x7f06039f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f1216e2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v4, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f1216e4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f1216ec

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f1216ed

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private setSecondSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 4

    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_2

    const/4 v1, -0x1

    nop

    :cond_2
    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method protected notifyChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v0, 0x7f0a06df

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->refresh()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mBinding:Z

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setTalkback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    return-void
.end method
