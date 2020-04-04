.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenTimeoutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;

.field private mContext:Landroid/content/Context;

.field private mDexmode:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxTimeout:J

.field private mScreenTimeoutView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createScreenTimeoutView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    const v0, 0x7f0d0254

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    const v1, 0x7f0a06b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070581

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07057a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move v7, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move v5, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    return-object v2
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

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    cmp-long v1, v4, v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0011

    invoke-static {v6, v7, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a004e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v3, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexmode:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v1, v6, v7, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    new-instance v6, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v1, v3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;->getPositionFromValue(J)I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;->getPositionFromValue(J)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25bc

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

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

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->createScreenTimeoutView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$RadioAdapter;->getValueFromPosition(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexmode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "timeout_dex"

    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v2, 0x1074

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getTimeoutLoggingValue(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ScreenTimeoutActivity"

    const-string v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->finish()V

    return-void
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
