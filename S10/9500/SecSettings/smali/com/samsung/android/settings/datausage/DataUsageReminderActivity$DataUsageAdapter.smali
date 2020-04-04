.class public Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final UID_SAMSUNG_CLOUD:I

.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mUm:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;Landroid/os/UserManager;Lcom/android/settingslib/net/UidDetailProvider;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x1391

    iput v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->UID_SAMSUNG_CLOUD:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iput p4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method private accumulate(ILandroid/util/SparseArray;IJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
            ">;IJJ)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    if-nez v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->addUid(I)V

    iget-wide v1, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    add-long/2addr v1, p4

    iput-wide v1, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    iget-wide v1, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    add-long/2addr v1, p6

    iput-wide v1, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bindStats()V
    .locals 20

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "DataUsageReminderActivity"

    const-string v1, "bindStats."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->access$000(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v14

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    move v15, v0

    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->access$100(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_6

    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->access$100(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->access$200(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->access$300(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "DataUsageReminderActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " wlan = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mobile = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq v10, v13, :cond_0

    invoke-static {v10}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v8

    move-object v0, v11

    move v1, v8

    move v3, v9

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;IJJ)V

    goto :goto_1

    :cond_0
    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    :goto_1
    move v0, v9

    goto :goto_4

    :cond_1
    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-virtual {v12, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, -0x4

    goto :goto_2

    :cond_2
    invoke-static {v10}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v1

    :goto_2
    move v0, v1

    goto :goto_4

    :cond_3
    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    const/16 v0, 0x1391

    if-eq v9, v0, :cond_5

    const/4 v0, -0x4

    if-eq v9, v0, :cond_5

    const/4 v0, -0x5

    if-eq v9, v0, :cond_5

    const/16 v0, -0x64

    if-ne v9, v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v0, 0x3e8

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v9

    :goto_4
    move v4, v0

    move-object v3, v11

    move-object v5, v2

    move v6, v9

    move-wide/from16 v7, v16

    move v0, v9

    move v1, v10

    move-wide/from16 v9, v18

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;IJJ)V

    add-int/lit8 v0, v15, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, v11, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    iget v0, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0163

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    iget v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0212

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-static {v3, v0, p2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V

    const-string v3, ""

    iget-wide v4, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->access$000(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f120a33

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    invoke-static {v1, v8, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-wide v4, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->access$000(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120a34

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    invoke-static {v1, v5, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
