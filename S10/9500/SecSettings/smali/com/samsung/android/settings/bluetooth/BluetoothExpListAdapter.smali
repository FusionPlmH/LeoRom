.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BluetoothExpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerHeight:I

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mGuideGroupMessage:Ljava/lang/String;

.field private mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field public mIsAppbarExpanded:Z

.field private mIsDisplayPiaredGroup:Z

.field public mIsOnProgressAddVI:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public mNeedUpdatePreference:Z

.field private mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsAppbarExpanded:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setGuidePreferenceGroup()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoItemPreferenceGroup()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private setNoItemPreferenceGroup()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0d020e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferenceGroup(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    nop

    :goto_0
    move v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return v2
.end method

.method public getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    if-nez v1, :cond_1

    const v2, 0x7f0d020f

    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v3, :cond_0

    const v2, 0x7f0d0210

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;)V

    const v4, 0x1020006

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x1020016

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v4, 0x1020010

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0a023a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    const v4, 0x7f0a0451

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0a026a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    :goto_0
    move-object v2, v3

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BluetoothExpListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getChildView :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "isBonded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f1300f2

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v6, v6, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f1300f3

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    iget-object v6, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f1300f4

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v6

    iget-object v7, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    xor-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v6, :cond_4

    iget-object v7, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v9, 0x5e

    invoke-virtual {v8, v9}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_4
    iget-object v7, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_2
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_6

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v10, v10, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-nez v10, :cond_7

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v10, v10, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v10, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v10, :cond_8

    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f120349

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v10, :cond_8

    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    :goto_4
    iget-object v10, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    if-eqz v10, :cond_a

    if-eqz p3, :cond_9

    iget-object v9, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v8, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    return-object v1
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 8

    long-to-int v0, p1

    long-to-int v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getChildId()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v5, p1

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, -0x1

    and-long/2addr v5, v1

    or-long/2addr v3, v5

    return-wide v3

    :cond_0
    const-string v1, "BluetoothExpListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCombinedChildId :: child preference is null, groupId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", childId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getCombinedGroupId(J)J
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object v4, v2

    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v6

    const-string v7, "BluetoothExpListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGroupView :: groupPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",  getPreferenceCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , isExpanded = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v7

    const v8, 0x1020016

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v7

    invoke-virtual {v5, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v5, v2}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x106000d

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v7, :cond_1

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1
    :goto_0
    invoke-virtual {v3, v11}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;

    invoke-direct {v7, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v7

    const/4 v12, 0x1

    const/16 v13, 0x8

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChildrenCount(I)I

    move-result v7

    if-nez v7, :cond_2

    iput-boolean v11, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayPiaredGroup:Z

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iput-boolean v12, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayPiaredGroup:Z

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    invoke-direct {v7, v10}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v10

    const v14, 0x7f0d020e

    if-ne v10, v14, :cond_8

    const v8, 0x7f0a0009

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f0a04a9

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v8, 0x7f0a06dc

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0700d0

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f0700d1

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v12, 0x7f0700ce

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget-object v14, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v14, v8, v10, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    iget-object v13, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v15, 0x7f1300f7

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    move v10, v8

    move v8, v11

    :goto_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v8, v12, :cond_5

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int v12, v10, v12

    iget v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    sub-int v10, v12, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v10}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getTetheredDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getTetheredDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f121399

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    goto/16 :goto_4

    :cond_8
    move v12, v13

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0700eb

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v10, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v10

    iget-object v13, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v13

    iget-object v14, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v14, v8, v10, v8, v13}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_9
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f1210d0

    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    :cond_c
    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v8, :cond_e

    const v8, 0x7f0a060c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->isVisibleDivider()Z

    move-result v10

    if-eqz v10, :cond_d

    move v12, v11

    nop

    :cond_d
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v8, :cond_f

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0601b1

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v8, v10}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_4

    :cond_f
    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v8, :cond_12

    iget-boolean v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayPiaredGroup:Z

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    if-ne v1, v8, :cond_10

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0601b1

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v8, v10}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_4

    :cond_10
    const/4 v8, 0x3

    iget-boolean v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayPiaredGroup:Z

    if-nez v10, :cond_11

    const/4 v10, 0x2

    if-ne v1, v10, :cond_11

    invoke-virtual {v3, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0601b1

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v8, v10}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_4

    :cond_11
    iget-boolean v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDisplayPiaredGroup:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x2

    if-ne v1, v8, :cond_12

    invoke-virtual {v3, v11}, Landroid/view/View;->semSetRoundedCorners(I)V

    :cond_12
    :goto_4
    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v8, :cond_13

    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;

    invoke-direct {v10, v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_13
    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_14

    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;

    invoke-direct {v10, v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_14
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    if-ne v1, v8, :cond_15

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0601b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v8, v10}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_5

    :cond_15
    const/4 v8, 0x2

    if-ne v1, v8, :cond_16

    iget-object v8, v7, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v10, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f121399

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v3, v11}, Landroid/view/View;->semSetRoundedCorners(I)V

    :cond_16
    :goto_5
    return-object v3
.end method

.method public getGuidePreferenceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method public getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method public getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v2

    return v2
.end method

.method public getTetheredDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1203cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1203d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public isTetheredDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f12044a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-void
.end method

.method public setGuideGroupMessage(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setGuidePreferenceGroup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0d0211

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v1, 0x7f0d0212

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    const-string v0, "BluetoothExpListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGuidePreferenceGroup() :: mGuideGroupMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mGuideGroupMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNoDeviceLayout(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNoItemPreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public sortPreferenceGroup()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized updateDeviceListGroup(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->sortPreferenceGroup()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
