.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;,
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsAppUsage:Z

.field private mIsSettedDate:Z

.field private mIsSupportSetCycle:Z

.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSettedEndTime:J

.field private mSettedStartTime:J

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 3

    if-eqz p4, :cond_0

    const v0, 0x7f0d007c

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0060

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    iput-wide v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSupportSetCycle:Z

    const v0, 0x7f0d036b

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-boolean p5, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    return-void
.end method


# virtual methods
.method public addCycleSetItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSupportSetCycle:Z

    return-void
.end method

.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    return-void
.end method

.method public setIsSettedDate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    return-void
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v2}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v6, -0x8000000000000000L

    if-eqz v1, :cond_0

    iget-object v8, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    iget-object v8, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    move-wide v4, v11

    :cond_1
    move-wide v13, v4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v6, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v6, v11, v4

    :cond_2
    move-wide v15, v6

    const/4 v4, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    if-eqz p1, :cond_7

    nop

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v5

    move/from16 v20, v4

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/util/Pair;

    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v27

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v29

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v21, v4

    move-wide/from16 v22, v27

    move-wide/from16 v24, v29

    move-object/from16 v26, v3

    invoke-virtual/range {v21 .. v26}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v31, v10

    iget-wide v9, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v9

    cmp-long v4, v4, v17

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move/from16 v4, v19

    :goto_1
    move v9, v4

    move-object v10, v3

    goto :goto_2

    :cond_4
    move-object/from16 v31, v10

    move-object v10, v3

    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_5

    new-instance v5, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v5

    move-object/from16 v4, v31

    move/from16 v32, v9

    move-object v9, v5

    move-wide/from16 v5, v27

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v7, v29

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v9}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    const/16 v20, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v21, v7

    :goto_3
    move-object v3, v10

    move-object/from16 v5, v21

    move-object/from16 v10, v31

    goto :goto_0

    :cond_6
    move-object/from16 v31, v10

    goto :goto_4

    :cond_7
    move-object/from16 v31, v10

    move/from16 v20, v4

    :goto_4
    if-nez v20, :cond_b

    move-object/from16 v21, v3

    move-wide v3, v15

    :goto_5
    move-wide/from16 v22, v3

    cmp-long v3, v22, v13

    if-lez v3, :cond_c

    const-wide v3, 0x90321000L

    sub-long v24, v22, v3

    if-eqz v1, :cond_9

    iget-object v5, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-wide/from16 v6, v24

    move-wide/from16 v8, v22

    move-object/from16 v10, v21

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v17

    if-lez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    move/from16 v4, v19

    :goto_6
    move v9, v4

    move-object/from16 v21, v3

    goto :goto_7

    :cond_9
    const/4 v9, 0x1

    :goto_7
    if-eqz v9, :cond_a

    new-instance v10, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v10

    move-object/from16 v4, v31

    move-wide/from16 v5, v24

    move-wide/from16 v7, v22

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v10}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    :cond_a
    move-wide/from16 v3, v24

    goto :goto_5

    :cond_b
    move-object/from16 v21, v3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    if-eqz v3, :cond_e

    new-instance v3, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object/from16 v10, v31

    invoke-direct {v3, v10}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    iget-boolean v3, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    if-eqz v3, :cond_d

    new-instance v9, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-wide v5, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    iget-wide v7, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    const/16 v17, 0x1

    move-object v3, v9

    move-object v4, v10

    move-object v1, v9

    move-wide/from16 v33, v11

    const/4 v11, 0x1

    move/from16 v9, v17

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJZ)V

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    move-wide/from16 v33, v11

    const/4 v11, 0x1

    goto :goto_8

    :cond_e
    move-wide/from16 v33, v11

    move-object/from16 v10, v31

    const/4 v11, 0x1

    :goto_8
    iget-boolean v1, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsSupportSetCycle:Z

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-direct {v1, v10, v11}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v1

    iget-object v3, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v3, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-static {v9, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move v6, v1

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v19

    :cond_10
    move-wide/from16 v33, v11

    move-object/from16 v10, v31

    const/4 v11, 0x1

    :cond_11
    return v11
.end method
