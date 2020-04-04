.class public Lcom/samsung/android/settings/HomeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;,
        Lcom/samsung/android/settings/HomeSettings$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mHomeChangeToast:Landroid/widget/Toast;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field private mHomeComponentSet:[Landroid/content/ComponentName;

.field private final mHomeFilter:Landroid/content/IntentFilter;

.field private mHomePackageReceiver:Lcom/samsung/android/settings/HomeSettings$HomePackageReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    new-instance v1, Lcom/samsung/android/settings/HomeSettings$HomePackageReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/HomeSettings$HomePackageReceiver;-><init>(Lcom/samsung/android/settings/HomeSettings;Lcom/samsung/android/settings/HomeSettings$1;)V

    iput-object v1, p0, Lcom/samsung/android/settings/HomeSettings;->mHomePackageReceiver:Lcom/samsung/android/settings/HomeSettings$HomePackageReceiver;

    new-instance v0, Lcom/samsung/android/settings/HomeSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/HomeSettings$1;-><init>(Lcom/samsung/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/HomeSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/HomeSettings$2;-><init>(Lcom/samsung/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/HomeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/HomeSettings;->buildHomeActivitiesList()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/HomeSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/HomeSettings;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeChangeToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/HomeSettings;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeChangeToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/HomeSettings;)Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private buildHomeActivitiesList()V
    .locals 27

    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/HomeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    iget-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/HomeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    const/4 v0, 0x0

    iput-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    iget-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ComponentName;

    iput-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    const/4 v0, 0x0

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "support_managed_profiles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/HomeSettings;->hasManagedProfile()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v20, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move/from16 v21, v1

    move/from16 v22, v0

    :goto_2
    move v11, v3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v9, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    iget-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v8, v0, v11

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    nop

    move/from16 v26, v11

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_5

    :cond_2
    :try_start_0
    iget-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, v15, Lcom/samsung/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v21, :cond_3

    :try_start_1
    invoke-direct {v15, v10}, Lcom/samsung/android/settings/HomeSettings;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/HomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b47

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object v4, v8

    move/from16 v5, v22

    move-object/from16 v23, v8

    move-object v8, v15

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v10, v16

    move/from16 v26, v11

    move-object/from16 v11, v17

    :try_start_2
    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;-><init>(Lcom/samsung/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/samsung/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v23

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v5, v8

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_4

    :cond_3
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    :try_start_3
    new-instance v0, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v8, v0

    move-object v9, v15

    move-object/from16 v10, v19

    move-object/from16 v11, v23

    move-object v1, v12

    move/from16 v12, v22

    move-object v2, v13

    move-object v13, v6

    move-object v3, v14

    move-object v14, v7

    move-object v4, v15

    move-object/from16 v16, v24

    :try_start_4
    invoke-direct/range {v8 .. v18}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;-><init>(Lcom/samsung/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/samsung/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V

    :goto_3
    iget-object v5, v4, Lcom/samsung/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/samsung/android/settings/HomeSettings;->mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v5, v23

    :try_start_5
    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iput-object v0, v4, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v5, v23

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v23

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v5, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    :goto_4
    const-string v6, "HomeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem dealing with activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    add-int/lit8 v0, v26, 0x1

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move v3, v0

    goto/16 :goto_2

    :cond_5
    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    iget-object v0, v4, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setResult(I)V

    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/android/settings/HomeSettings$3;

    invoke-direct {v5, v4}, Lcom/samsung/android/settings/HomeSettings$3;-><init>(Lcom/samsung/android/settings/HomeSettings;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private hasManagedProfile()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/HomeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/HomeSettings;->versionNumberAtLeastL(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    return v0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method makeCurrentHome(Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/HomeSettings;->mCurrentHome:Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x100000

    iget-object v3, p0, Lcom/samsung/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/HomeSettings;->buildHomeActivitiesList()V

    iget-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string v0, "HomeSettings"

    const-string v1, "Launcher is less than two."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500c9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/HomeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/HomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/HomeSettings;->mPrefGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/HomeSettings;->mHomePackageReceiver:Lcom/samsung/android/settings/HomeSettings$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/HomeSettings;->mHomePackageReceiver:Lcom/samsung/android/settings/HomeSettings$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/HomeSettings;->buildHomeActivitiesList()V

    return-void
.end method

.method uninstallApp(Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v2, p1, Lcom/samsung/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    const/16 v3, 0xa

    add-int/2addr v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/HomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
