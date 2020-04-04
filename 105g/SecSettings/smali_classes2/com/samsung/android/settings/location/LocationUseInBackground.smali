.class public Lcom/samsung/android/settings/location/LocationUseInBackground;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationUseInBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;,
        Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
    }
.end annotation


# instance fields
.field private final OPTION_MENU_NOTIFICATION:I

.field private TAG:Ljava/lang/String;

.field private mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

.field private mOFF:Landroid/view/View;

.field private mON:Landroid/view/View;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-class v0, Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->OPTION_MENU_NOTIFICATION:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/location/LocationUseInBackground;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getLocationPermissionPackage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/location/LocationUseInBackground;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setLocationListUp(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private getLocationPermissionPackage()Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "android.permission-group.LOCATION"

    iget-object v2, v1, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    iget-object v0, v1, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "location"

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/LocationManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Landroid/location/LocationManager;->getLocWhitelist()Ljava/util/HashMap;

    move-result-object v9

    const-string v0, ""

    const/16 v18, 0x1

    const/4 v10, 0x0

    const-string v11, ""

    const/16 v12, 0x1000

    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v15

    move-object v14, v0

    move v0, v8

    :goto_1
    move v12, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_16

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_2

    nop

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v30, v9

    move/from16 v19, v12

    move-object/from16 v21, v15

    goto/16 :goto_f

    :cond_2
    move v0, v8

    :goto_2
    move/from16 v19, v0

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0

    move/from16 v3, v19

    if-ge v3, v0, :cond_15

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    nop

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v30, v9

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto/16 :goto_e

    :cond_3
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v0, v3

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    :goto_3
    move/from16 v21, v16

    move-object/from16 v22, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v23, v7

    move/from16 v7, v21

    if-ge v7, v0, :cond_5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    const/4 v10, 0x1

    nop

    move v7, v10

    move-object v10, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, v22

    move-object/from16 v7, v23

    goto :goto_3

    :cond_5
    move v7, v10

    move-object/from16 v10, v22

    :goto_4
    if-nez v7, :cond_6

    nop

    move-object/from16 v24, v2

    :goto_5
    move-object/from16 v25, v6

    :goto_6
    move/from16 v28, v7

    move-object/from16 v30, v9

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto/16 :goto_c

    :cond_6
    const-string v0, "android.permission-group.LOCATION"

    move-object/from16 v24, v2

    iget-object v2, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v0, v2}, Lcom/samsung/android/settings/location/LocationUseInBackground;->shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v13}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystem(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    const-string v6, "[system package name ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    move-object/from16 v25, v6

    if-eqz v9, :cond_9

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    iget-object v0, v1, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[whitelist package name ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_9
    invoke-static {v13}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_6

    :cond_a
    :try_start_0
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v6, v2, :cond_14

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x4e1f

    if-le v2, v6, :cond_b

    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto/16 :goto_c

    :cond_b
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v26, v2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    move-object/from16 v27, v6

    const/16 v6, 0x16

    move/from16 v28, v7

    if-le v2, v6, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    :try_start_1
    iget-object v6, v13, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v6, v6, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    if-nez v2, :cond_13

    :try_start_2
    const-string v7, "android"
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v29, v8

    :try_start_3
    iget-object v8, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v7, :cond_e

    :try_start_4
    iget-object v7, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto/16 :goto_d

    :cond_e
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_f

    :try_start_5
    iget-object v8, v1, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v30, v9

    :try_start_6
    const-class v9, Landroid/app/AppOpsManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v31, v10

    :try_start_7
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v8
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    if-nez v8, :cond_10

    const/4 v8, 0x1

    goto :goto_a

    :catch_1
    move-exception v0

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v22, v31

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto/16 :goto_d

    :cond_f
    move-object/from16 v30, v9

    move-object/from16 v31, v10

    :cond_10
    const/4 v8, 0x0

    :goto_a
    if-eqz v6, :cond_12

    if-eqz v7, :cond_11

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    :cond_11
    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto/16 :goto_d

    :cond_13
    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move/from16 v8, v16

    move-object/from16 v7, v27

    :goto_b
    :try_start_8
    iget-object v9, v1, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[package name ="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [Granted = "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-object v9, v13

    move-object v13, v1

    :try_start_9
    new-instance v1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    const/4 v10, 0x1

    invoke-virtual {v0, v4, v10, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v11
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    const/16 v17, 0x0

    move-object/from16 v22, v31

    move-object v10, v1

    move/from16 v19, v12

    move-object v12, v9

    move-object/from16 v20, v14

    move/from16 v14, v18

    move-object/from16 v21, v15

    move v15, v6

    move/from16 v16, v2

    :try_start_a
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZLcom/samsung/android/settings/location/LocationUseInBackground$1;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_5

    nop

    move-object v14, v10

    move-object v11, v13

    move/from16 v10, v28

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v11, v13

    goto :goto_d

    :catch_6
    move-exception v0

    move/from16 v19, v12

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v22, v31

    move-object v11, v13

    goto :goto_d

    :catch_7
    move-exception v0

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v22, v31

    goto :goto_d

    :catch_8
    move-exception v0

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    goto :goto_d

    :cond_14
    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    :goto_c
    move/from16 v10, v28

    goto :goto_e

    :catch_9
    move-exception v0

    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v19, v12

    move-object v9, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    :goto_d
    move/from16 v10, v28

    :goto_e
    add-int/lit8 v0, v3, 0x1

    move-object v13, v9

    move/from16 v12, v19

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v7, v23

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v9, v30

    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_15
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v30, v9

    move/from16 v19, v12

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    :goto_f
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v15, v21

    move-object/from16 v7, v23

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    move-object/from16 v9, v30

    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_16
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v23, v7

    move-object/from16 v30, v9

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v5
.end method

.method private static isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.permission-group.LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isNetworkLocationProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNetworkLocationProvider(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/location/ILocationManager;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private static isSystem(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isSystemFixed(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private setLocationListUp(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLocBlacklist()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-static {v5}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->access$400(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-static {v6}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->access$400(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-static {v7}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->access$500(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Z

    move-result v7

    new-instance v8, Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;)V

    nop

    invoke-virtual {v8}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->clearItems()V

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItems([Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setGrantedState(Z)V

    if-eqz v1, :cond_5

    if-eqz v7, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v10, v12, :cond_0

    invoke-virtual {v8, v13, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v12, :cond_2

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v6, v10, :cond_2

    const/4 v9, 0x1

    invoke-virtual {v8, v13, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    if-nez v9, :cond_3

    invoke-virtual {v8, v3, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    :cond_3
    goto :goto_3

    :cond_4
    if-nez v7, :cond_6

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto :goto_3

    :cond_5
    invoke-virtual {v8, v3, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    :cond_6
    :goto_3
    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-static {v9}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->access$600(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPersistent(Z)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-static {v9}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->access$700(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIsRuntimePermission(Z)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-static {v9}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->access$400(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageInfo(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    invoke-static {v9}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->access$800(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/location/LocationUseInBackground;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    const v0, 0x7f1500d4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->addPreferencesFromResource(I)V

    const-string v0, "location_use_in_background_app_list_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setHasOptionsMenu(Z)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f130135

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f12020d

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01dd

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v3, 0x7f0a048b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v3, 0x7f0a048a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_location_noti_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$1;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$2;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f120211

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/samsung/android/settings/location/LocationUseInBackground$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$3;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;Lcom/samsung/android/settings/location/LocationUseInBackground$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mLoadAppListTask:Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.intent.action.NSFLP_CLEAR_NOTI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
