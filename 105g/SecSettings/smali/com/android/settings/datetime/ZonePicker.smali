.class public Lcom/android/settings/datetime/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/ZonePicker$MyComparator;,
        Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

.field private mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1

    const v0, 0x7f0d0067

    invoke-static {p0, p1, v0}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 11

    const-string v0, "display_label"

    const-string v1, "offset_label"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    if-eqz p1, :cond_0

    const-string v0, "display_label"

    goto :goto_0

    :cond_0
    const-string v0, "offset"

    :goto_0
    new-instance v1, Lcom/android/settings/datetime/ZonePicker$MyComparator;

    invoke-direct {v1, v0}, Lcom/android/settings/datetime/ZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZonesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ZonePicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sortedList["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Asia/Shanghai"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Europe/Amsterdam"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Europe/Zagreb"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZonePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change Timezone display name [olsonId] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v9, "display_label"

    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v9, Landroid/widget/SimpleAdapter;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v8

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v3, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;-><init>(Lcom/android/settings/datetime/ZonePicker$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    return-object v2

    nop

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method private getAutoState()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 6

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private setSorting(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-boolean p1, p0, Lcom/android/settings/datetime/ZonePicker;->mSortedByTimezone:Z

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ishomecity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    :cond_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setSelection(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x203

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datetime/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    invoke-direct {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setHasOptionsMenu(Z)V

    const v2, 0x7f120671

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    const/16 v0, 0x26

    const/16 v1, 0x1291

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEnteranceLogging(II)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1220e6

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108009c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x7f1220e7

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080133

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "direct_lockscren"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.stop.app-in-app"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ishomecity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x113a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1292

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ishomecity"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homecity_timezone"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homecity_from_user"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/datetime/ZonePicker;->getAutoState()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_3
    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ishomecity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x113b

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v1, :cond_0

    const-wide/16 v3, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    return v1

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/datetime/ZonePicker;->setSorting(Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/datetime/ZonePicker;->mSortedByTimezone:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker;->mVisibilityLoggerMixin:Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/datetime/ZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ishomecity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1139

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1291

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    :goto_0
    return-void
.end method
