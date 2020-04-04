.class public Lcom/samsung/android/settings/location/LocationDropDownPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "LocationDropDownPreference.java"


# instance fields
.field private ShiftSpinnerFromLeft:I

.field private ShiftSpinnerFromup:F

.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mGranted:Z

.field private mIsRuntimePermission:Z

.field private mOnBlackList:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field private mPreferenceClicked:Z

.field private mSelectedPosition:I

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSelectedPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    const/4 v1, -0x5

    iput v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->ShiftSpinnerFromLeft:I

    const/high16 v1, -0x3ec00000    # -12.0f

    iput v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->ShiftSpinnerFromup:F

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01d2

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;-><init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPersistent(Z)V

    new-instance v1, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;-><init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    sget-object v1, Lcom/android/settings/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    nop

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-object v5, v2, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/location/LocationDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/location/LocationDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    return p1
.end method

.method private addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static dpToPixel(Landroid/content/Context;F)I
    .locals 2

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
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

.method private getLocationPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "android.permission-group.LOCATION"

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateLocationPermissionState(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-nez v3, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updatePermissionState(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    :cond_5
    :goto_0
    if-eq p1, v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enable"

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mOnBlackList:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    const-string v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->notifyNSFLP(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method private updatePermissionState(Z)V
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    iget-object v0, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v10, v0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v12, v11

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    if-ge v13, v12, :cond_7

    aget-object v2, v11, v13

    move-object v14, v2

    invoke-direct {v1, v14}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->getLocationPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    if-eqz v7, :cond_5

    iget-boolean v2, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mIsRuntimePermission:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v2, v14, v9}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v4, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, v14

    move-object/from16 v20, v0

    move-object v0, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto/16 :goto_3

    :cond_0
    move-object/from16 v20, v0

    move-object v0, v7

    iget-object v2, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v2, v14, v9}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v4, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    const/16 v5, 0x8

    const/16 v6, 0x8

    move-object v2, v8

    move-object v3, v14

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_3

    :cond_1
    move-object/from16 v20, v0

    move-object v0, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    const-string v6, "android"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v14}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v6, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x8

    :cond_4
    :goto_2
    invoke-virtual {v5, v6, v10, v4}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    or-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    iget-object v7, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v21, v14

    move-object v14, v7

    iget-object v7, v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v15, v21

    move-object/from16 v16, v7

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v14 .. v19}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    move-object/from16 v20, v0

    :cond_6
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v20

    goto/16 :goto_0

    :cond_7
    goto :goto_4

    :catch_0
    move-exception v0

    :goto_4
    return-void
.end method


# virtual methods
.method public addItems([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->ShiftSpinnerFromLeft:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->ShiftSpinnerFromup:F

    invoke-static {v3, v4}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->dpToPixel(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public setGrantedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mGranted:Z

    return-void
.end method

.method public setIsRuntimePermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mIsRuntimePermission:Z

    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->updateLocationPermissionState(I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference;->mPreferenceClicked:Z

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->notifyDependencyChange(Z)V

    return-void
.end method
