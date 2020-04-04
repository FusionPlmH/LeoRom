.class public Lcom/samsung/android/settings/activekey/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;,
        Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;,
        Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    }
.end annotation


# instance fields
.field private AppWhiteListBCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludedActivityListBCM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    return-void
.end method

.method private makeAppWhiteListBCM()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.samsung.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "m.google.android.apps.plus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.twitter.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.instagram.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.kakao.talk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.amazon.kindle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.sec.android.app.popupcalculator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.sec.android.app.clockpackage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "jp.co.nttdocomo.carriermail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.store"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.mediaplayer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.dmenu2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string v1, "jp.co.nttdocomo.saigaiban"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private makeExcludedActivityListBCM()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/activekey/AppList;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v0, "pressed_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "long"

    iget-object v1, v6, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->makeAppWhiteListBCM()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->makeExcludedActivityListBCM()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v1, v6, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x220

    invoke-virtual {v1, v8, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    iget-object v1, v6, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v8, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v6, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v6, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v6, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v6, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v6, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v6, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/activekey/AppList$1;)V

    move-object v11, v0

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "xcover3ve"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v13, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    const v3, 0x7f0d01e1

    const/4 v4, 0x0

    move-object v0, v13

    move-object v1, v6

    move-object v2, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v13, v6, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    move-object/from16 v16, v7

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    new-instance v0, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    const-string v1, "noaction"

    const-string v2, "noaction"

    const v3, 0x7f121fd9

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08061e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object v14, v0

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    const-string/jumbo v1, "torch"

    const-string/jumbo v2, "torch"

    const v3, 0x7f121fdc

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08073f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object v15, v0

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    const v3, 0x7f0d01e1

    const/4 v4, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v6

    move-object/from16 v16, v7

    move-object v7, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v7, v6, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    nop

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " app selected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " app title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "selected_app"

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "selected_app_title"

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "noaction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :cond_0
    const-string/jumbo v2, "short"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "short_press_app"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v2, "long"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "short_press_app_battery_conserve"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_app"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v2, "double"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_press_app"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ActiveKeyAppList"

    const-string v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->finish()V

    const/4 v0, 0x1

    return v0
.end method
