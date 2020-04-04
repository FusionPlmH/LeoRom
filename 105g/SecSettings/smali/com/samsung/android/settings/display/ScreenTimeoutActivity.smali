.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenTimeoutActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;,
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

.field private mContext:Landroid/content/Context;

.field private mDexmode:Z

.field private mHasFooterView:Z

.field private mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

.field private mMaxTimeout:J

.field private mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

.field private mScreenTimeoutView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexmode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getTimeoutLoggingValue(I)I

    move-result v0

    return v0
.end method

.method private createScreenTimeoutView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    const v0, 0x7f0d025f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    const v2, 0x7f0a06bb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->setVisibleFooterViewDivider(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    return-object v1
.end method

.method private getTimeoutLoggingValue(I)I
    .locals 2

    const/16 v0, 0x3a98

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7530

    if-eq p1, v0, :cond_4

    const v0, 0xea60

    if-eq p1, v0, :cond_3

    const v0, 0x1d4c0

    if-eq p1, v0, :cond_2

    const v0, 0x493e0

    if-eq p1, v0, :cond_1

    const v0, 0x927c0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method private setScreenTimeoutAdapter(Ljava/lang/Long;)V
    .locals 10

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexmode:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v3, v1

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Z[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setSelected(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1074

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Screen_timeout_dex_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexmode:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->createScreenTimeoutView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 9

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexmode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "timeout_dex"

    const v2, 0x927c0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->finish()V

    :cond_1
    iput-wide v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method
