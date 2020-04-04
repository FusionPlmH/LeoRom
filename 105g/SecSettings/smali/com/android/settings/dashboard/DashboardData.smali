.class public Lcom/android/settings/dashboard/DashboardData;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;,
        Lcom/android/settings/dashboard/DashboardData$Item;,
        Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;,
        Lcom/android/settings/dashboard/DashboardData$Builder;
    }
.end annotation


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field static final STABLE_ID_CONDITION_CONTAINER:I = 0x4

.field static final STABLE_ID_CONDITION_FOOTER:I = 0x3

.field static final STABLE_ID_CONDITION_HEADER:I = 0x2

.field static final STABLE_ID_SUGGESTION_CONTAINER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private final mConditionExpanded:Z

.field private final mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnableMPSM:Z

.field private mIsDesktopMode:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mKioskModeEnabled:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private mKnoxCustomProKioskSettingsItems:I

.field private mKnoxCustomSettingsState:I

.field private mModelSupport:Ljava/lang/String;

.field private final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dashboard/DashboardData;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/dashboard/DashboardData$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardData$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/DashboardData;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$000(Lcom/android/settings/dashboard/DashboardData$Builder;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$100(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$200(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$300(Lcom/android/settings/dashboard/DashboardData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$400(Lcom/android/settings/dashboard/DashboardData$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$500(Lcom/android/settings/dashboard/DashboardData$Builder;)Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardData;->buildItemsData()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;Lcom/android/settings/dashboard/DashboardData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardData;-><init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/dashboard/DashboardData;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/dashboard/DashboardData;)Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/util/List;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/DashboardData;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/dashboard/DashboardData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    return v0
.end method

.method private addToItemList(Ljava/lang/Object;IIZ)V
    .locals 2

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Item;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardData$Item;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private buildItemsData()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardData;->getConditionsToShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, v0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/settings/dashboard/DashboardData;->getSuggestionsToShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const v7, 0x7f0d0367

    invoke-direct {v0, v5, v7, v3, v6}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    const v7, 0x7f0d0090

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    const/4 v9, 0x0

    invoke-direct {v0, v9, v7, v4, v8}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    new-instance v7, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;

    invoke-direct {v7, v1}, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;-><init>(Ljava/util/List;)V

    const v8, 0x7f0d003d

    const/4 v10, 0x2

    if-eqz v2, :cond_3

    iget-boolean v11, v0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-nez v11, :cond_3

    move v11, v4

    goto :goto_3

    :cond_3
    move v11, v3

    :goto_3
    invoke-direct {v0, v7, v8, v10, v11}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    const v7, 0x7f0d003b

    const/4 v8, 0x4

    if-eqz v2, :cond_4

    iget-boolean v10, v0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-eqz v10, :cond_4

    move v10, v4

    goto :goto_4

    :cond_4
    move v10, v3

    :goto_4
    invoke-direct {v0, v1, v7, v8, v10}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    const v7, 0x7f0d003c

    if-eqz v2, :cond_5

    iget-boolean v8, v0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_5

    :cond_5
    move v8, v3

    :goto_5
    const/4 v10, 0x3

    invoke-direct {v0, v9, v7, v10, v8}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    iget-object v7, v0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    if-eqz v7, :cond_19

    iget-object v7, v0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v7}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v14

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v15

    if-eqz v14, :cond_6

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomIsProKioskMode:Z

    invoke-virtual {v14}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v9

    iput v9, v0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomProKioskSettingsItems:I

    invoke-virtual {v15}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v9

    iput v9, v0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomSettingsState:I

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/dashboard/DashboardData;->mModelSupport:Ljava/lang/String;

    const-string v9, "VZW"

    iget-object v10, v0, Lcom/android/settings/dashboard/DashboardData;->mModelSupport:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "BETA"

    iput-object v9, v0, Lcom/android/settings/dashboard/DashboardData;->mModelSupport:Ljava/lang/String;

    :cond_7
    iget-object v9, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/settings/dashboard/DashboardData;->mIsDesktopMode:Z

    iget-object v9, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v10, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    iput-boolean v4, v0, Lcom/android/settings/dashboard/DashboardData;->mEnableMPSM:Z

    :cond_8
    iget-object v10, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    iput-boolean v4, v0, Lcom/android/settings/dashboard/DashboardData;->mKioskModeEnabled:Z

    :cond_9
    sget-object v10, Lcom/android/settings/dashboard/DashboardData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nTile : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nSuggestion : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/Tile;

    move-object/from16 v17, v1

    iget-object v1, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_b

    iget-object v1, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    move/from16 v18, v2

    const-string v2, "com.samsung.android.settings.menu.use_appinfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.settings.menu.use_appinfo"

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/settings/dashboard/DashboardData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "use app info : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_7
    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v4, v19

    goto :goto_6

    :cond_a
    move-object/from16 v19, v4

    goto :goto_8

    :cond_b
    move/from16 v18, v2

    move-object/from16 v19, v4

    :cond_c
    :goto_8
    iget-object v1, v10, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/android/settings/dashboard/DashboardData;->mEnableMPSM:Z

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->getMenuOrderInfo(Ljava/lang/String;Z)Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    iget v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput v2, v10, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget-object v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/settingslib/drawer/Tile;->groupName:Ljava/lang/String;

    goto :goto_9

    :cond_d
    sget-object v2, Lcom/android/settings/dashboard/DashboardData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    const-string/jumbo v1, "tile info : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    goto :goto_7

    :cond_e
    move-object/from16 v17, v1

    move/from16 v18, v2

    sget-object v1, Lcom/android/settings/dashboard/DashboardData;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v8, :cond_15

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/dashboard/DashboardData;->updateTile(Lcom/android/settingslib/drawer/Tile;Ljava/util/List;)V

    iget-boolean v4, v2, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    if-eqz v4, :cond_14

    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->groupName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-boolean v4, v0, Lcom/android/settings/dashboard/DashboardData;->mEnableMPSM:Z

    if-eqz v4, :cond_f

    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v10, "com.samsung.android.settings.menu.group.mpsm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_f
    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v10, "com.samsung.android.settings.menu.group"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_10
    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->groupName:Ljava/lang/String;

    :goto_b
    const/4 v10, 0x0

    iput v10, v2, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    iput-boolean v10, v2, Lcom/android/settingslib/drawer/Tile;->isLast:Z

    if-nez v11, :cond_12

    iget v10, v2, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    const/4 v13, 0x3

    or-int/2addr v10, v13

    iput v10, v2, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    :cond_11
    const/16 v16, 0x3

    goto :goto_c

    :cond_12
    if-eqz v4, :cond_13

    if-eqz v12, :cond_13

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    :cond_13
    iget v10, v2, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    const/16 v16, 0x3

    or-int/lit8 v10, v10, 0x3

    iput v10, v2, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    iget v10, v11, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    or-int/lit8 v10, v10, 0xc

    iput v10, v11, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    :goto_c
    move-object v10, v2

    move-object v2, v4

    move-object v12, v2

    move-object v13, v4

    move-object v11, v10

    goto :goto_d

    :cond_14
    const/16 v16, 0x3

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    if-eqz v11, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/settingslib/drawer/Tile;->isLast:Z

    iget v1, v11, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    or-int/lit8 v1, v1, 0xc

    iput v1, v11, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    :cond_16
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v8, :cond_1a

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    iget-boolean v4, v2, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    if-eqz v4, :cond_18

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v10, v2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    aput-object v10, v4, v16

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    iget-boolean v10, v2, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    move-object/from16 v21, v3

    const v3, 0x7f0d005c

    invoke-direct {v0, v2, v3, v4, v10}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    iget-boolean v3, v2, Lcom/android/settingslib/drawer/Tile;->isLast:Z

    if-nez v3, :cond_17

    iget v3, v2, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_17

    const v3, 0x7f0d0160

    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v2, v3, v10, v4}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    goto :goto_f

    :cond_17
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto :goto_f

    :cond_18
    move-object/from16 v21, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    :goto_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v21

    goto :goto_e

    :cond_19
    move-object/from16 v17, v1

    move/from16 v18, v2

    :cond_1a
    return-void
.end method

.method private getConditionsToShow(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    nop

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private getSuggestionsToShow(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/settings/suggestions/Suggestion;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$updateSummaryByProvider$0(Lcom/android/settings/dashboard/DashboardData;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSummaryConsumer:Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;->notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateSummaryByProvider$1(Lcom/android/settings/dashboard/DashboardData;Lcom/android/settingslib/drawer/Tile;Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.summary_provider_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.settings.summary_provider_extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.summary_provider_extra"

    invoke-static {p2, v1, v0, v2}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;-><init>(Lcom/android/settings/dashboard/DashboardData;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setRoamingTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticOPENModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v1, 0x7f121a89

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v1, 0x7f120cf1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :goto_1
    return-object p1
.end method

.method private static sizeOf(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method private updateSummaryByProvider(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_provider_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$FoFLBc8y-_KvgrizEVeJzLNHONU;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$FoFLBc8y-_KvgrizEVeJzLNHONU;-><init>(Lcom/android/settings/dashboard/DashboardData;Lcom/android/settingslib/drawer/Tile;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    return-object v0
.end method

.method public getItemEntityByPosition(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemIdByPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemTypeByPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    return v0
.end method

.method public getPositionByTile(Lcom/android/settingslib/drawer/Tile;)I
    .locals 5

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, v2, Lcom/android/settingslib/drawer/Tile;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object v4, v2

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public hasSuggestion()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConditionExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    return v0
.end method

.method public setVisiblityTile(Lcom/android/settingslib/drawer/Tile;)V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomIsProKioskMode:Z

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v1, "KNOXCUSTOM_KIOSK_CONNECTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomSettingsState:I

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomProKioskSettingsItems:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomSettingsState:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    :cond_1
    iput-boolean v2, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    goto/16 :goto_3

    :cond_2
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v1, "KNOXCUSTOM_KIOSK_BIOMETRICS_AND_SECURITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomSettingsState:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/settings/dashboard/DashboardData;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    iput-boolean v2, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    goto/16 :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardData;->mEnableMPSM:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v3, "UPSM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    goto/16 :goto_3

    :cond_4
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v3, "GLOBAL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v3, "Common"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData;->mModelSupport:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_5
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v3, "SamsungDeX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardData;->mIsDesktopMode:Z

    if-nez v1, :cond_6

    iput-boolean v0, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v1, "workspace_settings"

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/android/settings/dashboard/DashboardData;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "knoxIds userId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    goto :goto_0

    :cond_8
    :goto_1
    if-eqz v4, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-nez v5, :cond_9

    iput-boolean v2, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    goto :goto_2

    :cond_9
    iput-boolean v0, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    :goto_2
    goto :goto_3

    :cond_a
    const-string v1, "accessibility_settings2"

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "workspace_settings"

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string v3, "KIOSKCONTAINER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardData;->mKioskModeEnabled:Z

    if-eqz v1, :cond_b

    iput-boolean v0, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    goto :goto_3

    :cond_b
    iput-boolean v2, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    goto :goto_3

    :cond_c
    const-string v0, "docomoservice_settings"

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "DCM"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mModelSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v2, p1, Lcom/android/settingslib/drawer/Tile;->isVisible:Z

    :cond_d
    :goto_3
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateTile(Lcom/android/settingslib/drawer/Tile;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardData;->setVisiblityTile(Lcom/android/settingslib/drawer/Tile;)V

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->tileId:Ljava/lang/String;

    const-string/jumbo v1, "system_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsingSystemUpdateTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f1216b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :cond_1
    if-eqz p2, :cond_23

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SoftwareUpdateUtils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v1

    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/settings/suggestions/Suggestion;

    const-string v4, "badge_for_fota"

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getBadgeID()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->badgeDescription:Ljava/lang/String;

    :cond_4
    goto/16 :goto_7

    :cond_5
    const-string v1, "online_help"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->summaryRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v3, 0x7f121bd7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->role:Ljava/lang/String;

    :cond_6
    goto/16 :goto_7

    :cond_7
    const-string v1, "display_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardData;->mEnableMPSM:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f12044b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_8
    const-string v1, "mobile_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    iput-boolean v3, p1, Lcom/android/settingslib/drawer/Tile;->isEnable:Z

    goto/16 :goto_7

    :cond_9
    iput-boolean v2, p1, Lcom/android/settingslib/drawer/Tile;->isEnable:Z

    goto/16 :goto_7

    :cond_a
    const-string/jumbo v1, "t_roaming_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f080418

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardData;->setRoamingTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;

    goto/16 :goto_7

    :cond_b
    const-string v1, "google_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f120b16

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f080409

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v1, "workspace_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/android/settings/dashboard/DashboardData;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "knoxIds userId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v4, 0x1

    move v6, v8

    :cond_d
    add-int/lit8 v5, v5, 0x1

    :cond_e
    goto :goto_2

    :cond_f
    if-ne v5, v2, :cond_11

    if-eqz v4, :cond_10

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v7, 0x7f1215d4

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v7, 0x7f080595

    invoke-static {v2, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_3

    :cond_10
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v7, 0x7f1216f0

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v7, 0x7f1215d3

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v7, 0x7f080594

    invoke-static {v2, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    :cond_11
    :goto_3
    goto/16 :goto_7

    :cond_12
    const-string v1, "docomoservice_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "au_settings_menu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_6

    :cond_13
    const-string v1, "maintenance_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz p2, :cond_23

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "badge_for_dm_battery"

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    iget v1, p1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "badge_for_dm_security"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    iget v1, p1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "badge_for_dm_scoreboard"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/settings/suggestions/Suggestion;

    const-string v4, "badge_for_dm_battery"

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getBadgeID()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_14
    const-string v4, "badge_for_dm_security"

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getBadgeID()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_15
    const-string v4, "badge_for_dm_scoreboard"

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getBadgeID()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_16
    goto :goto_4

    :cond_17
    :goto_5
    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->badgeDescription:Ljava/lang/String;

    :cond_18
    goto/16 :goto_7

    :cond_19
    const-string v1, "notification_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundUtils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardData;->mEnableMPSM:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f121901

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_1b
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f12169e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_7

    :cond_1c
    const-string v1, "lockscreen_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    iput-boolean v3, p1, Lcom/android/settingslib/drawer/Tile;->isEnable:Z

    goto :goto_7

    :cond_1d
    const-string v1, "biometrics_and_security_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportBiometricsFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f121755

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_1e
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f1202ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_1f
    const-string v1, "general_device_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_7

    :cond_20
    const-string/jumbo v1, "wallpapers_themes_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f08041c

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_7

    :cond_21
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f080419

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_7

    :cond_22
    :goto_6
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v2, 0x7f080406

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    :cond_23
    :goto_7
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/settings/dashboard/DashboardData;->updateSummaryByProvider(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method
