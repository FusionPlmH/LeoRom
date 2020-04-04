.class public Lcom/samsung/android/settings/wifi/ListAnimationController;
.super Ljava/lang/Object;
.source "ListAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    }
.end annotation


# instance fields
.field private mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private final mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mAddOtherNetworkItem:Landroid/view/View;

.field private mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

.field private final mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

.field private final mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHeadersCount:I

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mInSetupWizardActivity:Z

.field private mInsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDeletePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInsertPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mNoItemView:Landroid/widget/TextView;

.field private mOffloadDialog:Z

.field private mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mSemExpListView:Landroid/widget/SemExpandableListView;

.field private mUiRestrictionLayout:Landroid/widget/LinearLayout;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mOffloadDialog:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInSetupWizardActivity:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$4;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$5;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settingslib/wifi/WifiTracker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/ListAnimationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/animation/SemAddDeleteListAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->deleteFromAdapter(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->addToAdapter(Z)V

    return-void
.end method

.method private addToAdapter(Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private deleteFromAdapter(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->remove(Ljava/util/ArrayList;Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isChanged()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8, v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    iget v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    const/4 v8, 0x0

    iget v9, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v16, v1

    goto/16 :goto_7

    :cond_1
    move v11, v9

    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_b

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    add-int/lit8 v11, v11, 0x1

    nop

    move-object/from16 v16, v1

    goto/16 :goto_6

    :cond_2
    iget-object v12, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v12}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v10, v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v10, v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result v13

    if-nez v13, :cond_3

    const/4 v8, 0x1

    nop

    move-object/from16 v16, v1

    goto/16 :goto_8

    :cond_3
    move-object/from16 v16, v1

    goto :goto_5

    :cond_4
    invoke-virtual {v10, v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result v13

    if-gez v13, :cond_9

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v11, -0x3e7

    :cond_5
    const/4 v13, 0x0

    :goto_2
    iget-object v14, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_8

    iget v14, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    add-int/2addr v14, v13

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    nop

    move-object/from16 v16, v1

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v10, v7}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v16, v1

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto :goto_2

    :cond_8
    move-object/from16 v16, v1

    :goto_4
    goto :goto_8

    :cond_9
    move-object/from16 v16, v1

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    move-object/from16 v16, v1

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_1

    :cond_b
    move-object/from16 v16, v1

    goto :goto_8

    :cond_c
    move-object/from16 v16, v1

    :goto_7
    const/4 v8, 0x1

    move v11, v9

    :goto_8
    if-nez v8, :cond_e

    if-gez v11, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    nop

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_f
    move-object/from16 v16, v1

    const/4 v1, 0x0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v5, 0x0

    move v6, v5

    move v5, v1

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_15

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    move v8, v1

    :goto_b
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_10

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v7, v10, :cond_10

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_10
    add-int v8, v7, v5

    sub-int/2addr v8, v9

    sub-int/2addr v8, v6

    if-gez v8, :cond_11

    iget v8, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    :cond_11
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget v11, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    sub-int v11, v8, v11

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v12}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v10}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v13

    if-eqz v12, :cond_14

    if-eqz v13, :cond_14

    invoke-virtual {v13, v12}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z

    move-result v14

    if-eqz v14, :cond_14

    move v14, v1

    :goto_c
    iget-object v15, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_13

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v8, :cond_12

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_12
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    goto :goto_c

    :cond_13
    :goto_d
    goto :goto_e

    :cond_14
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_15
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v4
.end method

.method private getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private setEnableRefreshLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string v0, "WifiSettings.VI"

    const-string v1, "setEnableRefreshLayout - refresh layout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;
    .locals 6

    const v0, 0x7f0d0226

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a089f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const v1, 0x7f0a0828

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInSetupWizardActivity:Z

    const v2, 0x7f0601b2

    const/16 v3, 0xf

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->semSetRoundedCornerColor(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060326

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInSetupWizardActivity:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v3}, Landroid/widget/SemExpandableListView;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/SemExpandableListView;->semSetRoundedCornerColor(II)V

    :cond_1
    const v1, 0x7f0a056c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mNoItemView:Landroid/widget/TextView;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mUiRestrictionLayout:Landroid/widget/LinearLayout;

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setEmptyView(Landroid/view/View;)V

    return-object v0
.end method

.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZZ)Landroid/view/View;
    .locals 1

    iput-boolean p6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mOffloadDialog:Z

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public destroyView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method public getAvailableAPCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedAPCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/SemExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    return-object v0
.end method

.method public getNoItemView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mNoItemView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initController()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    new-instance v3, Lcom/samsung/android/settings/wifi/ListAnimationController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$1;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v0, v3}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemExpandableListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SemExpandableListView;->semSetBottomColor(I)V

    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v3, 0x258

    invoke-virtual {v0, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v0, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mOffloadDialog:Z

    if-eqz v3, :cond_2

    :cond_1
    const v3, 0x7f0d029c

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    const-string v3, "WifiSettings.VI"

    const-string v4, "set footer divider true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v3, v2}, Landroid/widget/SemExpandableListView;->setFooterDividersEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/wifi/ListAnimationController$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$2;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/widget/SemExpandableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->setWifiPickerMode()V

    :cond_3
    goto :goto_0

    :cond_4
    const-string v0, "WifiSettings.VI"

    const-string v3, "TouchWiz SemExpandableListView is null, can\'t set adapter"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v3, v2, [I

    const v4, 0x7f060098

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v1, 0x7f0601c0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshOnce(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/samsung/android/settings/wifi/ListAnimationController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$3;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    return-void
.end method

.method public setSetupWizardMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->setSetupWizardMode()V

    :cond_0
    return-void
.end method

.method public setSetupWizardStatus()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInSetupWizardActivity:Z

    return-void
.end method

.method public setWifiTracker(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method public updateEmptyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    return-void
.end method

.method public updateEmptyView(Z)V
    .locals 3

    const-string v0, "WifiSettings.VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmptyView - list item AvailableAPCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ConnectedAPCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", restriction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mNoItemView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mNoItemView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mNoItemView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateWithAnimation(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->stopToUpdateAccessPoint()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_1
    const-string v0, "WifiSettings.VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWithAnimation size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updatedScanResult :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "WifiSettings.VI"

    const-string v1, "updateWithAnimation getAvailableAccesspointGroup is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v0

    if-eqz v0, :cond_8

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->getAccessPointList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "WifiSettings.VI"

    const-string v1, "animation is not start,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_7
    return-void

    :cond_8
    :goto_0
    const-string v0, "WifiSettings.VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccessPointList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreferenceGroup;->setAccessPointList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_9
    return-void
.end method
