.class public Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "LockAfterTimeoutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private disableUnusableTimeouts(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_1

    aget-object v2, p4, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    aget-object v4, p3, v1

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v4, p4, v1

    invoke-virtual {p6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "LockAfterTimeoutActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revisedValues.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p1, v3

    const-string v1, "LockAfterTimeoutActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last_timeout : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    array-length v1, p4

    sub-int/2addr v1, v2

    aget-object v1, p4, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, p1, v5

    if-gez v1, :cond_2

    const v1, 0x7f120d3f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 12

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    const-string v2, ""

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f100023

    long-to-int v11, v4

    invoke-virtual {v3, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v10, v9, [Ljava/lang/Object;

    long-to-int v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100024

    long-to-int v10, v0

    invoke-virtual {v6, v7, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    long-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "LockAfterTimeoutActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private setScreenTimeoutAdapter(Ljava/lang/Long;)V
    .locals 28

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v0, 0x0

    if-eqz v8, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    move-wide v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v11, v2

    sub-long v2, v9, v11

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v2, 0x7f070581

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07057a

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v22, v2, v3

    iget-object v2, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move/from16 v20, v22

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v3, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v22

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v3, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v2, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v2, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    cmp-long v0, v9, v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    move-object v0, v7

    move-wide v1, v13

    move-object/from16 v23, v3

    move-object v3, v6

    move-object/from16 v24, v4

    move-object v4, v5

    move-object/from16 v25, v8

    move-object v8, v5

    move-object/from16 v5, v24

    move-wide/from16 v26, v9

    move-object v9, v6

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->disableUnusableTimeouts(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    move-object/from16 v2, v23

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    iget-object v5, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7, v5, v1, v3}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v4, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    goto :goto_2

    :cond_2
    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    move-object v8, v5

    move-object v9, v6

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v1, v9, v8}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    :goto_2
    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->getPositionFromValue(J)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->getPositionFromValue(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1150

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d01d4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->setContentView(I)V

    const v1, 0x7f0a0489

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->getValueFromPosition(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->isInDefaultTimeoutList(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_after_timeout_rollback"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const v0, 0x1b7741

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    return-void
.end method
